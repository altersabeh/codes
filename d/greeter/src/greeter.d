import std.stdio;
import std.string;

class InputHandler {
  static string getUserName() {
    write("Enter your name: ");
    string userinput = readln();

    string name = strip(userinput);

    return name;
  }
}

class Greeter {
  string username;

  this(string name) {
    username = name;
  }

  void greet() {
    writefln("Hello, %s !", username);
    writeln("Greetings from D!");
  }
}

void main() {
  string name = InputHandler.getUserName();
  Greeter greeter = new Greeter(name);

  greeter.greet();
}
