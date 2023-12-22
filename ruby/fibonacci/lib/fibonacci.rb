# Fibonacci Series Calculator
#
# The Fibonacci Series Calculator is a Ruby program that calculates
# and prints the Fibonacci Series up to the nth term with arbitrary
# precision. It includes features such as error handling for input
# validation, handling special cases where numbers don't end in "th"
# (e.g. 1, 2, 3), displaying the sum of the series, and providing the
# current date and time.
#
# License: This program is in the public domain.

require "date"

def main
  puts "============Fibonacci Series Calculator============"
  puts "This Program was Written Using: Ruby"

  signal_handler
  date_and_time
  get_user_input

  puts "==================================================="
end

# Function to Get the User Input
def get_user_input
  loop do
    print "Enter the value of n (an integer): "

    user_input = gets
    if user_input.nil?
      eof_handler
    end

    trimmed_input = user_input.strip

    if trimmed_input == ""
      puts "Please enter something..."
      next
    elsif trimmed_input == "exit"
      puts "Exiting the program..."
      break
    end

    n = validate_input(trimmed_input)

    if n
      fibonacci_series(n)
      break
    else
      puts "Please enter a valid positive integer."
    end
  end
end

# Calculates and prints the Fibonacci Series up to the nth term
def fibonacci_series(n)
  a = 0
  b = 1
  temp = nil
  sum = 0

  puts "Fibonacci Series up to the #{n}#{get_suffix(n)} term:"

  series = []

  (1..n + 1).each do |i|
    if n <= 5000
      series << a
    else
      # Print the series without using array
      print a
      print ", " unless i > n
      puts "" if i > n
    end

    temp = a
    a = b
    b = temp + b
    sum += temp # Calculate the sum
  end

  if n <= 5000
    puts series.join(", ")
  end

  puts "\n"
  puts "Sum of the Fibonacci Series: #{sum}"
end

# Handle special cases where numbers don't end in "th"
def get_suffix(n)
  return "th" if (10...14).cover?(n % 100)

  case n % 10
  when 1 then "st"
  when 2 then "nd"
  when 3 then "rd"
  else "th"
  end
end

# Display the current date and time
def date_and_time
  current_date = DateTime.now

  layout = "%B %d, %Y - %H:%M:%S"
  formatted_date = current_date.strftime(layout)

  puts "Date and Time: " + formatted_date
end

# Functions to handle user input and error
def validate_input(user_input)
  n = user_input.strip.to_i
  ((n > 0) && (user_input.strip == n.to_s)) ? n : nil
end

def eof_handler
  puts ""
  puts "End of File encountered.. Exiting..."
  puts "==================================================="
  exit
end

def interrupt_handler
  warn ""
  warn "Interrupt received.. Exiting..."
  warn "==================================================="
  exit
end

def signal_handler
  Signal.trap("INT") { interrupt_handler }
end

main
