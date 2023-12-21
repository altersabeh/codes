/// <summary>
/// Fibonacci Series Calculator
///
/// The Fibonacci Series Calculator is a C# program that calculates
/// and prints the Fibonacci Series up to the nth term with arbitrary
/// precision. It includes features such as error handling for input
/// validation, handling special cases where numbers don't end in "th"
/// (e.g. 1, 2, 3), displaying the sum of the series, and providing
/// the current date and time.
///
/// License: This program is in the public domain.
/// </summary>

using System.Numerics;

namespace Fibonacci;

class Program {
  static void Main(string[] args) {
    Console.WriteLine("============Fibonacci Series Calculator============");
    Console.WriteLine("This Program was Written Using: C#");

    SignalHandler();
    DateAndTime();
    GetUserInput();

    Console.WriteLine("===================================================");
  }

  // Function to Get the User Input
  static void GetUserInput() {
    while (true) {
      Console.Write("Enter the value of n (an integer): ");
      string? input = Console.ReadLine();

      if (input == null) {
        EOFHandler();
      }

      string? trimmedInput = input?.Trim();

      if (string.IsNullOrWhiteSpace(input)) {
        Console.WriteLine("Please enter something...");
        continue;
      } else if (trimmedInput == "exit") {
        Console.WriteLine("Exiting the program...");
        break;
      }

      int n = ValidateInput(trimmedInput);

      if (n > 0) {
        FibonacciSeries(n);
        break;
      } else if (n <= 0) {
        Console.WriteLine("Please enter a valid positive integer.");
      }
    }
  }

  // Calculates and prints the Fibonacci Series up to the nth term.
  static void FibonacciSeries(int n) {
    BigInteger a = 0;
    BigInteger b = 1;
    BigInteger temp;
    BigInteger sum = 0;

    Console.WriteLine("Fibonacci Series up to the " + n + GetSuffix(n) + " term:");

    var series = new System.Collections.Generic.List<string>();

    for (int i = 0; i <= n && !stopOperation; i++) {
      if (n <= 5000) {
        series.Add(a.ToString());
      } else {
        // Print the series without using array
        Console.Write(a);
        if (i < n) {
          Console.Write(", ");
        }
      }

      temp = a;
      a = b;
      b = temp + b;
      sum += temp; // Calculate the sum
    }

    if (stopOperation) {
      Environment.Exit(0);
    }

    if (n <= 5000) {
      Console.Write(string.Join(", ", series));
    }

    Console.WriteLine("\n");
    Console.WriteLine("Sum of the Fibonacci Series: " + sum);
  }

  // Handle special cases where numbers don't end in "th"
  static string GetSuffix(int n) {
    if (n % 10 == 1 && n % 100 != 11) {
      return "st";
    } else if (n % 10 == 2 && n % 100 != 12) {
      return "nd";
    } else if (n % 10 == 3 && n % 100 != 13) {
      return "rd";
    } else {
      return "th";
    }
  }

  // Display the current date and time
  static void DateAndTime() {
    DateTime currentDate = DateTime.Now;

    string layout = "MMMM dd, yyyy - HH:mm:ss";
    string formattedDate = currentDate.ToString(layout);

    Console.WriteLine("Date and Time: " + formattedDate);
  }

  // Functions to handle user input and errors
  static int ValidateInput(string? input) {
    if (int.TryParse(input, out int n)) {
      return n;
    } else {
      return -1;
    }
  }

  static void EOFHandler() {
    Console.WriteLine();
    Console.WriteLine("End of File encountered.. Stopping...");
    Console.WriteLine("===================================================");
    Environment.Exit(0);
  }

  static void InterruptHandler(object? sender, ConsoleCancelEventArgs e) {
    stopOperation = true;
    Console.WriteLine();
    Console.WriteLine("Interrupt received.. Exiting...");
    Console.WriteLine("===================================================");
    Environment.Exit(0);
  }

  static bool stopOperation = false;

  static void SignalHandler() {
    Console.CancelKeyPress += InterruptHandler;
  }
}
