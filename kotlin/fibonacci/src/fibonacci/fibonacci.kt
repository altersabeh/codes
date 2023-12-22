/**
 * Fibonacci Series Calculator
 *
 * The Fibonacci Series Calculator is a Kotlin program that calculates
 * and prints the Fibonacci Series up to the nth term with arbitrary
 * precision. It includes features such as error handling for input
 * validation, handling special cases where numbers don't end in "th"
 * (e.g. 1, 2, 3), displaying the sum of the series, and providing the
 * current date and time.
 *
 * License: This program is in the public domain.
 */

package fibonacci;

import java.math.BigInteger
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import kotlin.system.exitProcess
import sun.misc.Signal
import sun.misc.SignalHandler

fun main() {
  println("============Fibonacci Series Calculator============")
  println("This Program was Written Using: Kotlin")

  signalHandler()
  dateAndTime()
  getUserInput()

  println("===================================================")
}

// Function to get user input
fun getUserInput() {
  while (true) {
    print("Enter the value of n (an integer): ")
    val input = readLine()

    if (input == null) {
      eofHandler()
    }

    val trimmedInput = input?.trim()

    when {
      trimmedInput.isNullOrEmpty() -> {
        println("Please enter something...")
        continue
      }
      trimmedInput == "exit" -> {
        println("Exiting the program...")
        break
      }
    }

    val n = validateInput(trimmedInput ?: "")

    if (n > 0) {
      fibonacciSeries(n)
      break
    } else {
      println("Please enter a valid positive integer.")
    }
  }
}

// Calculates and prints the Fibonacci Series up to the nth term.
fun fibonacciSeries(n: Int) {
  var a = BigInteger.ZERO
  var b = BigInteger.ONE
  var temp: BigInteger
  var sum = BigInteger.ZERO

  println("Fibonacci Series up to the $n${getSuffix(n)} term:")

  val series = mutableListOf<BigInteger>()

  for (i in 0..n) {
    if (!stopOperation) {
      if (n <= 5000) {
        series.add(a)
      } else {
        //Print the series without using array
        print("$a")
        if (i < n) {
          print(", ")
        }
      }

      temp = a
      a = b
      b += temp
      sum += temp // Calculate the sum
    } else {
      break
    }
  }

  if (stopOperation) {
    exitProcess(0)
  }

  if (n <= 5000) {
    print(series.joinToString(", "))
  }

  println("\n")
  println("Sum of the Fibonacci Series: $sum")
}

// Handle special cases where numbers don't end in "th"
fun getSuffix(n: Int): String {
  return when {
    n % 10 == 1 && n % 100 != 11 -> "st"
    n % 10 == 2 && n % 100 != 12 -> "nd"
    n % 10 == 3 && n % 100 != 13 -> "rd"
    else -> "th"
  }
}

// Display the current date and time
fun dateAndTime() {
  val currentDate = LocalDateTime.now()

  val layout = "MMMM dd, yyyy - HH:mm:ss"
  val formatter = DateTimeFormatter.ofPattern(layout)
  val formattedDate = currentDate.format(formatter)

  println("Date and Time: $formattedDate")
}

// Functions to handle user input and errors
fun validateInput(input: String): Int {
  return try {
    val n = input.toInt()
    n
  } catch (e: NumberFormatException) {
    -1
  }
}

fun eofHandler() {
  println()
  println("End of File encountered.. Stopping...")
  println("===================================================")
  exitProcess(0)
}

fun interruptHandler() {
  stopOperation = true
  println()
  println("Interrupt received.. Exiting...")
  println("===================================================")
  exitProcess(0)
}

var stopOperation = false

fun signalHandler() {
  val sigintHandler = object : SignalHandler {
    override fun handle(signal: Signal) {
      interruptHandler()
    }
  }
  Signal.handle(Signal("INT"), sigintHandler)
}
