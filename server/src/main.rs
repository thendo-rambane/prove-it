use rocket::{ fs::NamedFile, get, launch, routes };
use std::{process::Command, fs::canonicalize};

#[get("/")]
async fn index() -> &'static str {
  let test_program = r#"
    function add(arr: number[]): number {
      arr.reduce((acc, curr) => acc+ curr, 0)
    }
  "#
  let path = if let path = canonicalize("/workspace/prove-it/test-programs/ts-sums/src/index.ts") {
    path
  } else {
    "test-programs/ts-sums/src/index.ts"
  }
  NamedFile::open(path).await
}

#[launch]
fn rocket() -> _ {
  rocket::build().mount("/", routes![index])
}

