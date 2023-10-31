// Fibonacci Series Calculator
//
// The Fibonacci Series Calculator is a Go program that calculates and
// prints the Fibonacci series up to the nth term with arbitrary
// precision. It includes features such as error handling for input
// validation, handling special cases where numbers don't end in "th"
// (e.g. 1, 2, 3), displaying the sum of the series, and providing the
// current date and time.
//
// License: This program is in the public domain.

package main

import (
	"bufio"
	"fmt"
	"io"
	"math/big"
	"os"
	"os/signal"
	"strings"
	"time"
)

func main() {
	fmt.Println("============Fibonacci Series Calculator============")
	fmt.Println("This Program was Written Using: Go")

	signalHandler()
	dateAndTime()
	getUserInput()

	fmt.Println("===================================================")
}

// Function to Get the User Input
func getUserInput() {
	reader := bufio.NewReader(os.Stdin)

	for {
		fmt.Print("Enter the value of n (an integer): ")
		input, err := reader.ReadString('\n')

		if err == io.EOF {
			eofHandler()
		}

    trimmedInput := strings.TrimSpace(input)

    if trimmedInput == "" {
			fmt.Println("Please enter something...")
			continue
		} else if trimmedInput == "exit" {
			fmt.Println("Exiting the program...")
			break
		}

		n := validateInput(trimmedInput)

		if n > 0 {
			fibonacciSeries(n)
			break
		} else {
			fmt.Println("Please enter a valid positive integer.")
		}
	}
}

// Calculates and prints the Fibonacci series up to the nth term.
func fibonacciSeries(n int) {
	a := new(big.Int)
	b := new(big.Int)
	temp := new(big.Int)
	sum := new(big.Int)

	a.SetUint64(0)
	b.SetUint64(1)

	fmt.Printf("Fibonacci series up to the %d%s term:\n", n, getSuffix(n))

	var series []string

	for i := 0; i <= n; i++ {
    if n <= 5000 {
		  series = append(series, a.String())
    } else {
      // Print the series without using array
      fmt.Print(a.String())
      if i < n {
        fmt.Print(", ")
      } else {
        fmt.Println("")
      }
    }

		temp.Set(a)
		a.Set(b)
		b.Add(b, temp)
		sum.Add(sum, temp) // Calculate the sum
	}
  if n <= 5000 {
	  fmt.Println(strings.Join(series, ", "))
  }

  fmt.Println("")
	fmt.Println("Sum of the Fibonacci series:", sum.String())
}

// Handle special cases where numbers don't end in "th"
func getSuffix(n int) string {
	if n%10 == 1 && n%100 != 11 {
		return "st"
	} else if n%10 == 2 && n%100 != 12 {
		return "nd"
	} else if n%10 == 3 && n%100 != 13 {
		return "rd"
	} else {
		return "th"
	}
}

func dateAndTime() {
	currentDate := time.Now()

	format := "January 02, 2006 - 15:04:05"
	formattedDate := currentDate.Format(format)

	fmt.Println("Date and Time:", formattedDate)
}

// Functions to handles user input and errors
func validateInput(input string) int {
	n := new(big.Int)
	n, ok := n.SetString(input, 10)
	if !ok || n.Cmp(big.NewInt(0)) < 1 {
		return -1
	}
	return int(n.Int64())
}

func eofHandler() {
	fmt.Println()
	fmt.Println("End of File encountered.. Stopping...")
	fmt.Println("===================================================")
	os.Exit(0)
}

func interruptHandler(callback func()) {
	c := make(chan os.Signal, 1)
	signal.Notify(c, os.Interrupt)
	go func() {
		<-c
		fmt.Println()
		fmt.Println("Interrupt received.. Exiting...")
		fmt.Println("===================================================")
		callback()
		os.Exit(0)
	}()
}

func signalHandler() {
  interruptHandler(func() {})
}
