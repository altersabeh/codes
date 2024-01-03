<?php

/**
 * Fibonacci Series Calculator
 *
 * The Fibonacci Series Calculator is a PHP program that calculates
 * and prints the Fibonacci Series up to the nth term with arbitrary
 * precision. It includes features such as error handling for input
 * validation, handling special cases where numbers don't end in "th"
 * (e.g. 1, 2, 3), displaying the sum of the series, and providing the
 * current date and time.
 *
 * License: This program is in the public domain.
 */

function main() {
  echo "============Fibonacci Series Calculator============" . PHP_EOL;
  echo "This Program was Written Using: PHP" . PHP_EOL;

  signalHandler();
  dateAndTime();
  getUserInput();

  echo "===================================================" . PHP_EOL;
}

// Function to Get the User Input
function getUserInput() {
  while (true) {
    $input = readline("Enter the value of n (an integer): ");
    if ($input === false) {
      eofHandler();
    }

    $trimmedInput = trim($input);

    if ($trimmedInput === "") {
      echo "Please enter something..." . PHP_EOL;
      continue;
    } elseif ($trimmedInput === "exit") {
      echo "Exiting the program..." . PHP_EOL;
      break;
    }

    $n = validateInput($trimmedInput);

    if ($n !== false) {
      fibonacciSeries($n);
      break;
    } else {
      echo "Please enter a valid positive integer." . PHP_EOL;
    }
  }
}

// Calculates and prints the Fibonacci Series up to the nth term
function fibonacciSeries($n) {
  bcscale(0);

  $a = '0'; // Use strings to ensure precision
  $b = '1';
  $temp = '0';
  $sum = '0';

  echo "Fibonacci Series up to the " . $n . getSuffix($n) . " term:" . PHP_EOL;

  $series = [];

  for ($i = 1; $i <= $n + 1; $i++) {
    if ($n <= 5000) {
      $series[] = $a;
    } else {
      // Print the series without using array
      echo $a;
      echo "" . (($i <= $n) ? ", " : "\n");
    }

    $temp = $a;
    $a = $b;
    $b = bcadd($temp, $b);
    $sum = bcadd($sum, $temp); // Calculate the sum
  }

  if ($n <= 5000) {
    echo implode(", ", $series) . PHP_EOL;
  }

  echo PHP_EOL;
  echo "Sum of the Fibonacci Series: " . $sum . PHP_EOL;
}

// Handle special cases where numbers don't end in "th"
function getSuffix($n) {
  if ($n % 10 == 1 && $n % 100 != 11) {
    return "st";
  } elseif ($n % 10 == 2 && $n % 100 != 12) {
    return "nd";
  } elseif ($n % 10 == 3 && $n % 100 != 13) {
    return "rd";
  } else {
    return "th";
  }
}

// Display the current date and time
function dateAndTime() {
  $current_date = new DateTime();

  $layout = "F d, Y - H:i:s";
  $formatted_date = $current_date->format($layout);

  echo "Date and Time: " . $formatted_date . PHP_EOL;
}


// Functions to handle user input and error
function validateInput($input) {
  if (ctype_digit($input)) {
    $n = intval($input);
    return ($n > 0) ? $n : false;
  }

  return false;
}

function eofHandler() {
  echo "" . PHP_EOL;
  echo "End of File encountered.. Exiting..." . PHP_EOL;
  echo "===================================================" . PHP_EOL;
  exit;
}

function interruptHandler($signal) {
  echo "" . PHP_EOL;
  echo "Interrupt received.. Exiting..." . PHP_EOL;
  echo "===================================================" . PHP_EOL;
  exit;
}

function signalHandler() {
  pcntl_signal(SIGINT, "interruptHandler");
}

main();
