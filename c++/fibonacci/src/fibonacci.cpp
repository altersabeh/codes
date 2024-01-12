/**
 * Fibonacci Series Calculator
 *
 * The Fibonacci Series Calculator is a C++ program that calculates
 * and prints the Fibonacci Series up to the nth term with arbitrary
 * precision. It includes features such as error handling for input
 * validation, handling special cases where numbers don't end in "th"
 * (e.g. 1, 2, 3), displaying the sum of the series, and providing the
 * current date and time.
 *
 * License: This program is in the public domain.
 */

#include <csignal>
#include <ctime>
#include <iomanip>
#include <iostream>
#include <NTL/ZZ.h>
#include <sstream>
#include <string>
#include <vector>

using namespace std;
using namespace NTL;

int validateInput(const string &input);
string getSuffix(int n);
void dateAndTime();
void eofHandler();
void getUserInput();
void interruptHandler(int signum);
void fibonacciSeries(int n);
void signalHandler();

int main() {
  cout << "============Fibonacci Series Calculator============" << endl;
  cout << "This Program was Written Using: C++" << endl;

  signalHandler();
  dateAndTime();
  getUserInput();

  cout << "===================================================" << endl;
  return 0;
}

// Function to get user input
void getUserInput() {
  while (true) {
    string input;

    cout << "Enter the value of n (an integer): ";
    getline(cin, input);
    if (cin.eof()) {
      eofHandler();
    }

    input.erase(0, input.find_first_not_of(" \t\n\r"));
    input.erase(input.find_last_not_of(" \t\n\r") + 1);
    string trimmedInput = input;

    if (trimmedInput.empty()) {
      cout << "Please enter something..." << endl;
      continue;
    } else if (trimmedInput == "exit") {
      cout << "Exiting the program..." << endl;
      break;
    }

    int n = validateInput(trimmedInput);

    if (n > 0) {
      fibonacciSeries(n);
      break;
    } else {
      cout << "Please enter a valid positive integer." << endl;
    }
  }
}

// Calculates and prints the Fibonacci Series up to the nth term.
void fibonacciSeries(int n) {
  ZZ a, b, temp, sum;
  a = 0;
  b = 1;
  sum = 0;

  cout << "Fibonacci Series up to the " << n << getSuffix(n)
       << " term:" << endl;

  vector<ZZ> series;

  for (int i = 0; i <= n; ++i) {
    if (n <= 5000) {
      series.push_back(a);
    } else {
      // Print the series without using arrays
      cout << a;
      if (i < n) {
        cout << ", ";
      }
    }

    temp = a;
    a = b;
    b += temp;
    sum += temp; // Calculate the sum
  }

  if (n <= 5000) {
    ostringstream fibSeries;
    for (const ZZ& num : series) {
      fibSeries << num;
      if (&num != &series.back()) {
        fibSeries << ", ";
      }
    }
    cout << fibSeries.str();
  }

  cout << "\n" << endl;
  cout << "Sum of the Fibonacci Series: " << sum << endl;
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
  time_t currentDate = time(0);
  tm *localTime = localtime(&currentDate);

  ostringstream dateStream;
  string layout = "%B %d, %Y - %H:%M:%S";
  dateStream << put_time(localTime, layout.c_str());
  string formattedDate = dateStream.str();

  cout << "Date and Time: " << formattedDate << endl;
}

// Functions to handle user input and errors
int validateInput(const string &input) {
  size_t pos = 0;
  try {
    int n = stoi(input, &pos);
    if (pos == input.length()) {
      return n;
    }
  } catch (const invalid_argument &) {
  } catch (const out_of_range &) {
  }
  return -1;
}

void eofHandler() {
  cout << endl;
  cout << "End of File encountered.. Stopping..." << endl;
  cout << "===================================================" << endl;
  exit(0);
}

void interruptHandler(int signum) {
  cout << endl;
  cout << "Interrupt received.. Exiting..." << endl;
  cout << "===================================================" << endl;
  exit(0);
}

void signalHandler() {
  if (signal(SIGINT, interruptHandler) == SIG_ERR) {
    cout << "Error setting SIGINT handler." << endl;
  }
}
