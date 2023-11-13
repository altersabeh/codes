import java.util.Scanner;

public class Greeter {
  public static class InputHandler {
    public static String getUserName() {
      Scanner scanner = new Scanner(System.in);
      System.out.print("Enter your name: ");
      String userinput = scanner.nextLine();

      String name = userinput.trim();

      return name;
    }
  }

  private String username;

  public Greeter(String name) {
    this.username = name;
  }

  public void greet() {
    System.out.println("Hello, " + this.username + "!");
    System.out.println("Greetings from Java!");
  }
  public static void main(String[] args) {
    String name = InputHandler.getUserName();
    Greeter greeter = new Greeter(name);

    greeter.greet();
  }
}
