/// <summary>
/// Fibonacci Series Calculator
///
/// The Fibonacci  handling spSeries Calculator is a F# program that
/// calculates and prints the Fibonacci Series up to the nth term with
/// arbitrary precision. It includes features such as error handling
/// for input validation, special cases where numbers don't end in
/// "th" (e.g. 1, 2, 3), displaying the sum of the series, and
/// providing the current date and time.
///
/// License: This program is in the public domain.
/// </summary>

open System
open System.Numerics

// Functions to handle user input and errors
let validateInput input =
  match Int32.TryParse(input: string) with
  | true, n when n > 0 -> Some n
  | _ -> None

let eofHandler () =
  printfn ""
  printfn "End of File encountered.. Stopping..."
  printfn "==================================================="
  Environment.Exit(1)

let mutable cancelRequested = false

let interruptHandler (e: ConsoleCancelEventArgs) =
  cancelRequested <- true
  printfn ""
  printfn "Interrupt received.. Exiting..."
  printfn "==================================================="
  Environment.Exit(0)

let signalHandler () =
  Console.CancelKeyPress.Add(interruptHandler)

// Display the current date and time
let dateAndTime () =
  let currentDate = DateTime.Now

  let layout = "MMMM dd, yyyy - HH:mm:ss"
  let formattedDate = currentDate.ToString(layout)

  printfn "Date and Time: %s" formattedDate

// Handle special cases where numbers don't end in "th"
let getSuffix n =
  if n % 100 >= 11 && n % 100 <= 13 then
    "th"
  else
    match n % 10 with
    | 1 -> "st"
    | 2 -> "nd"
    | 3 -> "rd"
    | _ -> "th"

// Calculates and prints the Fibonacci Series up to the nth term.
let fibonacciSeries n =
  printfn "Fibonacci Series up to the %d%s term: " n (getSuffix n)

  if n <= 5000 then
    let rec fib
      (a: BigInteger)
      (b: BigInteger)
      (n: int)
      (temp: BigInteger list)
      =
      if cancelRequested then []
      elif n = 0 then List.rev temp
      else fib b (a + b) (n - 1) (b :: temp)

    let series: BigInteger list = fib 0I 1I (n) []
    let sum: BigInteger = List.sum series // Calculate the sum

    printf "%s" (String.Join(", ", List.map string (0I :: series)))
    printfn "\n"
    printfn "Sum of the Fibonacci Series: %A" sum
  else
    // Print the series without using array
    let rec fib n (a: BigInteger) (b: BigInteger) (sum: BigInteger) =
      if cancelRequested then
        sum
      elif n >= 0 then
        let temp: BigInteger = a
        printf "%A" a

        if n >= 1 then
          printf ", "

        fib (n - 1) b (b + temp) (sum + temp)
      else
        sum

    let sum: BigInteger = fib (n) 0I 1I 0I

    if not cancelRequested then
      printfn "\n"
      printfn "Sum of the Fibonacci Series: %A" sum
    else
      Environment.Exit(0)

// Function to Get the User Input
let rec getUserInput () =
  printf "Enter the value of n (an integer): "
  let input: string = Console.ReadLine()

  if input = null then
    eofHandler ()

  let trimmedInput: string = input.Trim()

  match trimmedInput with
  | _ when String.IsNullOrWhiteSpace(trimmedInput) ->
    printfn "Please enter something..."
    getUserInput ()
  | _ when trimmedInput = "exit" ->
    printfn "Exiting the program..."
    ()
  | _ ->
    match validateInput trimmedInput with
    | Some n -> fibonacciSeries n
    | None ->
      printfn "Please enter a valid positive integer."
      getUserInput ()

[<EntryPoint>]
let main (argv: string array) =
  printfn "============Fibonacci Series Calculator============"
  printfn "This Program was Written Using: F#"

  signalHandler ()
  dateAndTime ()
  getUserInput ()

  printfn "==================================================="
  0
