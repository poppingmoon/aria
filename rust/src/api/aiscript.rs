use std::{collections::HashMap, sync::Arc};

use aiscript::values::{Value, V};
use flutter_rust_bridge::DartFnFuture;
use futures::FutureExt;

pub mod api;
pub mod play;
pub mod ui;

pub struct AiScript {
    pub(crate) parser: aiscript::Parser,
    pub(crate) interpreter: aiscript::Interpreter,
}

impl AiScript {
    pub async fn new(
        read: impl Fn(String) -> DartFnFuture<String> + Sync + Send + 'static,
        write: impl Fn(String) -> DartFnFuture<()> + Sync + Send + 'static,
        api: Option<api::AsApiLib>,
        ui: Option<ui::AsUiLib>,
        play: Option<play::AsPlayLib>,
    ) -> Self {
        let parser = aiscript::Parser::default();
        let mut consts = HashMap::new();
        if let Some(api) = api {
            api.register(&mut consts);
        }
        if let Some(ui) = ui {
            ui.register(&mut consts).await;
        }
        if let Some(play) = play {
            play.register(&mut consts);
        }
        let in_ = Arc::new(read);
        let out = Arc::new(write);
        let interpreter = aiscript::Interpreter::new(
            consts,
            Some(move |input| in_(input)),
            Some(move |value: Value| {
                let out = out.clone();
                async move {
                    let text = match *value.value {
                        V::Num(value) => value.to_string(),
                        V::Str(value) => value,
                        value => value.to_string(),
                    };
                    out(text).await;
                }
                .boxed()
            }),
            None::<fn(_) -> _>,
            None,
        );
        AiScript {
            parser,
            interpreter,
        }
    }

    pub async fn exec(&self, input: &str) -> Result<(), String> {
        let script = self.parser.parse(input).map_err(|err| err.to_string())?;
        self.interpreter
            .exec(script)
            .await
            .map_err(|err| err.to_string())?;
        Ok(())
    }

    pub fn abort(&self) {
        self.interpreter.abort();
    }
}
