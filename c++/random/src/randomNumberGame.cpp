#include <cstdlib>
#include <ctime>
#include <iostream>
#include <string>

int main() {
  srand(time(0));
  bool win = false;
  int numberToGuess = rand() % 1000 + 1;
  int numberOfTries = 0;

  std::cout << "============== RANDOM NUMBER GAME ==============\n";
  std::cout << "Welcome to the Random Number Game!\n";
  std::cout << "Enter 'exit' to quit the game.\n";

  std::string line;
  int guess = 0;

  while (!win) {
    numberOfTries++;
    std::cout << "Guess a number between 1 and 1000 : ";
    std::getline(std::cin, line);

    if (line.empty()) {
      std::cout << "You must enter a number.\n";
      continue;
    } else if (line == "exit") {
      if (numberOfTries == 1) {
        std::cout << "You didn't even try!\n";
      } else {
        std::cout << "You gave up after " << numberOfTries << " tries.\n";
      }
      std::cout << "Goodbye!\n";
      break;
    }

    try {
      guess = std::stoi(line);
    } catch (std::invalid_argument &) {
      std::cout << "Invalid input. Please enter a number.\n";
      continue;
    }

    if (guess == numberToGuess) {
      win = true;
    } else if (guess < numberToGuess) {
      std::cout << "Too low! Try again.\n";
    } else if (guess > numberToGuess) {
      std::cout << "Too high! Try again.\n";
    }
  }

  if (numberOfTries == 1 && win) {
    std::cout << "Amazing! You guessed the number on first try!\n";
  } else if (win) {
    std::cout << "You win!\n";
    std::cout << "The number was " << numberToGuess << "\n";
    std::cout << "It took you " << numberOfTries
              << (numberOfTries > 1 ? " tries.\n" : " try.\n");
  }

  std::cout << "================================================\n";

  return 0;
}
