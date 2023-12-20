/**
 * Fibonacci Series Calculator
 *
 * The Fibonacci Series Calculator is a D program that calculates and
 * prints the Fibonacci Series up to the nth term with arbitrary
 * precision. It includes features such as error handling for input
 * validation, handling special cases where numbers don't end in "th"
 * (e.g. 1, 2, 3), displaying the sum of the series, and providing the
 * current date and time.
 *
 * License: This program is in the public domain.
 */

import core.stdc.stdlib;
import std.bigint;
import std.conv;
import std.datetime;
import std.stdio;
import std.string;

void main() {
  writeln("============Fibonacci Series Calculator============");
  writeln("This Program was Written Using: D");

  signalHandler();
  dateAndTime();
  getUserInput();

  writeln("===================================================");
}

// Function to get user input
void getUserInput() {
  while (true) {
    write("Enter the value of n (an integer): ");
    string input = readln().chomp();

    if (stdin.eof) {
      eofHandler();
    }

    string trimmedInput = strip(input);

    if (trimmedInput.length == 0) {
      writeln("Please enter something...");
      continue;
    } else if (trimmedInput == "exit") {
      writeln("Exiting the program...");
      break;
    }

    int n = validateInput(trimmedInput);

    if (n > 0) {
      fibonacciSeries(n);
      break;
    } else {
      writeln("Please enter a valid positive integer.");
    }
  }
}

// Calculates and prints the Fibonacci Series up to the nth term.
void fibonacciSeries(int n) {
  BigInt a = BigInt(0);
  BigInt b = BigInt(1);
  BigInt temp;
  BigInt sum = BigInt(0);

  writefln("Fibonacci Series up to the %d%s term:", n, getSuffix(n));

  string[] series;

  foreach (i; 0 .. (n + 1)) {
    if (n <= 5000) {
      series ~= a.to!string;
    } else {
      // Print the series without using arrays
      write(a.to!string);
      if (i < n) {
        write(", ");
      }
    }

    temp = a;
    a = b;
    b = b + temp;
    sum += temp; // Calculate the sum
  }

  if (n <= 5000) {
    write(join(series, ", "));
  }

  writeln("\n");
  writefln("Sum of the Fibonacci Series: %s", sum);
}

// Handle special cases where numbers don't end in "th"
string getSuffix(int n) {
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
void dateAndTime() {
  auto currentDate = Clock.currTime();
  auto year = currentDate.year;
  auto month = currentDate.month;
  auto day = currentDate.day;
  auto hour = currentDate.hour;
  auto minute = currentDate.minute;
  auto second = currentDate.second;

  string[] monthNames = [
    "January", "February", "March",
    "April", "May", "June", "July",
    "August", "September", "October",
    "November", "December"
  ];

  string layout = "%s %02d, %04d - %02d:%02d:%02d";
  string formattedDate = format(layout, monthNames[month - 1],
      day, year, hour, minute, second);

  writeln("Date and Time: ", formattedDate);
}

// Functions to handle user input and errors
int validateInput(string input) {
  int n;

  try {
    n = input.to!int;
  } catch (Exception) {
    return -1;
  }

  if (n > 0) {
    return n;
  } else {
    return -1;
  }
}

void eofHandler() {
  writeln();
  writeln("End of File encountered.. Stopping...");
  writeln("===================================================");
  exit(0);
}

__gshared enum SIGINT = 2;

extern (C) void signal(int signum, void function(int));

extern (C) void interruptHandler(int signum) {
  writeln();
  writeln("Interrupt received.. Exiting...");
  write("===================================================");
  exit(0);
}

void signalHandler() {
  signal(SIGINT, &interruptHandler);
}
