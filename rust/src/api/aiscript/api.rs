use std::{collections::HashMap, sync::Arc};

use aiscript::v0::{
    errors::AiScriptError,
    utils,
    values::{V, Value},
};
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

pub struct AsApiLib {
    user_id: Option<String>,
    user_name: Option<String>,
    user_username: Option<String>,
    custom_emojis: String,
    locale: String,
    server_url: String,
    dialog: Arc<DialogCallback>,
    confirm: Arc<ConfirmCallback>,
    token: Option<String>,
    api: Arc<ApiCallback>,
    save: Arc<dyn Fn(String, String) -> DartFnFuture<()> + Sync + Send + 'static>,
    load: Arc<dyn Fn(String) -> DartFnFuture<String> + Sync + Send + 'static>,
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
        token: Option<String>,
        api: impl Fn(String, String, Option<String>) -> DartFnFuture<(String, Option<String>)>
        + Sync
        + Send
        + 'static,
        save: impl Fn(String, String) -> DartFnFuture<()> + Sync + Send + 'static,
        load: impl Fn(String) -> DartFnFuture<String> + Sync + Send + 'static,
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
            token,
            api: Arc::new(api),
            save: Arc::new(save),
            load: Arc::new(load),
            url,
            nyaize: Arc::new(nyaize),
        }
    }

    pub(crate) fn register(&self, consts: &mut HashMap<String, Value>) {
        consts.insert(
            "USER_ID".to_string(),
            self.user_id.as_ref().map_or_else(Value::null, Value::str),
        );

        consts.insert(
            "USER_NAME".to_string(),
            self.user_name.as_ref().map_or_else(Value::null, Value::str),
        );

        consts.insert(
            "USER_USERNAME".to_string(),
            self.user_username
                .as_ref()
                .map_or_else(Value::null, Value::str),
        );

        consts.insert(
            "CUSTOM_EMOJIS".to_string(),
            serde_json::from_str(&self.custom_emojis).map_or_else(|_| Value::arr([]), Value::new),
        );

        consts.insert("LOCALE".to_string(), Value::str(&self.locale));

        consts.insert("SERVER_URL".to_string(), Value::str(&self.server_url));

        consts.insert(
            "Mk:dialog".to_string(),
            Value::fn_native({
                let dialog = self.dialog.clone();
                move |args, _| {
                    let dialog = dialog.clone();
                    async move {
                        let mut args = args.into_iter();
                        let title = args
                            .next()
                            .and_then(|value| {
                                if let V::Str(value) = *value.value {
                                    Some(value)
                                } else {
                                    None
                                }
                            })
                            .unwrap_or_default();
                        let text = args
                            .next()
                            .and_then(|value| {
                                if let V::Str(value) = *value.value {
                                    Some(value)
                                } else {
                                    None
                                }
                            })
                            .unwrap_or_default();
                        let type_ = args
                            .next()
                            .and_then(|value| {
                                if let V::Str(value) = *value.value {
                                    Some(value)
                                } else {
                                    None
                                }
                            })
                            .unwrap_or("info".to_string());
                        dialog(title, text, type_).await;
                        Ok(Value::null())
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:confirm".to_string(),
            Value::fn_native({
                let confirm = self.confirm.clone();
                move |args, _| {
                    let confirm = confirm.clone();
                    async move {
                        let mut args = args.into_iter();
                        let title = args
                            .next()
                            .and_then(|value| {
                                if let V::Str(value) = *value.value {
                                    Some(value)
                                } else {
                                    None
                                }
                            })
                            .unwrap_or_default();
                        let text = args
                            .next()
                            .and_then(|value| {
                                if let V::Str(value) = *value.value {
                                    Some(value)
                                } else {
                                    None
                                }
                            })
                            .unwrap_or_default();
                        let type_ = args
                            .next()
                            .and_then(|value| {
                                if let V::Str(value) = *value.value {
                                    Some(value)
                                } else {
                                    None
                                }
                            })
                            .unwrap_or("info".to_string());
                        let result = confirm(title, text, type_).await;
                        Ok(Value::bool(result))
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:api".to_string(),
            Value::fn_native({
                let api = self.api.clone();
                let token = self.token.clone();
                move |args, _| {
                    let api = api.clone();
                    let token = token.clone();
                    async move {
                        let mut args = args.into_iter();
                        let ep = String::try_from(args.next().unwrap_or_default())?;
                        if ep.contains("://") {
                            Err(AiScriptError::Internal("invalid endpoint".to_string()))?
                        }
                        let param = utils::expect_any(args.next())?;
                        let token = args
                            .next()
                            .map(String::try_from)
                            .map_or(Ok(None), |r| r.map(Some))?
                            .or(token);
                        let result = api(
                            ep,
                            serde_json::to_string(&param.value)
                                .map_err(|err| AiScriptError::Internal(err.to_string()))?,
                            token,
                        )
                        .await;
                        if let Some(err) = &result.1 {
                            Err(AiScriptError::Internal(err.to_string()))?
                        }
                        let value = Value::new(serde_json::from_str(&result.0).unwrap_or_default());
                        Ok(value)
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:save".to_string(),
            Value::fn_native({
                let save = self.save.clone();
                move |args, _| {
                    let save = save.clone();
                    async move {
                        let mut args = args.into_iter();
                        let key = String::try_from(args.next().unwrap_or_default())?;
                        let value = utils::expect_any(args.next())?;
                        save(
                            key,
                            serde_json::to_string(&value.value)
                                .map_err(|err| AiScriptError::Internal(err.to_string()))?,
                        )
                        .await;
                        Ok(Value::null())
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:load".to_string(),
            Value::fn_native({
                let load = self.load.clone();
                move |args, _| {
                    let load = load.clone();
                    async move {
                        let mut args = args.into_iter();
                        let key = String::try_from(args.next().unwrap_or_default())?;
                        let value = load(key).await;
                        let value = Value::new(serde_json::from_str(&value).unwrap_or_default());
                        Ok(value)
                    }
                    .boxed()
                }
            }),
        );

        consts.insert(
            "Mk:url".to_string(),
            Value::fn_native({
                let url = self.url.clone();
                move |_, _| {
                    let url = url.clone();
                    async move { Ok(Value::str(url)) }.boxed()
                }
            }),
        );

        consts.insert(
            "Mk:nyaize".to_string(),
            Value::fn_native({
                let nyaize = self.nyaize.clone();
                move |args, _| {
                    let nyaize = nyaize.clone();
                    async move {
                        let mut args = args.into_iter();
                        let text = String::try_from(args.next().unwrap_or_default())?;
                        Ok(Value::str(nyaize(text).await))
                    }
                    .boxed()
                }
            }),
        );
    }
}
