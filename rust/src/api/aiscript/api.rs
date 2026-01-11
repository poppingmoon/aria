use std::{collections::HashMap, sync::Arc};

use aiscript::{v0, v1};
use flutter_rust_bridge::{DartFnFuture, frb};
use futures::FutureExt;

pub type DialogCallback =
    dyn Fn(String, String, String) -> DartFnFuture<()> + Sync + Send + 'static;

pub type ConfirmCallback =
    dyn Fn(String, String, String) -> DartFnFuture<bool> + Sync + Send + 'static;

pub type ApiCallback = dyn Fn(String, String, Option<String>) -> DartFnFuture<(String, Option<String>)>
    + Sync
    + Send
    + 'static;

#[derive(Clone)]
pub struct AsApiLib {
    user_id: Option<String>,
    user_name: Option<String>,
    user_username: Option<String>,
    custom_emojis: String,
    locale: String,
    server_url: String,
    dialog: Arc<DialogCallback>,
    confirm: Arc<ConfirmCallback>,
    toast: Arc<dyn Fn(String) -> DartFnFuture<()> + Sync + Send + 'static>,
    token: Option<String>,
    api: Arc<ApiCallback>,
    save: Arc<dyn Fn(String, String) -> DartFnFuture<()> + Sync + Send + 'static>,
    load: Arc<dyn Fn(String) -> DartFnFuture<String> + Sync + Send + 'static>,
    remove: Arc<dyn Fn(String) -> DartFnFuture<()> + Sync + Send + 'static>,
    url: String,
    nyaize: Arc<dyn Fn(String) -> DartFnFuture<String> + Sync + Send + 'static>,
}

impl AsApiLib {
    #[frb(sync)]
    #[allow(clippy::too_many_arguments)]
    pub fn new(
        user_id: Option<String>,
        user_name: Option<String>,
        user_username: Option<String>,
        custom_emojis: String,
        locale: String,
        server_url: String,
        dialog: impl Fn(String, String, String) -> DartFnFuture<()> + Sync + Send + 'static,
        confirm: impl Fn(String, String, String) -> DartFnFuture<bool> + Sync + Send + 'static,
        toast: impl Fn(String) -> DartFnFuture<()> + Sync + Send + 'static,
        token: Option<String>,
        api: impl Fn(String, String, Option<String>) -> DartFnFuture<(String, Option<String>)>
        + Sync
        + Send
        + 'static,
        save: impl Fn(String, String) -> DartFnFuture<()> + Sync + Send + 'static,
        load: impl Fn(String) -> DartFnFuture<String> + Sync + Send + 'static,
        remove: impl Fn(String) -> DartFnFuture<()> + Sync + Send + 'static,
        url: String,
        nyaize: impl Fn(String) -> DartFnFuture<String> + Sync + Send + 'static,
    ) -> Self {
        AsApiLib {
            user_id,
            user_name,
            user_username,
            custom_emojis,
            locale,
            server_url,
            dialog: Arc::new(dialog),
            confirm: Arc::new(confirm),
            toast: Arc::new(toast),
            token,
            api: Arc::new(api),
            save: Arc::new(save),
            load: Arc::new(load),
            remove: Arc::new(remove),
            url,
            nyaize: Arc::new(nyaize),
        }
    }

