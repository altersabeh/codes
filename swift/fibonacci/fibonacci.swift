/**
  Fibonacci Series Calculator

  The Fibonacci Series Calculator is a Swift program that calculates
  and prints the Fibonacci Series up to the nth term with arbitrary
  precision. It includes features such as error handling for input
  validation, handling special cases where numbers don't end in "th"
  (e.g. 1, 2, 3), displaying the sum of the series, and providing the
  current date and time.

  - License: This program is in the public domain.
 */

import BigInt
import Foundation

func main() {
  print("============Fibonacci Series Calculator============")
  print("This Program was Written Using: Swift")

  signalHandler()
  dateAndTime()
  getUserInput()

  print("===================================================")
}

// Function to Get the User Input
func getUserInput() {
  while true {
    print("Enter the value of n (an integer): ", terminator: "")

    if let input = readLine() {
      let trimmedInput = input.trimmingCharacters(in: .whitespaces)

      if trimmedInput.isEmpty {
        print("Please enter something...")
      } else if trimmedInput == "exit" {
        print("Exiting the program...")
        break;
      }

      let  n = validateInput(trimmedInput)

      if n > 0 {
        fibonacciSeries(n)
        break
      } else {
        print("Please enter a valid positive integer.")
      }
    } else {
      eofHandler()
    }
  }
}

// Function to calculate the nth Fibonacci number with arbitrary precision
func fibonacciSeries(_ n: Int) {
  var a: BigInt = 0
  var b: BigInt = 1
  var temp: BigInt
  var sum: BigInt = 0

  print("Fibonacci Series up to the \(n)\(getSuffix(n)) term:")

  var series: [String] = []

  for i in 0...n {
    if n <= 5000 {
      series.append("\(a)")
    } else {
      // Print the series without using array
      print("\(a)", terminator: i < n ? ", " : "\n")
    }

    temp = a
    a = b
    b += temp
    sum += temp  // Calculate the sum
  }

  if n <= 5000 {
    print(series.joined(separator: ", "))
  }

  print("")
  print("Sum of the Fibonacci Series: \(sum)")
}

// Function to get suffix for a number (e.g., "st", "nd", "rd", or "th")
func getSuffix(_ n: Int) -> String {
  if (11...13).contains(n % 100) {
    return "th"
  }
  switch n % 10 {
  case 1:
    return "st"
  case 2:
    return "nd"
  case 3:
    return "rd"
  default:
    return "th"
  }
}

// Display the current date and time
func dateAndTime() {
  let dateFormatter = DateFormatter()
  let layout = "MMMM dd, yyyy - HH:mm:ss"
  dateFormatter.dateFormat = layout

  let currentDate = Date()
  let formattedDate = dateFormatter.string(from: currentDate)

  print("Date and Time: \(formattedDate)")
}

// Functions to handle user input and errors
func validateInput(_ input: String) -> Int {
  if let n = Int(input), n >= 1 {
    return n
  } else {
    return -1
  }
}

func eofHandler() {
  print()
  print("End of File encountered.. Stopping...")
  print("===================================================")
  exit(0)
}

func interruptHandler(signum _: Int32) {
  print()
  print("Interrupt received.. Exiting...")
  print("===================================================")
  exit(0)
}

func signalHandler() {
  signal(SIGINT, interruptHandler)
}

main()
