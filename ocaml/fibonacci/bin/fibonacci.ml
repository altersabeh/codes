(* Fibonacci Series Calculator
 *
 * The Fibonacci Series Calculator is an OCaml program that calculates
 * and prints the Fibonacci series up to the nth term with arbitrary
 * precision. It includes features such as error handling for input
 * validation, handling special cases where numbers don't end in "th"
 * (e.g. 1, 2, 3), displaying the sum of the series, and providing
 * the current date and time.
 *
 * License: This program is in the public domain.
 *)

(* Functions to handle user input and errors *)
let validate_input input = try int_of_string input with Failure _ -> -1

and eof_handler _ =
  print_endline "";
  print_endline "End of File encountered.. Stopping...";
  print_endline "===================================================";
  exit 0

and interrupt_handler _ =
  print_endline "";
  print_endline "Interrupt received.. Exiting...";
  print_endline "===================================================";
  exit 0

let signal_handler () =
  Sys.set_signal Sys.sigint (Sys.Signal_handle interrupt_handler)

(* Display the current date and time *)
let rec date_and_time () =
  let current_time = Unix.gettimeofday () in
  let tm = Unix.localtime current_time in

  let formatted_date =
    Printf.sprintf "%s %02d, %04d - %02d:%02d:%02d"
      (month_to_string tm.Unix.tm_mon)
      tm.Unix.tm_mday (tm.Unix.tm_year + 1900) tm.Unix.tm_hour tm.Unix.tm_min
      tm.Unix.tm_sec
  in

  Printf.printf "Date and Time: %s\n" formatted_date

and month_to_string month =
  match month with
  | 0 -> "January"
  | 1 -> "February"
  | 2 -> "March"
  | 3 -> "April"
  | 4 -> "May"
  | 5 -> "June"
  | 6 -> "July"
  | 7 -> "August"
  | 8 -> "September"
  | 9 -> "October"
  | 10 -> "November"
  | 11 -> "December"
  | _ -> failwith "Invalid month"

(* Handle special cases where numbers don't end in "th" *)
let get_suffix n =
  match n mod 10 with
  | 1 when n mod 100 <> 11 -> "st"
  | 2 when n mod 100 <> 12 -> "nd"
  | 3 when n mod 100 <> 13 -> "rd"
  | _ -> "th"

(* Calculates and prints the Fibonacci series up to the nth term. *)
let fibonacci_series n =
  let a = ref Big_int.zero_big_int in
  let b = ref Big_int.unit_big_int in
  let sum = ref Big_int.zero_big_int in
  let temp = ref Big_int.zero_big_int in

  print_endline
    ("The Fibonacci series up to " ^ string_of_int n ^ get_suffix n ^ " term:");

  let series = Array.make (n + 1) Big_int.zero_big_int in

  for i = 0 to n do
    if n <= 5000 then series.(i) <- !a
    else (
      (* Print the series without using array *)
      print_string (Big_int.string_of_big_int !a);
      if i < n then print_string ", ");

    temp := !a;
    a := !b;
    b := Big_int.add_big_int !temp !b;
    sum := Big_int.add_big_int !sum !temp (* Calculate the sum *)
  done;

  if n <= 5000 then
    Array.iteri
      (fun i num ->
        print_string (Big_int.string_of_big_int num);
        if i < n then print_string ", ")
      series;

  print_endline "\n";
  print_endline
    ("Sum of the Fibonacci series: " ^ Big_int.string_of_big_int !sum)

(* Function to Get the User Input *)
let get_user_input () =
  let rec get_input () =
    print_string "Enter the value of n (an integer): ";
    try
      let input = read_line () in

      let trimmedinput = String.trim input in

      match trimmedinput with
      | "" ->
          print_endline "Please enter something...";
          get_input ()
      | "exit" ->
          print_endline "Exiting the program...";
          ()
      | _ ->
          let n = validate_input trimmedinput in

          if n > 0 then fibonacci_series n
          else (
            print_endline "Please enter a valid positive integer.";
            get_input ())
    with End_of_file -> eof_handler ()
  in
  get_input ()

let () =
  print_endline "============Fibonacci Series Calculator============";
  print_endline "This Program was Written Using: OCaml";

  signal_handler ();
  date_and_time ();
  get_user_input ();

  print_endline "==================================================="
