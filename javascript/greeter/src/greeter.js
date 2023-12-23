const readlineSync = require('readline-sync');

class InputHandler {
  static getUserName() {
    let userinput = readlineSync.question('Enter your name: ');

    let name = userinput.trim();

    if (name === '') {
      name = 'Stranger';
    }

    return name;
  }
}

class Greeter {
  constructor(name) {
    this.username = name;
  }

  greet() {
    console.log('Hello, ' + this.username + '!');
    console.log('Greetings from JavaScript!');
  }
}

function main() {
  let name = InputHandler.getUserName();
  let greeter = new Greeter(name);

  greeter.greet();
}

if (require.main === module) {
  main();
} else {
  module.exports = { main };
}
