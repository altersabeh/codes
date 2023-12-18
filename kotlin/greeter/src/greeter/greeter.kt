package greeter

import java.util.Scanner

object InputHandler {
  fun getUserName(): String {
    val scanner = Scanner(System.`in`)
    print("Enter your name: ")
    var name = scanner.nextLine().trim()

    if (name.isEmpty()) {
      name = "Stranger"
    }

    return name
  }
}

class Greeter(private val username: String) {
  fun greet() {
    println("Hello, $username!")
    println("Greetings from Kotlin!")
  }
}

fun main() {
  val name = InputHandler.getUserName()
  val greeter = Greeter(name)

  greeter.greet()
}
