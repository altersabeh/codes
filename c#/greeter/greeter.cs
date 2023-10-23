using System;

class InputHandler {
  public static string? GetUserName() {
    Console.Write("Enter your name: ");
    string? name = Console.ReadLine();

    name = name?.Trim();

    return name;
  }
}

class Greeter {
  private string? username;

  public Greeter(string? name) {
    this.username = name;
  }

  public void Greet() {
    Console.WriteLine("Hello, " + username + "!");
    Console.WriteLine("Greetings from C#!");
  }
}

class Program {
  static void Main() {
    string? name = InputHandler.GetUserName();
    Greeter greeter = new Greeter(name);

    greeter.Greet();
  }
}
