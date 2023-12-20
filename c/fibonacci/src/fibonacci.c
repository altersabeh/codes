/**
 * Fibonacci Series Calculator
 *
 * The Fibonacci Series Calculator is a C program that calculates and
 * prints the Fibonacci series up to the nth term with arbitrary
 * precision. It includes features such as error handling for input
 * validation, handling special cases where numbers don't end in "th"
 * (e.g. 1, 2, 3), displaying the sum of the series, and providing the
 * current date and time.
 *
 * License: This program is in the public domain.
 */

#include <ctype.h>
#include <gmp.h>
#include <signal.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

char* trim(char* str);
const char *getSuffix(int n);
int validateInput(const char *input);
int signalHandler();
void eofHandler();
void dateAndTime();
void fibonacciSeries(int n);
void getUserInput();
void interruptHandler(int signum);

int main() {
  printf("============Fibonacci Series Calculator============\n");
  printf("This Program was Written Using: C\n");

  signalHandler();
  dateAndTime();
  getUserInput();

  printf("===================================================\n");
  return 0;
}

// Function to Get the User Input
void getUserInput() {
  while (true) {
    char input[100];

    printf("Enter the value of n (an integer): ");
    if (fgets(input, sizeof(input), stdin) == NULL) {
      eofHandler();
    }

    input[strcspn(input, "\n")] = '\0';

    char *trimmedInput = input;
    trimmedInput += strspn(trimmedInput, " \t\n\r");
    size_t len = strlen(trimmedInput);
    while (len > 0 && isspace((unsigned char)trimmedInput[len - 1])) {
      trimmedInput[--len] = '\0';
    }

    if (strlen(trimmedInput) == 0) {
      printf("Please enter something...\n");
      continue;
    } else if (strcmp(trimmedInput, "exit") == 0) {
      printf("Exiting the program...\n");
      break;
    }

    int n = validateInput(trimmedInput);

    if (n > 0) {
      fibonacciSeries(n);
      break;
    } else {
      printf("Please enter a valid positive integer.\n");
    }
  }
}

// Calculates and prints the Fibonacci series up to the nth term.
void fibonacciSeries(int n) {
  mpz_t a, b, temp, sum;
  mpz_inits(a, b, temp, sum, NULL);

  mpz_set_ui(a, 0);
  mpz_set_ui(b, 1);

  printf("Fibonacci series up to the %d%s term:\n", n, getSuffix(n));

  mpz_t series[n + 1];

  for (int i = 0; i <= n; i++) {
    if (n <= 5000) {
      mpz_init(series[i]);
      mpz_set(series[i], a);
    } else {
      // Print the series without using arrays
      gmp_printf("%Zd", a);
      if (i < n) {
        printf(", ");
      }
    }

    mpz_set(temp, a);
    mpz_set(a, b);
    mpz_add(b, b, temp);
    mpz_add(sum, sum, temp); // Calculate the sum
  }

  if (n <= 5000) {
    for (int i = 0; i <= n; i++) {
      gmp_printf("%Zd", series[i]);
      if (i < n) {
        printf(", ");
      }
    }
    for (int i = 0; i <= n; i++) {
      mpz_clear(series[i]);
    }
  }

  puts("\n");
  gmp_printf("Sum of the Fibonacci series: %Zd\n", sum);
  mpz_clears(a, b, temp, sum, NULL);
}

// Handle special cases where numbers don't end in "th"
const char *getSuffix(int n) {
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
  time_t currentDate;
  struct tm *timeInfo;
  time(&currentDate);

  char formattedDate[50];
  char layout[] = "%B %d, %Y - %H:%M:%S";
  timeInfo = localtime(&currentDate);
  strftime(formattedDate, sizeof(formattedDate), layout, timeInfo);

  printf("Date and Time: %s\n", formattedDate);
}

// Functions to handle user input and errors
int validateInput(const char *input) {
  int i = 0;

  while (input[i] != '\0') {
    if (!isdigit(input[i])) {
      return -1;
    }
    i++;
  }
  return atoi(input);
}

void eofHandler() {
  printf("\n");
  printf("End of File encountered.. Stopping...\n");
  printf("===================================================\n");
  exit(0);
}

void interruptHandler(int signum) {
  printf("\n");
  printf("Interrupt received.. Exiting...\n");
  printf("===================================================\n");
  exit(0);
}

void signalHandler() {
  if (signal(SIGINT, interruptHandler) == SIG_ERR) {
    printf("Error setting SIGINT handler.\n");
    return 1;
  }
}
