use std::io::{self, Write};

pub struct Greeter {
  name: String,
}

impl Greeter {
  pub fn new() -> Greeter {
    let name = Greeter::prompt_name();
    Greeter { name }
  }

  fn prompt_name() -> String {
    let mut name = String::new();
    print!("Enter your name: ");
    io::stdout().flush().unwrap();
    io::stdin().read_line(&mut name).unwrap();
    name.trim().to_string()
  }

  pub fn greet(&self) {
    println!("Hello, {}!", self.name);
    println!("Greetings from Rust!");
  }
}

fn main() {
  let greeter = Greeter::new();
  greeter.greet();
}
