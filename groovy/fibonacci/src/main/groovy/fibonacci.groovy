/**
 * Fibonacci Series Calculator
 *
 * The Fibonacci Series Calculator is a Groovy program that calculates
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
import java.util.ArrayList
import java.util.Scanner

import sun.misc.Signal
import sun.misc.SignalHandler

class Fibonacci {

  static void main(String[] args) {
    println '============Fibonacci Series Calculator============'
    println 'This Program was Written Using: Groovy'

    signalHandler()
    dateAndTime()
    getUserInput()

    println '==================================================='
  }

  // Function to get user input
  static void getUserInput() {
    def scanner = new Scanner(System.in)
    while (true) {
      print 'Enter the value of n (an integer): '
      if (!scanner.hasNextLine()) {
        eofHandler()
      }
      def input = scanner.nextLine()

      def trimmedInput = input.trim()

      if (!trimmedInput) {
        println 'Please enter something...'
        continue
      } else if (trimmedInput == 'exit') {
        println 'Exiting the program...'
        break
      }

      int n = validateInput(trimmedInput)

      if (n >= 0) {
        fibonacciSeries(n)
        break
      } else {
        println 'Please enter a valid positive integer.'
      }
    }
    scanner.close()
  }

  // Calculates and prints the Fibonacci Series up to the nth term.
  static void fibonacciSeries(int n) {
    BigDecimal a = 0
    BigDecimal b = 1
    BigDecimal temp
    BigDecimal sum = 0

    println "Fibonacci Series up to the $n${getSuffix(n)} term: "

    def series = []

    for (int i = 0; i <= n && !stopOperation; i++) {
      if (n <= 5000) {
        series << a
      } else {
        // Print the series without using array
        print a
        if (i < n) {
          print ', '
        }
      }

      temp = a
      a = b
      b = b + temp
      sum += temp // Calculate the sum
    }

    if (stopOperation) {
      System.exit(0)
    }

    if (n <= 5000) {
      print series.join(', ')
    }

    println '\n'
    println "Sum of the Fibonacci Series: $sum"
  }

  // Handle special cases where numbers don't end in "th"
  static String getSuffix(n) {
    if (n % 10 == 1 && n % 100 != 11) return 'st'
    else if (n % 10 == 2 && n % 100 != 12) return 'nd'
    else if (n % 10 == 3 && n % 100 != 13) return 'rd'
    else return 'th'
  }

  // Display the current date and time
  static void dateAndTime() {
    def currentDate = LocalDateTime.now()

    def layout = 'MMMM dd, yyyy - HH:mm:ss'
    def formatter = DateTimeFormatter.ofPattern(layout)
    def formattedDate = currentDate.format(formatter)

    println "Date and Time: $formattedDate"
  }

  // Functions to handle user input and errors
  static int validateInput(input) {
    try {
      def n = input as int
      if (n > 0) {
        return n
      }
    } catch (NumberFormatException e) {
      return -1
    }
    return -1
  }

  static void eofHandler() {
    println ''
    println 'End of File encountered.. Stopping...'
    println '==================================================='
    System.exit(0)
  }

  static void interruptHandler() {
    stopOperation = true
    println ''
    println 'Interrupt received.. Exiting...'
    println '==================================================='
    System.exit(0)
  }

  static stopOperation = false

  static void signalHandler() {
    def sigintHandler = new SignalHandler() {
      void handle(Signal signal) {
        interruptHandler()
      }
    }
    Signal.handle(new Signal('INT'), sigintHandler)
  }
}
