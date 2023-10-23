use std::io::{self, Write};

pub struct InputHandler;

impl InputHandler {
  fn get_user_name() -> String {
    let mut name = String::new();
    print!("Enter your name: ");
    io::stdout().flush().unwrap();
    io::stdin().read_line(&mut name).unwrap();
    name.trim().to_string()
  }
}

pub struct Greeter {
  username: String,
}

impl Greeter {
  pub fn new(name: String) -> Greeter {
    Greeter { username: name }
  }

  pub fn greet(&self) {
    println!("Hello, {}!", self.username);
    println!("Greetings from Rust!");
  }
}

fn main() {
  let name = InputHandler::get_user_name();
  let greeter = Greeter::new(name);

  greeter.greet();
}
