use std::io::{self, Write};

pub struct InputHandler;

impl InputHandler {
  fn get_user_name() -> String {
    let mut userinput = String::new();

    print!("Enter your name: ");
    io::stdout().flush().unwrap();
    io::stdin().read_line(&mut userinput).unwrap();

    let name = userinput.trim().to_string();

    return name;
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
