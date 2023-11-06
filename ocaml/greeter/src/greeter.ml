(* Hello World from OCaml ! *)

let () =
  print_string "Please enter your name :";
  let user_input = read_line () in
  Printf.printf "Hello, %s!\n" user_input
