namespace Greeter;

class InputHandler {
  public static string? GetUserName() {
    Console.Write("Enter your name: ");
    string? userinput = Console.ReadLine();

    string? name = userinput?.Trim();

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
  static void Main(string[] args) {
    string? name = InputHandler.GetUserName();
    Greeter greeter = new Greeter(name);

    greeter.Greet();
  }
}
