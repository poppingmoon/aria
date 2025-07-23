use std::collections::HashMap;

use aiscript::v0::values::Value;

pub struct AsPlayLib {
    pub this_id: String,
    pub this_url: String,
}

impl AsPlayLib {
    pub(crate) fn register(self, consts: &mut HashMap<String, Value>) {
        consts.insert("THIS_ID".to_string(), Value::str(self.this_id));

        consts.insert("THIS_URL".to_string(), Value::str(self.this_url));
    }
}
