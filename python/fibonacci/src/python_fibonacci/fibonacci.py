"""
Fibonacci Series Calculator

The Fibonacci Series Calculator is a Python program that calculates
and prints the Fibonacci Series up to the nth term with arbitrary
precision. It includes features such as error handling for input
validation, handling special cases where numbers don't end in "th"
(e.g. 1, 2, 3), displaying the sum of the series, and providing the
current date and time.

License: This program is in the public domain.
"""

import os
import signal
import sys

from datetime import datetime

def main():
  print("============Fibonacci Series Calculator============")
  print("This Program was Written Using: Python")

  signal_handler()
  date_and_time()
  get_user_input()

  print("===================================================")

# Function to Get the User Input
def get_user_input():
  sys.set_int_max_str_digits(0)
  while True:
    try:
      user_input = input("Enter the value of n (an integer): ")

      trimmed_input = user_input.strip()

      if trimmed_input == '':
        print("Please enter something...")
        continue
      elif trimmed_input == 'exit':
        print("Exiting the program...")
        break

      n = validate_input(trimmed_input)

      if n is not None:
        fibonacci_series(n)
        break
      else:
        print("Please enter a valid positive integer.")
    except EOFError:
      eof_handler()

# Calculates and prints the Fibonacci Series up to the nth term.
def fibonacci_series(n):
  a, b = 0, 1
  temp = None
  sum = 0

  print(f"Fibonacci Series up to the {n}{get_suffix(n)} term:")

  series = []

  for i in range(0, n + 1):
    if n <= 5000:
      series.append(a)
    else:
      # Print the series without using array
      print(a, end="")
      if i < n:
        print(", ", end="")

    temp = a
    a = b
    b = temp + b
    sum += temp  # Calculate the sum

  if n <= 5000:
    print(", ".join(map(str, series)), end="")

  print("\n")
  print(f"Sum of the Fibonacci Series: {sum}")

# Handle special cases where numbers don't end in "th"
def get_suffix(n):
  if 11 <= n % 100 <= 13:
    return "th"
  else:
    return {1: "st", 2: "nd", 3: "rd"}.get(n % 10, "th")

# Display the current date and time
def date_and_time():
  current_date = datetime.now()

  layout = "%B %d, %Y - %H:%M:%S"
  formatted_date = current_date.strftime(layout)

  print("Date and Time: " + formatted_date)

# Functions to handle user input and errors
def validate_input(user_input):
  try:
    n = int(user_input)
    if n > 0:
      return n
    else:
      return None
  except ValueError:
    return None

def eof_handler():
  print()
  print("End of File encountered.. Stopping...")
  print("==================================================")
  sys.exit()

def interrupt_handler(sig, frame):
  os.write(sys.stdout.fileno(), b"\n")
  os.write(sys.stdout.fileno(), b"Interrupt received.. Exiting...\n")
  os.write(sys.stdout.fileno(), b"==================================================\n")
  sys.exit()

def signal_handler():
  signal.signal(signal.SIGINT, interrupt_handler)

if __name__ == "__main__":
  main()
