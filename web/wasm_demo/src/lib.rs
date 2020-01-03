use wasm_bindgen::prelude::*;

#[wasm_bindgen]
pub fn get_string() -> String {
    String::from("This is a Rust String!")
}
