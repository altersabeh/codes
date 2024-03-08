package message;

public class Message {
  private static String globalMessage = "This message is from global variable !";
  private static void printMessage() {
    System.out.println("This message is from private method !");
  }
  public static void main(String[] args) {
    String localMessage = "This message is from local variable !";
    System.out.println(localMessage);
    System.out.println(globalMessage);
    ExternalMessage.main(args);
    printMessage();
    System.out.println("This message is from standard output !");
    System.err.println("This message is from error output !");
  }
}
