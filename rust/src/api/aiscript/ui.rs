use std::{
    collections::HashMap,
    ops::Deref,
    sync::{Arc, Mutex},
};

use aiscript::v0::{
    Interpreter,
    errors::AiScriptError,
    values::{V, VArr, VFn, VObj, Value},
};
use flutter_rust_bridge::{DartFnFuture, frb};
use futures::FutureExt;
pub use futures::future::BoxFuture;
use indexmap::IndexMap;
use uuid::Uuid;

#[derive(Clone)]
pub struct AsUiRoot {
    pub children: Vec<String>,
}

impl TryFrom<Value> for AsUiRoot {
    type Error = AiScriptError;

    fn try_from(value: Value) -> Result<Self, Self::Error> {
        let def = VObj::try_from(value)?;
        let def = def.read().map_err(AiScriptError::internal)?;

        let children = <Vec<Value>>::try_from(def.get("children").cloned().unwrap_or_default())?;
        let mut ids = Vec::new();
        for value in children {
            let value = <IndexMap<String, Value>>::try_from(value)?;
            if let Some(Value { value, .. }) = value.get("id")
                && let V::Str(id) = value.deref()
            {
                ids.push(id.clone());
            }
        }

        Ok(AsUiRoot { children: ids })
    }
}

impl AsUiRoot {
    fn update(&mut self, updates: Self) {
        let AsUiRoot { children } = updates;
        self.children = children;
    }
}

#[derive(Clone)]
pub struct AsUiContainer {
    pub children: Option<Vec<String>>,
    pub align: Option<String>,
    pub bg_color: Option<String>,
    pub fg_color: Option<String>,
    pub font: Option<String>,
    pub border_width: Option<f64>,
    pub border_color: Option<String>,
    pub padding: Option<f64>,
    pub rounded: Option<bool>,
    pub hidden: Option<bool>,
}

impl TryFrom<Value> for AsUiContainer {
    type Error = AiScriptError;

