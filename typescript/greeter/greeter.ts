import * as prompt from "prompt-sync";

class InputHandler {
  static getUserName(): string {
    let userinput: string = prompt()("Enter your name: ");

    let name: string = userinput.trim();

    return name;
  }
}

class Greeter {
  username: string;

  constructor(name: string) {
    this.username = name;
  }

  greet(): void {
    console.log("Hello, " + this.username + "!");
    console.log("Greetings from JavaScript!");
  }
}

function main(): void {
  let name: string = InputHandler.getUserName();
  let greeter: Greeter = new Greeter(name);

  greeter.greet();
}

if (require.main === module) {
  main();
}
