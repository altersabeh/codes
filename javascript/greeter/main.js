const prompt = require("prompt-sync")();

class InputHandler {
  static getUserName() {
    let userinput = prompt("Enter your name: ");

    let name = userinput.trim();

    return name;
  }
}

class Greeter {
  constructor(name) {
    this.username = name;
  }

  greet() {
    console.log("Hello, " + this.username + "!");
    console.log("Greetings from JavaScript!");
  }
}

function main() {
  let name = InputHandler.getUserName();
  let greeter = new Greeter(name);

  greeter.greet();
}

if (require.main === module) {
  main();
}
