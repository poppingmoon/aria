use std::{collections::HashMap, sync::Arc};

use aiscript::{v0, v1};
use flutter_rust_bridge::{DartFnFuture, frb};
use futures::FutureExt;

use crate::util::compare_versions::Version;

pub mod api;
pub mod play;
pub mod ui;

pub struct AiScript {
    parser: Parser,
    interpreter: Interpreter,
}

#[frb(opaque)]
struct Parser {
    v0: v0::Parser,
    v1: v1::Parser,
}

#[frb(opaque)]
struct Interpreter {
    v0: v0::Interpreter,
    v1: v1::Interpreter,
}

impl AiScript {
    pub async fn new(
        read: impl Fn(String) -> DartFnFuture<String> + Sync + Send + 'static,
        write: impl Fn(String) -> DartFnFuture<()> + Sync + Send + 'static,
        api: Option<api::AsApiLib>,
        ui: Option<ui::AsUiLib>,
        play: Option<play::AsPlayLib>,
    ) -> Self {
        let parser = Parser {
            v0: v0::Parser::default(),
            v1: v1::Parser::default(),
        };

        let mut consts_v0 = HashMap::new();
        let mut consts_v1 = HashMap::new();
        if let Some(api) = api {
            api.clone().register_v0(&mut consts_v0);
            api.register_v1(&mut consts_v1);
        }
        if let Some(ui) = ui {
            ui.register_v0(&mut consts_v0);
            ui.register_v1(&mut consts_v1);
        }
        if let Some(play) = play {
            play.register_v0(&mut consts_v0);
            play.register_v1(&mut consts_v1);
        }
        let in_ = Arc::new(read);
        let out = Arc::new(write);
        let interpreter = Interpreter {
            v0: v0::Interpreter::new(
                consts_v0,
                Some({
                    let in_ = in_.clone();
                    move |input| in_(input)
                }),
                Some({
                    let out = out.clone();
                    move |value: v0::values::Value| {
                        let out = out.clone();
                        let value = value.to_string();
                        async move {
                            out(value).await;
                        }
                        .boxed()
                    }
                }),
                None::<fn(_) -> _>,
                None,
            ),
            v1: v1::Interpreter::new(
                consts_v1,
                Some(move |input| in_(input)),
                Some(move |value: v1::values::Value| {
                    let out = out.clone();
                    let value = value.to_string();
                    async move {
                        out(value).await;
                    }
                    .boxed()
                }),
                None::<fn(_) -> _>,
                None,
            ),
        };

        AiScript {
            parser,
            interpreter,
        }
    }

    pub async fn exec(&self, input: &str, is_legacy: Option<bool>) -> Result<String, String> {
        let is_legacy = match is_legacy {
            Some(true) => true,
            Some(false) => {
                let version = v1::utils::get_lang_version(input);
                version.is_some_and(|version| {
                    version
                        .parse::<Version>()
                        .is_ok_and(|version| version < Version::major(1))
                })
            }
            None => {
                let version = v1::utils::get_lang_version(input);
                version.is_none_or(|version| {
                    version
                        .parse::<Version>()
                        .is_ok_and(|version| version < Version::major(1))
                })
            }
        };
        if is_legacy {
            match self.parser.v0.parse(input) {
                Ok(script) => self
                    .interpreter
                    .v0
                    .exec(script)
                    .await
                    .map_err(|err| err.to_string())
                    .map(|value| value.unwrap_or_default().display_simple().to_string()),
                Err(err) => {
                    if let Ok(script) = self.parser.v1.parse(input) {
                        self.interpreter
                            .v1
                            .exec(script)
                            .await
                            .map_err(|err| err.to_string())
                            .map(|value| value.unwrap_or_default().display_simple().to_string())
                    } else {
                        Err(err.to_string())?
                    }
                }
            }
        } else {
            match self.parser.v1.parse(input) {
                Ok(script) => self
                    .interpreter
                    .v1
                    .exec(script)
                    .await
                    .map_err(|err| err.to_string())
                    .map(|value| value.unwrap_or_default().display_simple().to_string()),
                Err(err) => {
                    if let Ok(script) = self.parser.v0.parse(input) {
                        self.interpreter
                            .v0
                            .exec(script)
                            .await
                            .map_err(|err| err.to_string())
                            .map(|value| value.unwrap_or_default().display_simple().to_string())
                    } else {
                        Err(err.to_string())?
                    }
                }
            }
        }
    }

    pub async fn abort(&self) {
        tokio::join!(self.interpreter.v0.abort(), self.interpreter.v1.abort());
    }

    pub fn aiscript_version() -> String {
        String::from(v1::AISCRIPT_VERSION)
    }
}
