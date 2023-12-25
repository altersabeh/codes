package greeter

class InputHandler {
  static String getUserName() {
    print 'Enter your name: '
    def scanner = new Scanner(System.in)
    String userinput = scanner.nextLine()

    String name = userinput.trim()

    name = (name.isEmpty()) ? 'Stranger' : name

    scanner.close()

    name
  }
}

class Greeter {
  String username

  Greeter(String name) {
    this.username = name
  }

  void greet() {
    println "Hello, $username!"
    println 'Greetings from Groovy!'
  }

  static main(args) {
    String name = InputHandler.getUserName()
    def greeter = new Greeter(name)

    greeter.greet()
  }
}

Greeter.main(args)
