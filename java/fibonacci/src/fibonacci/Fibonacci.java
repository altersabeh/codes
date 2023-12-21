/**
 * Fibonacci Series Calculator
 *
 * The Fibonacci Series Calculator is a Java program that calculates and
 * prints the Fibonacci Series up to the nth term with arbitrary
 * precision. It includes features such as error handling for input
 * validation, handling special cases where numbers don't end in "th"
 * (e.g. 1, 2, 3), displaying the sum of the series, and providing the
 * current date and time.
 *
 * License: This program is in the public domain.
 */

package fibonacci;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Scanner;

import sun.misc.Signal;
import sun.misc.SignalHandler;

public class Fibonacci {
  public static void main(String[] args) {
    System.out.println("============Fibonacci Series Calculator============");
    System.out.println("This Program was Written Using: Java");

    signalHandler();
    dateAndTime();
    getUserInput();

    System.out.println("===================================================");
  }

  // Function to get user input
  public static void getUserInput() {
    Scanner scanner = new Scanner(System.in);
    while (true) {
      System.out.print("Enter the value of n (an integer): ");
      if (scanner.hasNextLine() == false) {
        eofHandler();
      }
      String input = scanner.nextLine();

      String trimmedInput = input.trim();

      if (trimmedInput.isEmpty()) {
        System.out.println("Please enter something...");
        continue;
      } else if (trimmedInput.equals("exit")) {
        System.out.println("Exiting the program...");
        break;
      }

      int n = validateInput(trimmedInput);

      if (n >= 0) {
        fibonacciSeries(n);
        break;
      } else {
        System.out.println("Please enter a valid positive integer.");
      }
    }
    scanner.close();
  }

  // Calculates and prints the Fibonacci Series up to the nth term.
  public static void fibonacciSeries(int n) {
    BigDecimal a = BigDecimal.ZERO;
    BigDecimal b = BigDecimal.ONE;
    BigDecimal temp;
    BigDecimal sum = BigDecimal.ZERO;

    System.out.println("Fibonacci Series up to the " + n + getSuffix(n) + " term: ");

    ArrayList<String> series = new ArrayList<>();

    for (int i = 0; i <= n; i++) {
      if (n <= 5000) {
        series.add(a.toString());
      } else {
        // Print the series without using array
        System.out.print(a);
        if (i < n) {
          System.out.print(", ");
        }
      }

      temp = a;
      a = b;
      b = b.add(temp);
      sum = sum.add(temp); // Calculate the sum
    }

    if (n <= 5000) {
      System.out.print(String.join(", ", series));
    }

    System.out.println("\n");
    System.out.println("Sum of the Fibonacci Series: " + sum);
  }

  // Handle special cases where numbers don't end in "th"
  public static String getSuffix(int n) {
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
  public static void dateAndTime() {
    LocalDateTime currentDate = LocalDateTime.now();

    String layout = "MMMM dd, yyyy - HH:mm:ss";
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern(layout);
    String formattedDate = currentDate.format(formatter);

    System.out.println("Date and Time: " + formattedDate);
  }

  // Functions to handle user input and errors
  public static int validateInput(String input) {
    try {
      int n = Integer.parseInt(input);
      if (n > 0) {
        return n;
      }
    } catch (NumberFormatException e) {
      return -1;
    }
    return -1;
  }

  public static void eofHandler() {
    System.out.println("");
    System.out.println("End of File encountered.. Stopping...");
    System.out.println("===================================================");
    System.exit(0);
  }

  public static void interruptHandler() {
    System.out.println("");
    System.out.println("Interrupt received.. Exiting...");
    System.out.println("===================================================");
    System.exit(0);
  }

  public static void signalHandler() {
    SignalHandler sigintHandler = new SignalHandler() {
      @Override
      public void handle(Signal signal) {
        interruptHandler();
      }
    };
    Signal.handle(new Signal("INT"), sigintHandler);
  }
}