    fn try_from(value: Value) -> Result<Self, Self::Error> {
        let def = VObj::try_from(value)?;
        let def = def.read().map_err(AiScriptError::internal)?;

        let children = def
            .get("children")
            .cloned()
            .map(<Vec<Value>>::try_from)
            .map_or(Ok(None), |r| r.map(Some))?
            .map(|children| {
                let mut ids = Vec::new();
                for value in children {
                    let value = <IndexMap<String, Value>>::try_from(value)?;
                    if let Some(Value { value, .. }) = value.get("id")
                        && let V::Str(id) = value.deref()
                    {
                        ids.push(id.clone());
                    }
                }
                Ok::<Vec<String>, AiScriptError>(ids)
            })
            .map_or(Ok(None), |r| r.map(Some))?;
        let align = def
            .get("align")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let bg_color = def
            .get("bgColor")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let fg_color = def
            .get("fgColor")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let font = def
            .get("font")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let border_width = def
            .get("borderWidth")
            .cloned()
            .map(f64::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let border_color = def
            .get("borderColor")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let padding = def
            .get("padding")
            .cloned()
            .map(f64::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let rounded = def
            .get("rounded")
            .cloned()
            .map(bool::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let hidden = def
            .get("hidden")
            .cloned()
            .map(bool::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;

        Ok(AsUiContainer {
            children,
            align,
            bg_color,
            fg_color,
            font,
            border_width,
            border_color,
            padding,
            rounded,
            hidden,
        })
    }
}

impl AsUiContainer {
    fn update(&mut self, updates: Self) {
        let AsUiContainer {
            children,
            align,
            bg_color,
            fg_color,
            font,
            border_width,
            border_color,
            padding,
            rounded,
            hidden,
        } = updates;
        if children.is_some() {
            self.children = children;
        }
        if align.is_some() {
            self.align = align;
        }
        if bg_color.is_some() {
            self.bg_color = bg_color;
        }
        if fg_color.is_some() {
            self.fg_color = fg_color;
        }
        if font.is_some() {
            self.font = font;
        }
        if border_width.is_some() {
            self.border_width = border_width;
        }
        if border_color.is_some() {
            self.border_color = border_color;
        }
        if padding.is_some() {
            self.padding = padding;
        }
        if rounded.is_some() {
            self.rounded = rounded;
        }
        if hidden.is_some() {
            self.hidden = hidden;
        }
    }
}

#[derive(Clone)]
pub struct AsUiText {
    pub text: Option<String>,
    pub size: Option<f64>,
    pub bold: Option<bool>,
    pub color: Option<String>,
    pub font: Option<String>,
}

impl TryFrom<Value> for AsUiText {
    type Error = AiScriptError;

    fn try_from(value: Value) -> Result<Self, Self::Error> {
        let def = VObj::try_from(value)?;
        let def = def.read().map_err(AiScriptError::internal)?;

        let text = def
            .get("text")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let size = def
            .get("size")
            .cloned()
            .map(f64::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let bold = def
            .get("bold")
            .cloned()
            .map(bool::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let color = def
            .get("color")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let font = def
            .get("font")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;

        Ok(AsUiText {
            text,
            size,
            bold,
            color,
            font,
        })
    }
}

impl AsUiText {
    fn update(&mut self, updates: Self) {
        let AsUiText {
            text,
            size,
            bold,
            color,
            font,
        } = updates;
        if text.is_some() {
            self.text = text;
        }
        if size.is_some() {
            self.size = size;
        }
        if bold.is_some() {
            self.bold = bold;
        }
        if color.is_some() {
            self.color = color;
        }
        if font.is_some() {
            self.font = font;
        }
    }
}

#[derive(Clone)]
pub struct AsUiMfmCallback(
    Arc<dyn Fn(String) -> BoxFuture<'static, Result<(), String>> + Sync + Send + 'static>,
);

impl AsUiMfmCallback {
    pub async fn call(&self, value: String) -> Result<(), String> {
        self.0(value).await
    }
}

#[derive(Clone)]
pub struct AsUiMfm {
    pub text: Option<String>,
    pub size: Option<f64>,
    pub bold: Option<bool>,
    pub color: Option<String>,
    pub font: Option<String>,
    pub on_click_ev: Option<AsUiMfmCallback>,
}

impl TryFrom<(Value, &Interpreter)> for AsUiMfm {
    type Error = AiScriptError;

    fn try_from((value, interpreter): (Value, &Interpreter)) -> Result<Self, Self::Error> {
        let def = VObj::try_from(value)?;
        let def = def.read().map_err(AiScriptError::internal)?;

        let text = def
            .get("text")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let size = def
            .get("size")
            .cloned()
            .map(f64::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let bold = def
            .get("bold")
            .cloned()
            .map(bool::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let color = def
            .get("color")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let font = def
            .get("font")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let on_click_ev = def
            .get("onClickEv")
            .cloned()
            .map(VFn::try_from)
            .map_or(Ok(None), |r| r.map(Some))?
            .map(|on_click_ev| {
                AsUiMfmCallback(Arc::new({
                    let interpreter = interpreter.clone();
                    move |v| {
                        let interpreter = interpreter.clone();
                        let on_click_ev = on_click_ev.clone();
                        async move {
                            interpreter
                                .exec_fn(on_click_ev, [Value::str(v)])
                                .await
                                .map_err(|err| err.to_string())?;
                            Ok(())
                        }
                        .boxed()
                    }
                }))
            });

        Ok(AsUiMfm {
            text,
            size,
            bold,
            color,
            font,
            on_click_ev,
        })
    }
}

impl AsUiMfm {
    fn update(&mut self, updates: Self) {
        let AsUiMfm {
            text,
            size,
            bold,
            color,
            font,
            on_click_ev,
        } = updates;
        if text.is_some() {
            self.text = text;
        }
        if size.is_some() {
            self.size = size;
        }
        if bold.is_some() {
            self.bold = bold;
        }
        if color.is_some() {
            self.color = color;
        }
        if font.is_some() {
            self.font = font;
        }
        if on_click_ev.is_some() {
            self.on_click_ev = on_click_ev;
        }
    }
}

#[derive(Clone)]
pub struct AsUiButtonCallback(
    Arc<dyn Fn() -> BoxFuture<'static, Result<(), String>> + Sync + Send + 'static>,
);

impl AsUiButtonCallback {
    pub async fn call(&self) -> Result<(), String> {
        self.0().await
    }
}

#[derive(Clone)]
pub struct AsUiButton {
    pub text: Option<String>,
    pub on_click: Option<AsUiButtonCallback>,
    pub primary: Option<bool>,
    pub rounded: Option<bool>,
    pub disabled: Option<bool>,
}

impl TryFrom<(Value, &Interpreter)> for AsUiButton {
    type Error = AiScriptError;

    fn try_from((value, interpreter): (Value, &Interpreter)) -> Result<Self, Self::Error> {
        let def = VObj::try_from(value)?;
        let def = def.read().map_err(AiScriptError::internal)?;

        let text = def
            .get("text")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let on_click = def
            .get("onClick")
            .cloned()
            .map(VFn::try_from)
            .map_or(Ok(None), |r| r.map(Some))?
            .map(|on_click| {
                AsUiButtonCallback(Arc::new({
                    let interpreter = interpreter.clone();
                    move || {
                        let interpreter = interpreter.clone();
                        let on_click = on_click.clone();
                        async move {
                            interpreter
                                .exec_fn(on_click, [])
                                .await
                                .map_err(|err| err.to_string())?;
                            Ok(())
                        }
                        .boxed()
                    }
                }))
            });
        let primary = def
            .get("primary")
            .cloned()
            .map(bool::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let rounded = def
            .get("rounded")
            .cloned()
            .map(bool::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let disabled = def
            .get("disabled")
            .cloned()
            .map(bool::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;

        Ok(AsUiButton {
            text,
            on_click,
            primary,
            rounded,
            disabled,
        })
    }
}

impl AsUiButton {
    fn update(&mut self, updates: Self) {
        let AsUiButton {
            text,
            on_click,
            primary,
            rounded,
            disabled,
        } = updates;
        if text.is_some() {
            self.text = text;
        }
        if on_click.is_some() {
            self.on_click = on_click;
        }
        if primary.is_some() {
            self.primary = primary;
        }
        if rounded.is_some() {
            self.rounded = rounded;
        }
        if disabled.is_some() {
            self.disabled = disabled;
        }
    }
}

#[derive(Clone)]
pub struct AsUiButtons {
    pub buttons: Option<Vec<AsUiButton>>,
}

impl TryFrom<(Value, &Interpreter)> for AsUiButtons {
    type Error = AiScriptError;

    fn try_from((value, interpreter): (Value, &Interpreter)) -> Result<Self, Self::Error> {
        let def = VObj::try_from(value)?;
        let def = def.read().map_err(AiScriptError::internal)?;

        let buttons = def
            .get("buttons")
            .cloned()
            .map(<Vec<Value>>::try_from)
            .map_or(Ok(None), |r| r.map(Some))?
            .map(|buttons| {
                buttons
                    .into_iter()
                    .map(|button| AsUiButton::try_from((button, interpreter)))
                    .collect::<Result<Vec<AsUiButton>, AiScriptError>>()
            })
            .map_or(Ok(None), |r| r.map(Some))?;

        Ok(AsUiButtons { buttons })
    }
}

impl AsUiButtons {
    fn update(&mut self, updates: Self) {
        let AsUiButtons { buttons } = updates;
        if buttons.is_some() {
            self.buttons = buttons;
        }
    }
}

#[derive(Clone)]
pub struct AsUiSwitchCallback(
    Arc<dyn Fn(bool) -> BoxFuture<'static, Result<(), String>> + Sync + Send + 'static>,
);

impl AsUiSwitchCallback {
    pub async fn call(&self, value: bool) -> Result<(), String> {
        self.0(value).await
    }
}

#[derive(Clone)]
pub struct AsUiSwitch {
    pub on_change: Option<AsUiSwitchCallback>,
    pub default_value: Option<bool>,
    pub label: Option<String>,
    pub caption: Option<String>,
}

impl TryFrom<(Value, &Interpreter)> for AsUiSwitch {
    type Error = AiScriptError;

    fn try_from((value, interpreter): (Value, &Interpreter)) -> Result<Self, Self::Error> {
        let def = VObj::try_from(value)?;
        let def = def.read().map_err(AiScriptError::internal)?;

        let on_change = def
            .get("onChange")
            .cloned()
            .map(VFn::try_from)
            .map_or(Ok(None), |r| r.map(Some))?
            .map(|on_change| {
                AsUiSwitchCallback(Arc::new({
                    let interpreter = interpreter.clone();
                    move |v| {
                        let interpreter = interpreter.clone();
                        let on_change = on_change.clone();
                        async move {
                            interpreter
                                .exec_fn(on_change, [Value::bool(v)])
                                .await
                                .map_err(|err| err.to_string())?;
                            Ok(())
                        }
                        .boxed()
                    }
                }))
            });
        let default = def
            .get("default")
            .cloned()
            .map(bool::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let label = def
            .get("label")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let caption = def
            .get("caption")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;

        Ok(AsUiSwitch {
            on_change,
            default_value: default,
            label,
            caption,
        })
    }
}

impl AsUiSwitch {
    fn update(&mut self, updates: Self) {
        let AsUiSwitch {
            on_change,
            default_value,
            label,
            caption,
        } = updates;
        if on_change.is_some() {
            self.on_change = on_change;
        }
        if default_value.is_some() {
            self.default_value = default_value;
        }
        if label.is_some() {
            self.label = label;
        }
        if caption.is_some() {
            self.caption = caption;
        }
    }
}

#[derive(Clone)]
pub struct AsUiTextareaCallback(
    Arc<dyn Fn(String) -> BoxFuture<'static, Result<(), String>> + Sync + Send + 'static>,
);

impl AsUiTextareaCallback {
    pub async fn call(&self, value: String) -> Result<(), String> {
        self.0(value).await
    }
}

#[derive(Clone)]
pub struct AsUiTextarea {
    pub on_input: Option<AsUiTextareaCallback>,
    pub default_value: Option<String>,
    pub label: Option<String>,
    pub caption: Option<String>,
}

impl TryFrom<(Value, &Interpreter)> for AsUiTextarea {
    type Error = AiScriptError;

    fn try_from((value, interpreter): (Value, &Interpreter)) -> Result<Self, Self::Error> {
        let def = VObj::try_from(value)?;
        let def = def.read().map_err(AiScriptError::internal)?;

        let on_input = def
            .get("onInput")
            .cloned()
            .map(VFn::try_from)
            .map_or(Ok(None), |r| r.map(Some))?
            .map(|on_input| {
                AsUiTextareaCallback(Arc::new({
                    let interpreter = interpreter.clone();
                    move |v| {
                        let interpreter = interpreter.clone();
                        let on_input = on_input.clone();
                        async move {
                            interpreter
                                .exec_fn(on_input, [Value::str(v)])
                                .await
                                .map_err(|err| err.to_string())?;
                            Ok(())
                        }
                        .boxed()
                    }
                }))
            });
        let default = def
            .get("default")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let label = def
            .get("label")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let caption = def
            .get("caption")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;

        Ok(AsUiTextarea {
            on_input,
            default_value: default,
            label,
            caption,
        })
    }
}

impl AsUiTextarea {
    fn update(&mut self, updates: Self) {
        let AsUiTextarea {
            on_input,
            default_value,
            label,
            caption,
        } = updates;
        if on_input.is_some() {
            self.on_input = on_input;
        }
        if default_value.is_some() {
            self.default_value = default_value;
        }
        if label.is_some() {
            self.label = label;
        }
        if caption.is_some() {
            self.caption = caption;
        }
    }
}

#[derive(Clone)]
pub struct AsUiTextInputCallback(
    Arc<dyn Fn(String) -> BoxFuture<'static, Result<(), String>> + Sync + Send + 'static>,
);

impl AsUiTextInputCallback {
    pub async fn call(&self, value: String) -> Result<(), String> {
        self.0(value).await
    }
}

#[derive(Clone)]
pub struct AsUiTextInput {
    pub on_input: Option<AsUiTextInputCallback>,
    pub default_value: Option<String>,
    pub label: Option<String>,
    pub caption: Option<String>,
}

impl TryFrom<(Value, &Interpreter)> for AsUiTextInput {
    type Error = AiScriptError;

    fn try_from((value, interpreter): (Value, &Interpreter)) -> Result<Self, Self::Error> {
        let def = VObj::try_from(value)?;
        let def = def.read().map_err(AiScriptError::internal)?;

        let on_input = def
            .get("onInput")
            .cloned()
            .map(VFn::try_from)
            .map_or(Ok(None), |r| r.map(Some))?
            .map(|on_input| {
                AsUiTextInputCallback(Arc::new({
                    let interpreter = interpreter.clone();
                    move |v| {
                        let interpreter = interpreter.clone();
                        let on_input = on_input.clone();
                        async move {
                            interpreter
                                .exec_fn(on_input, [Value::str(v)])
                                .await
                                .map_err(|err| err.to_string())?;
                            Ok(())
                        }
                        .boxed()
                    }
                }))
            });
        let default = def
            .get("default")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let label = def
            .get("label")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let caption = def
            .get("caption")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;

        Ok(AsUiTextInput {
            on_input,
            default_value: default,
            label,
            caption,
        })
    }
}

impl AsUiTextInput {
    fn update(&mut self, updates: Self) {
        let AsUiTextInput {
            on_input,
            default_value,
            label,
            caption,
        } = updates;
        if on_input.is_some() {
            self.on_input = on_input;
        }
        if default_value.is_some() {
            self.default_value = default_value;
        }
        if label.is_some() {
            self.label = label;
        }
        if caption.is_some() {
            self.caption = caption;
        }
    }
}

#[derive(Clone)]
pub struct AsUiNumberCallback(
    Arc<dyn Fn(f64) -> BoxFuture<'static, Result<(), String>> + Sync + Send + 'static>,
);

impl AsUiNumberCallback {
    pub async fn call(&self, value: f64) -> Result<(), String> {
        self.0(value).await
    }
}

#[derive(Clone)]
pub struct AsUiNumberInput {
    pub on_input: Option<AsUiNumberCallback>,
    pub default_value: Option<f64>,
    pub label: Option<String>,
    pub caption: Option<String>,
}

impl TryFrom<(Value, &Interpreter)> for AsUiNumberInput {
    type Error = AiScriptError;

    fn try_from((value, interpreter): (Value, &Interpreter)) -> Result<Self, Self::Error> {
        let def = VObj::try_from(value)?;
        let def = def.read().map_err(AiScriptError::internal)?;

        let on_input = def
            .get("onInput")
            .cloned()
            .map(VFn::try_from)
            .map_or(Ok(None), |r| r.map(Some))?
            .map(|on_input| {
                AsUiNumberCallback(Arc::new({
                    let interpreter = interpreter.clone();
                    move |v| {
                        let interpreter = interpreter.clone();
                        let on_input = on_input.clone();
                        async move {
                            interpreter
                                .exec_fn(on_input, [Value::num(v)])
                                .await
                                .map_err(|err| err.to_string())?;
                            Ok(())
                        }
                        .boxed()
                    }
                }))
            });
        let default = def
            .get("default")
            .cloned()
            .map(f64::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let label = def
            .get("label")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let caption = def
            .get("caption")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;

        Ok(AsUiNumberInput {
            on_input,
            default_value: default,
            label,
            caption,
        })
    }
}

impl AsUiNumberInput {
    fn update(&mut self, updates: Self) {
        let AsUiNumberInput {
            on_input,
            default_value,
            label,
            caption,
        } = updates;
        if on_input.is_some() {
            self.on_input = on_input;
        }
        if default_value.is_some() {
            self.default_value = default_value;
        }
        if label.is_some() {
            self.label = label;
        }
        if caption.is_some() {
            self.caption = caption;
        }
    }
}

#[derive(Clone)]
pub struct AsUiSelectCallback(
    Arc<dyn Fn(String) -> BoxFuture<'static, Result<(), String>> + Sync + Send + 'static>,
);

impl AsUiSelectCallback {
    pub async fn call(&self, value: String) -> Result<(), String> {
        self.0(value).await
    }
}

#[derive(Clone)]
pub struct AsUiSelect {
    pub items: Option<Vec<(String, String)>>,
    pub on_change: Option<AsUiSelectCallback>,
    pub default_value: Option<String>,
    pub label: Option<String>,
    pub caption: Option<String>,
}

impl TryFrom<(Value, &Interpreter)> for AsUiSelect {
    type Error = AiScriptError;

    fn try_from((value, interpreter): (Value, &Interpreter)) -> Result<Self, Self::Error> {
        let def = VObj::try_from(value)?;
        let def = def.read().map_err(AiScriptError::internal)?;

        let items = def
            .get("items")
            .cloned()
            .map(<Vec<Value>>::try_from)
            .map_or(Ok(None), |r| r.map(Some))?
            .map(|items| {
                items
                    .into_iter()
                    .map(|item| {
                        let item = VObj::try_from(item)?;
                        let item = item.read().map_err(AiScriptError::internal)?;
                        let text = item.get("text");
                        let text = String::try_from(text.cloned().unwrap_or_default())?;
                        let value = item.get("value");
                        let value = value
                            .cloned()
                            .map(String::try_from)
                            .map_or(Ok(None), |r| r.map(Some))?;
                        Ok((text.clone(), value.unwrap_or(text)))
                    })
                    .collect::<Result<Vec<(String, String)>, AiScriptError>>()
            })
            .map_or(Ok(None), |r| r.map(Some))?;
        let on_change = def
            .get("onChange")
            .cloned()
            .map(VFn::try_from)
            .map_or(Ok(None), |r| r.map(Some))?
            .map(|on_change| {
                AsUiSelectCallback(Arc::new({
                    let interpreter = interpreter.clone();
                    move |v| {
                        let interpreter = interpreter.clone();
                        let on_change = on_change.clone();
                        async move {
                            interpreter
                                .exec_fn(on_change, [Value::str(v)])
                                .await
                                .map_err(|err| err.to_string())?;
                            Ok(())
                        }
                        .boxed()
                    }
                }))
            });
        let default = def
            .get("default")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let label = def
            .get("label")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let caption = def
            .get("caption")
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;

        Ok(AsUiSelect {
            items,
            on_change,
            default_value: default,
            label,
            caption,
        })
    }
}

impl AsUiSelect {
    fn update(&mut self, updates: Self) {
        let AsUiSelect {
            items,
            on_change,
            default_value,
            label,
            caption,
        } = updates;
        if items.is_some() {
            self.items = items;
        }
        if on_change.is_some() {
            self.on_change = on_change;
        }
        if default_value.is_some() {
            self.default_value = default_value;
        }
        if label.is_some() {
            self.label = label;
        }
        if caption.is_some() {
            self.caption = caption;
        }
    }
}

#[derive(Clone)]
pub struct AsUiFolder {
    pub children: Option<Vec<String>>,
    pub title: Option<String>,
    pub opened: Option<bool>,
}

impl TryFrom<Value> for AsUiFolder {
    type Error = AiScriptError;

    fn try_from(value: Value) -> Result<Self, Self::Error> {
        let def = VObj::try_from(value)?;
        let def = def.read().map_err(AiScriptError::internal)?;

        let children = def.get("children");
        let children = children
            .cloned()
            .map(<Vec<Value>>::try_from)
            .map_or(Ok(None), |r| r.map(Some))?
            .map(|children| {
                let mut ids = Vec::new();
                for value in children {
                    let value = VObj::try_from(value)?;
                    let value = value.read().map_err(AiScriptError::internal)?;
                    if let Some(Value { value, .. }) = value.get("id")
                        && let V::Str(id) = value.deref()
                    {
                        ids.push(id.clone());
                    }
                }
                Ok::<Vec<String>, AiScriptError>(ids)
            })
            .map_or(Ok(None), |r| r.map(Some))?;
        let title = def.get("title");
        let title = title
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let opened = def.get("opened");
        let opened = opened
            .cloned()
            .map(bool::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;

        Ok(AsUiFolder {
            children,
            title,
            opened,
        })
    }
}

impl AsUiFolder {
    fn update(&mut self, updates: Self) {
        let AsUiFolder {
            children,
            title,
            opened,
        } = updates;
        if children.is_some() {
            self.children = children;
        }
        if title.is_some() {
            self.title = title;
        }
        if opened.is_some() {
            self.opened = opened;
        }
    }
}

#[derive(Clone)]
pub struct PostFormPropsForAsUi {
    pub text: String,
    pub cw: Option<String>,
    pub visibility: Option<String>,
    pub local_only: Option<bool>,
}

impl TryFrom<Value> for PostFormPropsForAsUi {
    type Error = AiScriptError;

    fn try_from(value: Value) -> Result<Self, Self::Error> {
        let form = VObj::try_from(value)?;
        let form = form.read().map_err(AiScriptError::internal)?;

        let text = form.get("text");
        let text = String::try_from(text.cloned().unwrap_or_default())?;
        let cw = form.get("cw");
        let cw = cw
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let visibility = form.get("visibility");
        let visibility = visibility
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let local_only = form.get("local_only");
        let local_only = local_only
            .cloned()
            .map(bool::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;

        Ok(PostFormPropsForAsUi {
            text,
            cw,
            visibility,
            local_only,
        })
    }
}

#[derive(Clone)]
pub struct AsUiPostFormButton {
    pub text: Option<String>,
    pub primary: Option<bool>,
    pub rounded: Option<bool>,
    pub form: Option<PostFormPropsForAsUi>,
}

impl TryFrom<Value> for AsUiPostFormButton {
    type Error = AiScriptError;

    fn try_from(value: Value) -> Result<Self, Self::Error> {
        let def = VObj::try_from(value)?;
        let def = def.read().map_err(AiScriptError::internal)?;

        let text = def.get("text");
        let text = text
            .cloned()
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let primary = def.get("primary");
        let primary = primary
            .cloned()
            .map(bool::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let rounded = def.get("rounded");
        let rounded = rounded
            .cloned()
            .map(bool::try_from)
            .map_or(Ok(None), |r| r.map(Some))?;
        let form = def.get("form");
        let form = form
            .map(|form| PostFormPropsForAsUi::try_from(form.clone()))
            .map_or(Ok(None), |r| r.map(Some))?;

        Ok(AsUiPostFormButton {
            text,
            primary,
            rounded,
            form,
        })
    }
}

impl AsUiPostFormButton {
    fn update(&mut self, updates: Self) {
        let AsUiPostFormButton {
            text,
            primary,
            rounded,
            form,
        } = updates;
        if text.is_some() {
            self.text = text;
        }
        if primary.is_some() {
            self.primary = primary;
        }
        if rounded.is_some() {
            self.rounded = rounded;
        }
        if form.is_some() {
            self.form = form;
        }
    }
}

#[derive(Clone)]
pub struct AsUiPostForm {
    pub form: Option<PostFormPropsForAsUi>,
}

impl TryFrom<Value> for AsUiPostForm {
    type Error = AiScriptError;

    fn try_from(value: Value) -> Result<Self, Self::Error> {
        let def = VObj::try_from(value)?;
        let def = def.read().map_err(AiScriptError::internal)?;

        let form = def.get("form");
        let form = form
            .map(|form| PostFormPropsForAsUi::try_from(form.clone()))
            .map_or(Ok(None), |r| r.map(Some))?;

        Ok(AsUiPostForm { form })
    }
}

impl AsUiPostForm {
    fn update(&mut self, updates: Self) {
        let AsUiPostForm { form } = updates;
        if form.is_some() {
            self.form = form;
        }
    }
}

#[derive(Clone)]
pub enum AsUiComponent {
    Root(AsUiRoot),
    Container(AsUiContainer),
    Text(AsUiText),
    Mfm(AsUiMfm),
    Button(AsUiButton),
    Buttons(AsUiButtons),
    ToggleSwitch(AsUiSwitch),
    Textarea(AsUiTextarea),
    TextInput(AsUiTextInput),
    NumberInput(AsUiNumberInput),
    Select(AsUiSelect),
    Folder(AsUiFolder),
    PostFormButton(AsUiPostFormButton),
    PostForm(AsUiPostForm),
}

impl AsUiComponent {
    fn update(&mut self, updates: AsUiComponent) {
        match (self, updates) {
            (AsUiComponent::Root(component), AsUiComponent::Root(updates)) => {
                component.update(updates)
            }
            (AsUiComponent::Container(component), AsUiComponent::Container(updates)) => {
                component.update(updates)
            }
            (AsUiComponent::Text(component), AsUiComponent::Text(updates)) => {
                component.update(updates)
            }
            (AsUiComponent::Mfm(component), AsUiComponent::Mfm(updates)) => {
                component.update(updates)
            }
            (AsUiComponent::Button(component), AsUiComponent::Button(updates)) => {
                component.update(updates)
            }
            (AsUiComponent::Buttons(component), AsUiComponent::Buttons(updates)) => {
                component.update(updates)
            }
            (AsUiComponent::ToggleSwitch(component), AsUiComponent::ToggleSwitch(updates)) => {
                component.update(updates)
            }
            (AsUiComponent::Textarea(component), AsUiComponent::Textarea(updates)) => {
                component.update(updates)
            }
            (AsUiComponent::TextInput(component), AsUiComponent::TextInput(updates)) => {
                component.update(updates)
            }
            (AsUiComponent::NumberInput(component), AsUiComponent::NumberInput(updates)) => {
                component.update(updates)
            }
            (AsUiComponent::Select(component), AsUiComponent::Select(updates)) => {
                component.update(updates)
            }
            (AsUiComponent::Folder(component), AsUiComponent::Folder(updates)) => {
                component.update(updates)
            }
            (AsUiComponent::PostFormButton(component), AsUiComponent::PostFormButton(updates)) => {
                component.update(updates)
            }
            (AsUiComponent::PostForm(component), AsUiComponent::PostForm(updates)) => {
                component.update(updates)
            }
            _ => (),
        }
    }
}

#[derive(Clone)]
pub struct AsUiLib {
    on_update: Arc<dyn Fn(String, AsUiComponent) -> DartFnFuture<()> + Sync + Send + 'static>,
    components: Arc<Mutex<HashMap<String, AsUiComponent>>>,
    instances: Arc<Mutex<HashMap<String, Value>>>,
}

impl AsUiLib {
    #[frb(sync)]
    pub fn new(
        on_update: impl Fn(String, AsUiComponent) -> DartFnFuture<()> + Sync + Send + 'static,
    ) -> Self {
        AsUiLib {
            on_update: Arc::new(on_update),
            components: Arc::new(Mutex::new(HashMap::new())),
            instances: Arc::new(Mutex::new(HashMap::new())),
        }
    }

    fn create_component_instance(
        &self,
        def: Value,
        id: Option<Value>,
        get_options: impl Fn(Value) -> Result<AsUiComponent, AiScriptError>
        + Sync
        + Send
        + Clone
        + 'static,
    ) -> Result<Value, AiScriptError> {
        let id = id
            .map(String::try_from)
            .map_or(Ok(None), |r| r.map(Some))?
            .unwrap_or_else(|| Uuid::new_v4().to_string());
        let component = get_options(def)?;
        self.components
            .lock()
            .map_err(AiScriptError::internal)?
            .insert(id.clone(), component.clone());
        let instance = Value::obj([
            ("id", Value::str(&id)),
            (
                "update",
                Value::fn_native({
                    let id = id.clone();
                    let components = self.components.clone();
                    let on_update = self.on_update.clone();
                    move |args, _| {
                        let def = args.first().cloned().unwrap_or_else(Value::null);
                        let result = get_options(def).and_then(|updates| {
                            let mut components =
                                components.lock().map_err(AiScriptError::internal)?;
                            let component = match components.get_mut(&id) {
                                Some(component) => {
                                    component.update(updates);
                                    component.clone()
                                }
                                None => {
                                    components.insert(id.clone(), updates.clone());
                                    updates
                                }
                            };
                            tokio::spawn(on_update(id.clone(), component));
                            Ok(Value::null())
                        });
                        async { result }.boxed()
                    }
                }),
            ),
        ]);
        self.instances
            .lock()
            .map_err(AiScriptError::internal)?
            .insert(id.clone(), instance.clone());
        tokio::spawn((self.on_update)(id, component));
        Ok(instance)
    }

    pub(crate) fn register(&self, consts: &mut HashMap<String, Value>) {
        let root_id = "___root___";

        consts.insert(
            "Ui:root".to_string(),
            self.create_component_instance(
                Value::obj([("children", Value::arr([]))]),
                Some(Value::str(root_id)),
                |value| Ok(AsUiComponent::Root(AsUiRoot::try_from(value)?)),
            )
            .unwrap_or_default(),
        );

        consts.insert(
            "Ui:patch".to_string(),
            Value::fn_native(|args, _| {
                let mut args = args.into_iter();
                let result = String::try_from(args.next().unwrap_or_default()).and_then(|_| {
                    VArr::try_from(args.next().unwrap_or_default())?;
                    // Not implemented
                    Ok(Value::null())
                });
                async { result }.boxed()
            }),
        );

        consts.insert(
            "Ui:get".to_string(),
            Value::fn_native({
                let instances = self.instances.clone();
                move |args, _| {
                    let mut args = args.into_iter();
                    let result = String::try_from(args.next().unwrap_or_default()).and_then(|id| {
                        let instance = instances
                            .lock()
                            .map_err(AiScriptError::internal)?
                            .get(&id)
                            .cloned();
                        Ok(instance.unwrap_or_default())
                    });
                    async { result }.boxed()
                }
            }),
        );

        consts.insert(
            "Ui:render".to_string(),
            Value::fn_native({
                let components = self.components.clone();
                let on_update = self.on_update.clone();
                move |args, _| {
                    let mut args = args.into_iter();
                    let result = <Vec<Value>>::try_from(args.next().unwrap_or_default()).and_then(
                        |children| {
                            let mut ids = Vec::new();
                            for value in children {
                                let value = VObj::try_from(value)?;
                                let value = value.read().map_err(AiScriptError::internal)?;
                                if let Some(Value { value, .. }) = value.get("id")
                                    && let V::Str(id) = value.deref()
                                {
                                    ids.push(id.clone());
                                }
                            }
                            let component = AsUiComponent::Root(AsUiRoot { children: ids });
                            components
                                .lock()
                                .map_err(AiScriptError::internal)?
                                .insert(root_id.to_string(), component.clone());
                            tokio::spawn(on_update(root_id.to_string(), component));
                            Ok(Value::null())
                        },
                    );
                    async { result }.boxed()
                }
            }),
        );

        consts.insert(
            "Ui:C:container".to_string(),
            Value::fn_native({
                let ui = self.clone();
                move |args, _| {
                    let mut args = args.into_iter();
                    let def = args.next().unwrap_or_default();
                    let id = args.next();
                    let result = ui.create_component_instance(def, id, |value| {
                        Ok(AsUiComponent::Container(AsUiContainer::try_from(value)?))
                    });
                    async { result }.boxed()
                }
            }),
        );

        consts.insert(
            "Ui:C:text".to_string(),
            Value::fn_native({
                let ui = self.clone();
                move |args, _| {
                    let mut args = args.into_iter();
                    let def = args.next().unwrap_or_default();
                    let id = args.next();
                    let result = ui.create_component_instance(def, id, |value| {
                        Ok(AsUiComponent::Text(AsUiText::try_from(value)?))
                    });
                    async { result }.boxed()
                }
            }),
        );

        consts.insert(
            "Ui:C:mfm".to_string(),
            Value::fn_native({
                let ui = self.clone();
                move |args, interpreter| {
                    let mut args = args.into_iter();
                    let interpreter = interpreter.clone();
                    let def = args.next().unwrap_or_default();
                    let id = args.next();
                    let result = ui.create_component_instance(def, id, move |value| {
                        Ok(AsUiComponent::Mfm(AsUiMfm::try_from((
                            value,
                            &interpreter,
                        ))?))
                    });
                    async { result }.boxed()
                }
            }),
        );

        consts.insert(
            "Ui:C:textarea".to_string(),
            Value::fn_native({
                let ui = self.clone();
                move |args, interpreter| {
                    let mut args = args.into_iter();
                    let interpreter = interpreter.clone();
                    let def = args.next().unwrap_or_default();
                    let id = args.next();
                    let result = ui.create_component_instance(def, id, move |value| {
                        Ok(AsUiComponent::Textarea(AsUiTextarea::try_from((
                            value,
                            &interpreter,
                        ))?))
                    });
                    async { result }.boxed()
                }
            }),
        );

        consts.insert(
            "Ui:C:textInput".to_string(),
            Value::fn_native({
                let ui = self.clone();
                move |args, interpreter| {
                    let mut args = args.into_iter();
                    let interpreter = interpreter.clone();
                    let def = args.next().unwrap_or_default();
                    let id = args.next();
                    let result = ui.create_component_instance(def, id, move |value| {
                        Ok(AsUiComponent::TextInput(AsUiTextInput::try_from((
                            value,
                            &interpreter,
                        ))?))
                    });
                    async { result }.boxed()
                }
            }),
        );

        consts.insert(
            "Ui:C:numberInput".to_string(),
            Value::fn_native({
                let ui = self.clone();
                move |args, interpreter| {
                    let mut args = args.into_iter();
                    let interpreter = interpreter.clone();
                    let def = args.next().unwrap_or_default();
                    let id = args.next();
                    let result = ui.create_component_instance(def, id, move |value| {
                        Ok(AsUiComponent::NumberInput(AsUiNumberInput::try_from((
                            value,
                            &interpreter,
                        ))?))
                    });
                    async { result }.boxed()
                }
            }),
        );

        consts.insert(
            "Ui:C:button".to_string(),
            Value::fn_native({
                let ui = self.clone();
                move |args, interpreter| {
                    let mut args = args.into_iter();
                    let interpreter = interpreter.clone();
                    let def = args.next().unwrap_or_default();
                    let id = args.next();
                    let result = ui.create_component_instance(def, id, move |value| {
                        Ok(AsUiComponent::Button(AsUiButton::try_from((
                            value,
                            &interpreter,
                        ))?))
                    });
                    async { result }.boxed()
                }
            }),
        );

        consts.insert(
            "Ui:C:buttons".to_string(),
            Value::fn_native({
                let ui = self.clone();
                move |args, interpreter| {
                    let mut args = args.into_iter();
                    let interpreter = interpreter.clone();
                    let def = args.next().unwrap_or_default();
                    let id = args.next();
                    let result = ui.create_component_instance(def, id, move |value| {
                        Ok(AsUiComponent::Buttons(AsUiButtons::try_from((
                            value,
                            &interpreter,
                        ))?))
                    });
                    async { result }.boxed()
                }
            }),
        );

        consts.insert(
            "Ui:C:switch".to_string(),
            Value::fn_native({
                let ui = self.clone();
                move |args, interpreter| {
                    let mut args = args.into_iter();
                    let interpreter = interpreter.clone();
                    let def = args.next().unwrap_or_default();
                    let id = args.next();
                    let result = ui.create_component_instance(def, id, move |value| {
                        Ok(AsUiComponent::ToggleSwitch(AsUiSwitch::try_from((
                            value,
                            &interpreter,
                        ))?))
                    });
                    async { result }.boxed()
                }
            }),
        );

        consts.insert(
            "Ui:C:select".to_string(),
            Value::fn_native({
                let ui = self.clone();
                move |args, interpreter| {
                    let mut args = args.into_iter();
                    let interpreter = interpreter.clone();
                    let def = args.next().unwrap_or_default();
                    let id = args.next();
                    let result = ui.create_component_instance(def, id, move |value| {
                        Ok(AsUiComponent::Select(AsUiSelect::try_from((
                            value,
                            &interpreter,
                        ))?))
                    });
                    async { result }.boxed()
                }
            }),
        );

        consts.insert(
            "Ui:C:folder".to_string(),
            Value::fn_native({
                let ui = self.clone();
                move |args, _| {
                    let mut args = args.into_iter();
                    let def = args.next().unwrap_or_default();
                    let id = args.next();
                    let result = ui.create_component_instance(def, id, |value| {
                        Ok(AsUiComponent::Folder(AsUiFolder::try_from(value)?))
                    });
                    async { result }.boxed()
                }
            }),
        );

        consts.insert(
            "Ui:C:postFormButton".to_string(),
            Value::fn_native({
                let ui = self.clone();
                move |args, _| {
                    let mut args = args.into_iter();
                    let def = args.next().unwrap_or_default();
                    let id = args.next();
                    let result = ui.create_component_instance(def, id, |value| {
                        Ok(AsUiComponent::PostFormButton(AsUiPostFormButton::try_from(
                            value,
                        )?))
                    });
                    async { result }.boxed()
                }
            }),
        );

        consts.insert(
            "Ui:C:postForm".to_string(),
            Value::fn_native({
                let ui = self.clone();
                move |args, _| {
                    let mut args = args.into_iter();
                    let def = args.next().unwrap_or_default();
                    let id = args.next();
                    let result = ui.create_component_instance(def, id, |value| {
                        Ok(AsUiComponent::PostForm(AsUiPostForm::try_from(value)?))
                    });
                    async { result }.boxed()
                }
            }),
        );
    }
}
