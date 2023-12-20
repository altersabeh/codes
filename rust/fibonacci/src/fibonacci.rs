/// Fibonacci Series Calculator
///
/// The Fibonacci Series Calculator is a Rust program that calculates
/// and prints the Fibonacci Series up to the nth term with arbitrary
/// precision. It includes features such as error handling for input
/// validation, handling special cases where numbers don't end in "th"
/// (e.g. 1, 2, 3), displaying the sum of the series, and providing
/// the current date and time.
///
/// License: This program is in the public domain.

extern crate chrono;
extern crate ctrlc;

use chrono::Local;
use lazy_static::lazy_static;
use num_bigint::BigUint;
use std::io::{self, Write};
use std::sync::atomic::{AtomicBool, Ordering};
use std::sync::Arc;

fn main() {
  println!("============Fibonacci Series Calculator============");
  println!("This Program was Written Using: Rust");

  signal_handler();
  date_and_time();
  get_user_input();

  println!("===================================================");
}

/// Function to get user input.
fn get_user_input() {
  loop {
    print!("Enter the value of n (an integer): ");
    io::stdout().flush().unwrap();
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();

    if input.is_empty() {
      eof_handler();
    }

    let trimmed_input = input.trim();

    if trimmed_input.is_empty() {
      println!("Please enter something...");
      continue;
    } else if trimmed_input == "exit" {
      println!("Exiting the program...");
      break;
    }

    match validate_input(&trimmed_input) {
      Some(n) => {
        fibonacci_series(n);
        break;
      }
      None => {
        println!("Please enter a valid positive integer.");
      }
    }
  }
}

/// Calculates and prints the Fibonacci Series up to the nth term.
fn fibonacci_series(n: u32) {
  let mut a: BigUint = 0u32.into();
  let mut b: BigUint = 1u32.into();
  let mut temp: BigUint;
  let mut sum: BigUint = 0u32.into();

  println!("Fibonacci Series up to the {}{} term:", n, get_suffix(n));

  let mut series: Vec<BigUint> = Vec::new();

  for i in 0..=n {
    if n <= 5000 {
      series.push(a.clone());
    } else {
      // Print the series without using arrays
      print!("{}", a);
      if i < n {
        print!(", ");
      }
    }

    temp = a.clone();
    a = b.clone();
    b += temp.clone();
    sum += temp; // Calculate the sum
  }

  if n <= 5000 {
    let fib_series: String = series
      .iter()
      .map(|x| x.to_string())
      .collect::<Vec<String>>()
      .join(", ");
    print!("{}", fib_series);
  }

  println!("\n");
  println!("Sum of the Fibonacci Series: {}", sum);
}

/// Handle special cases where numbers don't end in "th"
fn get_suffix(n: u32) -> &'static str {
  if n % 10 == 1 && n % 100 != 11 {
    "th"
  } else if n % 10 == 2 && n % 100 != 12 {
    "nd"
  } else if n % 10 == 3 && n % 100 != 13 {
    "rd"
  } else {
    "th"
  }
}

/// Display the current date and time
fn date_and_time() {
  let current_date = Local::now();

  let layout = "%B %d, %Y - %H:%M:%S";
  let formatted_date = current_date.format(layout).to_string();

  println!("Date and Time: {}", formatted_date);
}

/// Functions to handle user input and errors
fn validate_input(input: &str) -> Option<u32> {
  match input.parse() {
    Ok(n) if n > 0 => Some(n),
    _ => None,
  }
}

fn eof_handler() {
  println!();
  println!("End of File encountered.. Stopping...");
  println!("===================================================");
  std::process::exit(0);
}

lazy_static! {
  static ref RUNNING: Arc<AtomicBool> = Arc::new(AtomicBool::new(true));
  static ref RUN: Arc<AtomicBool> = Arc::clone(&RUNNING);
}

fn interrupt_handler() {
  println!();
  println!("Interrupt received.. Exiting...");
  println!("===================================================");
  std::process::exit(0);
}

fn signal_handler() {
  ctrlc::set_handler(move || {
    interrupt_handler();
    RUN.store(false, Ordering::SeqCst);
  })
  .expect("Error setting SIGINT handler.");
}
