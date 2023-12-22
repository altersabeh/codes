/**
 * Fibonacci Series Calculator
 *
 * The Fibonacci Series Calculator is a JavaScript program that
 * calculates and prints the Fibonacci Series up to the nth term with
 * arbitrary precision. It includes features such as error handling
 * for input validation, handling special cases where numbers don't
 * end in "th" (e.g. 1, 2, 3), displaying the sum of the series, and
 * providing the current date and time..
 *
 * License: This program is in the public domain.
 */

const readline = require("readline");
const moment = require("moment");

async function main() {
  console.log("============Fibonacci Series Calculator============");
  console.log("This Program was Written Using: JavaScript");

  signalHandler();
  dateAndTime();
  await getUserInput();

  console.log("===================================================");
}

// Function to Get the User Input
async function getUserInput() {
  return new Promise((resolve, reject) => {
    rl.question("Enter the value of n (an integer): ", async (input) => {
      const trimmedInput = input.trim();

      if (trimmedInput === "") {
        console.log("Please enter something...");
        await getUserInput();
        resolve();
      } else if (trimmedInput === "exit") {
        console.log("Exiting the program...");
        rl.close();
        resolve();
      } else {
        const n = validateInput(trimmedInput);

        if (n > 0) {
          await fibonacciSeries(n);
          rl.close();
          resolve();
        } else {
          console.log("Please enter a valid positive integer.");
          await getUserInput();
          resolve();
        }
      }
    });
  });
}

// Calculates and prints the Fibonacci Series up to the nth term
function fibonacciSeries(n) {
  let a = BigInt(0);
  let b = BigInt(1);
  let temp;
  let sum = BigInt(0);

  console.log(`Fibonacci Series up to the ${n}${getSuffix(n)} term:`);

  let series = [];

  return new Promise((resolve, reject) => {
    (function fibonacciLoop() {
      if (n <= 5000) {
        series.push(a.toString());
      } else {
        // Print the series without using array
        process.stdout.write(a.toString());
        if (n > 1) {
          process.stdout.write(", ");
        } else {
          console.log();
        }
      }

      temp = a;
      a = b;
      b += temp;
      sum += temp; // Calculate the sum

      if (n-- > 0) {
        setImmediate(fibonacciLoop);
      } else {
        if (n <= 5000) {
          console.log(series.join(", "));
        }

        console.log();
        console.log(`Sum of the Fibonacci Series: ${sum}`);
        resolve();
      }
    })();
  });
}

// Handle special cases where numbers don't end in "th"
function getSuffix(n) {
  if (n % 10 === 1 && n % 100 !== 11) {
    return "st";
  } else if (n % 10 === 2 && n % 100 !== 12) {
    return "nd";
  } else if (n % 10 === 3 && n % 100 !== 13) {
    return "rd";
  } else {
    return "th";
  }
}

// Display the current date and time
function dateAndTime() {
  const currentDate = moment();

  const layout = "MMMM DD, YYYY - HH:mm:ss";
  const formattedDate = currentDate.format(layout);

  console.log(`Date and Time: ${formattedDate}`);
}

// Functions to handle user input and errors
function validateInput(input) {
  const isPositiveInteger = /^[1-9]\d*$/.test(input);
  if (!isPositiveInteger) {
    return -1;
  }
  return parseInt(input, 10);
}

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

function eofHandler() {
  console.log();
  console.log("End of File encountered.. Stopping...");
  console.log("==================================================");
  process.exit(0);
}

function interruptHandler() {
  console.log();
  console.log("Interrupt received.. Exiting...");
  console.log("==================================================");
  process.exit(0);
}

function signalHandler() {
  process.stdin.on("keypress", (str, key) => {
    if (key && key.ctrl && key.name == "d") {
      eofHandler();
    }
  });

  rl.on("SIGINT", () => {
    interruptHandler();
  });
}

if (require.main === module) {
  main();
} else {
  module.exports = { main };
}
