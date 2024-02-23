package random;

import java.util.Random;
import java.util.Scanner;

public class RandomNumberGame {
  public static void main(String[] args) {
    Random rand = new Random();
    boolean win = false;
    int numberToGuess = rand.nextInt(1000) + 1;
    int numberOfTries = 0;

    System.out.println("============== RANDOM NUMBER GAME ==============");
    System.out.println("Welcome to the Random Number Game!");
    System.out.println("Enter 'exit' to quit the game.");

    try (Scanner input = new Scanner(System.in)) {
      int guess = 0;

      while (!win) {
        try {
          numberOfTries++;
          System.out.print("Guess a number between 1 and 1000 : ");
          String line = input.nextLine();
          if (line.trim().isEmpty()) {
            System.out.println("You must enter a number.");
            continue;
          } else if (line.equalsIgnoreCase("exit")) {
            if (numberOfTries == 1) {
              System.out.println("You didn't even try!");
            } else {
              System.out.println("You gave up after " + numberOfTries + " tries.");
            }
            System.out.println("Goodbye!");
            break;
          }

          guess = Integer.parseInt(line);

          if (guess == numberToGuess) {
            win = true;
          } else if (guess < numberToGuess) {
            System.out.println("Too low! Try again.");
          } else if (guess > numberToGuess) {
            System.out.println("Too high! Try again.");
          }
        } catch (NumberFormatException e) {
          System.out.println("Invalid input. Please enter a number.");
        }
      }
    }

    if (numberOfTries == 1 && win) {
      System.out.println("Amazing! You guessed the number on first try!");
    } else if (win) {
      System.out.println("You win!");
      System.out.println("The number was " + numberToGuess);
      System.out.println("It took you " + numberOfTries + (numberOfTries > 1 ? " tries." : " try."));
    }

    System.out.println("================================================");
  }
}
