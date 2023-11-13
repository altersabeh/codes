import 'dart:io';
import 'dart:core';
import 'package:intl/intl.dart';

/// Fibonacci Series Calculator
///
/// The Fibonacci Series Calculator is a Dart program that calculates
/// and prints the Fibonacci series up to the nth term with arbitrary
/// precision. It includes features such as error handling for input
/// validation, handling special cases where numbers don't end in "th"
/// (e.g. 1, 2, 3), displaying the sum of the series, and providing
/// the current date and time.
///
/// License: This program is in the public domain.

void main() {
  stdout.writeln("============Fibonacci Series Calculator============");
  stdout.writeln("This Program was Written Using: Dart");

  // signalHandler();
  dateAndTime();
  getUserInput();

  stdout.writeln("===================================================");
}

/// Function to get user input
void getUserInput() {
  while (true) {
    stdout.write("Enter the value of n (an integer): ");
    String? input = stdin.readLineSync();

    if (input == null) {
      eofHandler();
    }

    String? trimmedInput = input?.trim();

    if (trimmedInput == "") {
      print("Please enter something...");
      continue;
    } else if (trimmedInput == "exit") {
      print("Exiting the program...");
      break;
    }

    int n = validateInput(trimmedInput);

    if (n > 0) {
      fibonacciSeries(n);
      break;
    } else {
      print("Please enter a valid positive integer.");
    }
  }
}

/// Function to calculate the nth Fibonacci number with arbitrary precision.
void fibonacciSeries(int n) {
  BigInt a = BigInt.zero;
  BigInt b = BigInt.one;
  BigInt temp;
  BigInt sum = BigInt.zero;

  print("Fibonacci series up to the $n${getSuffix(n)} term:");

  List<BigInt> series = [];

  for (int i = 0; i <= n; i++) {
    if (n <= 5000) {
      series.add(a);
    } else {
      // Print the series without using array
      stdout.write("$a");
      if (i < n) {
        stdout.write(", ");
      }
    }

    temp = a;
    a = b;
    b = b + temp;
    sum = sum + temp; // Calculate the sum
  }

  if (n <= 5000) {
    stdout.write(series.join(", "));
  }

  print("\n");
  print("Sum of the Fibonacci series: $sum");
}

/// Handle special cases where numbers don't end in "th"
String getSuffix(int n) {
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

/// Display the current date and time
void dateAndTime() {
  var currentDate = DateTime.now();

  String layout = 'MMMM dd, yyyy - HH:mm:ss';
  var formatter = DateFormat(layout);
  String formattedDate = formatter.format(currentDate);

  print("Date and Time: $formattedDate");
}

/// Functions to handle user input and errors
int validateInput(String? input) {
  try {
    int n = int.parse(input ?? '');
    if (n > 0) {
      return n;
    }
  } catch (e) {
    return -1;
  }
  return -1;
}

void eofHandler() {
  print("");
  print("End of File encountered.. Stopping...");
  print("===================================================");
  exit(0);
}

void interruptHandler() {
  print("");
  print("Interrupt received.. Stopping...");
  print("===================================================");
  exit(0);
}

void signalHandler() {
  // Not Working as Intended
  ProcessSignal.sigint.watch().listen((signal) => interruptHandler());
}