    pub(super) fn register_v0(self, consts: &mut HashMap<String, v0::values::Value>) {
        consts.insert(
            "USER_ID".to_string(),
            self.user_id
                .map_or_else(v0::values::Value::null, v0::values::Value::str),
        );

        consts.insert(
            "USER_NAME".to_string(),
            self.user_name
                .map_or_else(v0::values::Value::null, v0::values::Value::str),
        );

        consts.insert(
            "USER_USERNAME".to_string(),
            self.user_username
                .map_or_else(v0::values::Value::null, v0::values::Value::str),
        );

        consts.insert(
            "CUSTOM_EMOJIS".to_string(),
            serde_json::from_str(&self.custom_emojis)
                .map_or_else(|_| v0::values::Value::arr([]), v0::values::Value::new),
        );

        consts.insert("LOCALE".to_string(), v0::values::Value::str(self.locale));

        consts.insert(
            "SERVER_URL".to_string(),
            v0::values::Value::str(self.server_url),
        );

        consts.insert(
            "Mk:dialog".to_string(),
            v0::values::Value::fn_native({
                move |args, _| {
                    let mut args = args.into_iter();
                    let title = args
                        .next()
                        .and_then(|value| {
                            if let v0::values::V::Str(value) = *value.value {
                                Some(value)
                            } else {
                                None
                            }
                        })
                        .unwrap_or_default();
                    let text = args
                        .next()
                        .and_then(|value| {
                            if let v0::values::V::Str(value) = *value.value {
                                Some(value)
                            } else {
                                None
                            }
                        })
                        .unwrap_or_default();
                    let type_ = args
                        .next()
                        .and_then(|value| {
                            if let v0::values::V::Str(value) = *value.value {
                                Some(value)
                            } else {
                                None
                            }
                        })
                        .unwrap_or("info".to_string());
                    let dialog = (self.dialog)(title, text, type_);
                    async {
                        dialog.await;
                        Ok(v0::values::Value::null())
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:confirm".to_string(),
            v0::values::Value::fn_native({
                move |args, _| {
                    let mut args = args.into_iter();
                    let title = args
                        .next()
                        .and_then(|value| {
                            if let v0::values::V::Str(value) = *value.value {
                                Some(value)
                            } else {
                                None
                            }
                        })
                        .unwrap_or_default();
                    let text = args
                        .next()
                        .and_then(|value| {
                            if let v0::values::V::Str(value) = *value.value {
                                Some(value)
                            } else {
                                None
                            }
                        })
                        .unwrap_or_default();
                    let type_ = args
                        .next()
                        .and_then(|value| {
                            if let v0::values::V::Str(value) = *value.value {
                                Some(value)
                            } else {
                                None
                            }
                        })
                        .unwrap_or("question".to_string());
                    let confirm = (self.confirm)(title, text, type_);
                    async {
                        let result = confirm.await;
                        Ok(v0::values::Value::bool(result))
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:toast".to_string(),
            v0::values::Value::fn_native({
                move |args, _| {
                    let mut args = args.into_iter();
                    let toast = String::try_from(args.next().unwrap_or_default())
                        .map(|text| (self.toast)(text));
                    async {
                        toast?.await;
                        Ok(v0::values::Value::null())
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:api".to_string(),
            v0::values::Value::fn_native({
                move |args, _| {
                    let mut args = args.into_iter();
                    let api = String::try_from(args.next().unwrap_or_default()).and_then(|ep| {
                        if ep.contains("://") || ep.contains("..") {
                            Err(v0::errors::AiScriptRuntimeError::runtime(
                                "invalid endpoint",
                            ))?
                        }
                        let param = v0::utils::expect_any(args.next())?;
                        let token = args
                            .next()
                            .map(String::try_from)
                            .map_or(Ok(None), |r| r.map(Some))?
                            .or_else(|| self.token.clone());
                        Ok((self.api)(
                            ep,
                            serde_json::to_string(&param.value)
                                .map_err(v0::errors::AiScriptError::internal)?,
                            token,
                        ))
                    });
                    async {
                        let result = api?.await;
                        Ok(v0::values::Value::new(if let Some(err) = &result.1 {
                            v0::values::V::Error {
                                value: "request_failed".to_string(),
                                info: serde_json::from_str(&err)
                                    .ok()
                                    .map(v0::values::Value::new)
                                    .map(Into::into),
                            }
                        } else {
                            serde_json::from_str(&result.0).unwrap_or_default()
                        }))
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:save".to_string(),
            v0::values::Value::fn_native({
                move |args, _| {
                    let mut args = args.into_iter();
                    let save = String::try_from(args.next().unwrap_or_default()).and_then(|key| {
                        let value = v0::utils::expect_any(args.next())?;
                        Ok((self.save)(
                            key,
                            serde_json::to_string(&value.value)
                                .map_err(v0::errors::AiScriptError::internal)?,
                        ))
                    });
                    async {
                        save?.await;
                        Ok(v0::values::Value::null())
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:load".to_string(),
            v0::values::Value::fn_native({
                move |args, _| {
                    let mut args = args.into_iter();
                    let load = String::try_from(args.next().unwrap_or_default())
                        .map(|key| (self.load)(key));
                    async {
                        let value = load?.await;
                        let value = v0::values::Value::new(
                            serde_json::from_str(&value).unwrap_or_default(),
                        );
                        Ok(value)
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:remove".to_string(),
            v0::values::Value::fn_native({
                move |args, _| {
                    let mut args = args.into_iter();
                    let remove = String::try_from(args.next().unwrap_or_default())
                        .map(|key| (self.remove)(key));
                    async {
                        remove?.await;
                        Ok(v0::values::Value::null())
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:url".to_string(),
            v0::values::Value::fn_native({
                move |_, _| {
                    let result = Ok(v0::values::Value::str(&self.url));
                    async { result }.boxed()
                }
            }),
        );

        consts.insert(
            "Mk:nyaize".to_string(),
            v0::values::Value::fn_native({
                move |args, _| {
                    let mut args = args.into_iter();
                    let nyaize = String::try_from(args.next().unwrap_or_default())
                        .map(|text| (self.nyaize)(text));
                    async { Ok(v0::values::Value::str(nyaize?.await)) }.boxed()
                }
            }),
        );
    }

    pub(super) fn register_v1(self, consts: &mut HashMap<String, v1::values::Value>) {
        consts.insert(
            "USER_ID".to_string(),
            self.user_id
                .map_or_else(v1::values::Value::null, v1::values::Value::str),
        );

        consts.insert(
            "USER_NAME".to_string(),
            self.user_name
                .map_or_else(v1::values::Value::null, v1::values::Value::str),
        );

        consts.insert(
            "USER_USERNAME".to_string(),
            self.user_username
                .map_or_else(v1::values::Value::null, v1::values::Value::str),
        );

        consts.insert(
            "CUSTOM_EMOJIS".to_string(),
            serde_json::from_str(&self.custom_emojis)
                .map_or_else(|_| v1::values::Value::arr([]), v1::values::Value::new),
        );

        consts.insert("LOCALE".to_string(), v1::values::Value::str(self.locale));

        consts.insert(
            "SERVER_URL".to_string(),
            v1::values::Value::str(self.server_url),
        );

        consts.insert(
            "Mk:dialog".to_string(),
            v1::values::Value::fn_native({
                move |args, _| {
                    let mut args = args.into_iter();
                    let title = args
                        .next()
                        .and_then(|value| {
                            if let v1::values::V::Str(value) = *value.value {
                                Some(value)
                            } else {
                                None
                            }
                        })
                        .unwrap_or_default();
                    let text = args
                        .next()
                        .and_then(|value| {
                            if let v1::values::V::Str(value) = *value.value {
                                Some(value)
                            } else {
                                None
                            }
                        })
                        .unwrap_or_default();
                    let type_ = args
                        .next()
                        .and_then(|value| {
                            if let v1::values::V::Str(value) = *value.value {
                                Some(value)
                            } else {
                                None
                            }
                        })
                        .unwrap_or("info".to_string());
                    let dialog = (self.dialog)(title, text, type_);
                    async {
                        dialog.await;
                        Ok(v1::values::Value::null())
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:confirm".to_string(),
            v1::values::Value::fn_native({
                move |args, _| {
                    let mut args = args.into_iter();
                    let title = args
                        .next()
                        .and_then(|value| {
                            if let v1::values::V::Str(value) = *value.value {
                                Some(value)
                            } else {
                                None
                            }
                        })
                        .unwrap_or_default();
                    let text = args
                        .next()
                        .and_then(|value| {
                            if let v1::values::V::Str(value) = *value.value {
                                Some(value)
                            } else {
                                None
                            }
                        })
                        .unwrap_or_default();
                    let type_ = args
                        .next()
                        .and_then(|value| {
                            if let v1::values::V::Str(value) = *value.value {
                                Some(value)
                            } else {
                                None
                            }
                        })
                        .unwrap_or("question".to_string());
                    let confirm = (self.confirm)(title, text, type_);
                    async {
                        let result = confirm.await;
                        Ok(v1::values::Value::bool(result))
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:toast".to_string(),
            v1::values::Value::fn_native({
                move |args, _| {
                    let mut args = args.into_iter();
                    let toast = String::try_from(args.next().unwrap_or_default())
                        .map(|text| (self.toast)(text));
                    async {
                        toast?.await;
                        Ok(v1::values::Value::null())
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:api".to_string(),
            v1::values::Value::fn_native({
                move |args, _| {
                    let mut args = args.into_iter();
                    let api = String::try_from(args.next().unwrap_or_default()).and_then(|ep| {
                        if ep.contains("://") || ep.contains("..") {
                            Err(v1::errors::AiScriptRuntimeError::Runtime(
                                "invalid endpoint".to_string(),
                            ))?
                        }
                        let param = v1::utils::expect_any(args.next())?;
                        let token = args
                            .next()
                            .map(String::try_from)
                            .map_or(Ok(None), |r| r.map(Some))?
                            .or_else(|| self.token.clone());
                        Ok((self.api)(
                            ep,
                            serde_json::to_string(&param.value)
                                .map_err(v1::errors::AiScriptError::internal)?,
                            token,
                        ))
                    });
                    async {
                        let result = api?.await;
                        Ok(v1::values::Value::new(if let Some(err) = &result.1 {
                            v1::values::V::Error {
                                value: "request_failed".to_string(),
                                info: serde_json::from_str(&err)
                                    .ok()
                                    .map(v1::values::Value::new)
                                    .map(Into::into),
                            }
                        } else {
                            serde_json::from_str(&result.0).unwrap_or_default()
                        }))
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:save".to_string(),
            v1::values::Value::fn_native({
                move |args, _| {
                    let mut args = args.into_iter();
                    let save = String::try_from(args.next().unwrap_or_default()).and_then(|key| {
                        let value = v1::utils::expect_any(args.next())?;
                        Ok((self.save)(
                            key,
                            serde_json::to_string(&value.value)
                                .map_err(v1::errors::AiScriptError::internal)?,
                        ))
                    });
                    async {
                        save?.await;
                        Ok(v1::values::Value::null())
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:load".to_string(),
            v1::values::Value::fn_native({
                move |args, _| {
                    let mut args = args.into_iter();
                    let load = String::try_from(args.next().unwrap_or_default())
                        .map(|key| (self.load)(key));
                    async {
                        let value = load?.await;
                        let value = v1::values::Value::new(
                            serde_json::from_str(&value).unwrap_or_default(),
                        );
                        Ok(value)
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:remove".to_string(),
            v1::values::Value::fn_native({
                move |args, _| {
                    let mut args = args.into_iter();
                    let remove = String::try_from(args.next().unwrap_or_default())
                        .map(|key| (self.remove)(key));
                    async {
                        remove?.await;
                        Ok(v1::values::Value::null())
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:url".to_string(),
            v1::values::Value::fn_native({
                move |_, _| {
                    let result = Ok(v1::values::Value::str(&self.url));
                    async { result }.boxed()
                }
            }),
        );

        consts.insert(
            "Mk:nyaize".to_string(),
            v1::values::Value::fn_native({
                move |args, _| {
                    let mut args = args.into_iter();
                    let nyaize = String::try_from(args.next().unwrap_or_default())
                        .map(|text| (self.nyaize)(text));
                    async { Ok(v1::values::Value::str(nyaize?.await)) }.boxed()
                }
            }),
        );
    }
}
