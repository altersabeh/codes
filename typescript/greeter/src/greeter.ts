import * as readlineSync from 'readline-sync';

class InputHandler {
  static getUserName(): string {
    let userinput: string = readlineSync.question("Enter your name: ");

    let name: string = userinput.trim();

    if (name === "") {
      name = "Stranger";
    }

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

export function main(): void {
  let name: string = InputHandler.getUserName();
  let greeter: Greeter = new Greeter(name);

  greeter.greet();
}

if (require.main === module) {
  main();
}
