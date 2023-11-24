import 'dart:io';

class InputHandler {
  static String? getUserName() {
    stdout.write("Enter your name: ");
    String? userInput = stdin.readLineSync();

    String? name = userInput?.trim();

    if (name == null || name.isEmpty) {
      name = "Stranger";
    }

    return name;
  }
}

class Greeter {
  String username;

  Greeter(this.username);

  void greet() {
    print("Hello, $username!");
    print("Greetings from Dart!");
  }
}

void main() {
  String? name = InputHandler.getUserName();
  Greeter greeter = Greeter(name!);

  greeter.greet();
}
