/**
 * Fibonacci Series Calculator
 *
 * The Fibonacci Series Calculator is a Scala program that calculates
 * and prints the Fibonacci Series up to the nth term with arbitrary
 * precision. It includes features such as error handling for input
 * validation, handling special cases where numbers don't end in "th"
 * (e.g. 1, 2, 3), displaying the sum of the series, and providing the
 * current date and time.
 *
 * License: This program is in the public domain.
 */

package fibonacci

import java.math.BigDecimal
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

import scala.collection.mutable.ArrayBuffer
import scala.io.StdIn.readLine
import scala.util.control.Breaks.{break, breakable}

import sun.misc.{Signal, SignalHandler}

object Fibonacci extends App {
  def main(): Unit = {
    println("============Fibonacci Series Calculator============")
    println("This Program was Written Using: Scala")

    signalHandler()
    dateAndTime()
    getUserInput()

    println("===================================================")
  }

  // Function to get user input
  def getUserInput(): Unit = {
    breakable {
      while (true) {
        print("Enter the value of n (an integer): ")
        val input = readLine()
        if (input == null) {
          eofHandler()
        }

        val trimmedInput = input.trim()

        if (trimmedInput.isEmpty) {
          println("Please enter something...")
          getUserInput()
          break
        } else if (trimmedInput.equals("exit")) {
          println("Exiting the program...")
          break
        }

        val n = validateInput(trimmedInput)

        if (n >= 0) {
          fibonacciSeries(n)
          break
        } else {
          println("Please enter a valid positive integer.")
        }
      }
    }
  }

  // Calculates and prints the Fibonacci Series up to the nth term.
  def fibonacciSeries(n: Int): Unit = {
    var a = BigDecimal.ZERO
    var b = BigDecimal.ONE
    var temp: BigDecimal = null
    var sum = BigDecimal.ZERO

    println(s"Fibonacci Series up to the $n${getSuffix(n)} term: ")

    val series = new ArrayBuffer[String]()

      for (i <- 0 to n) {
        if (stopOperation) {
          break
        }

        if (n <= 5000) {
          series += a.toString
        } else {
          print(a.toString)
          if (i < n) {
            print(", ")
          }
        }

        temp = a
        a = b
        b = b.add(temp)
        sum = sum.add(temp) // Calculate the sum
      }

    if (series.nonEmpty) print(series.mkString(", "))

    println("\n")
    println("Sum of the Fibonacci Series: " + sum)
  }

  // Handle special cases where numbers don't end in "th"
  def getSuffix(n: Int): String = {
    if (n % 10 == 1 && n % 100 != 11) {
      "st"
    } else if (n % 10 == 2 && n % 100 != 12) {
      "nd"
    } else if (n % 10 == 3 && n % 100 != 13) {
      "rd"
    } else {
      "th"
    }
  }

  // Display the current date and time
  def dateAndTime(): Unit = {
    val currentDate = LocalDateTime.now()

    val layout = "MMMM dd, yyyy - HH:mm:ss"
    val formatter = DateTimeFormatter.ofPattern(layout)
    val formattedDate = currentDate.format(formatter)

    println("Date and Time: " + formattedDate)
  }

  // Functions to handle user input and errors
  def validateInput(input: String): Int = {
    try {
      val n = input.toInt
      if (n > 0) {
        n
      } else {
        -1
      }
    } catch {
      case _: NumberFormatException => -1
    }
  }

  def eofHandler(): Unit = {
    println("")
    println("End of File encountered.. Stopping...")
    println("===================================================")
    System.exit(0)
  }

  def interruptHandler(): Unit = {
    var stopOperation = true
    println("")
    println("Interrupt signal received.. Stopping...")
    println("===================================================")
    System.exit(0)
  }

  var stopOperation = false

  def signalHandler(): Unit = {
    given handler: SignalHandler = (signal: Signal) => interruptHandler()
    Signal.handle(new Signal("INT"), handler)
  }

  main()
}
