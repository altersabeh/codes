package greeter

import scala.io.StdIn.readLine

object InputHandler:
  def getUserName(): String =
    print("Enter your name: ")
    val userInput = readLine()

    val name = userInput.trim

    if name.isEmpty then "Stranger" else name

class Greet(name: String):
  def greet(): Unit =
    println(s"Hello, $name!")
    println("Greetings from Scala!")

@main def Greeter(): Unit =
  val name = InputHandler.getUserName()
  val greeter = new Greet(name)

  greeter.greet()
