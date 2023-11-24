module InputHandler = struct
  let get_user_name () =
    print_string "Enter your name: ";
    let userinput = read_line () in
    String.trim userinput
end

module Greeter = struct
  type username = string option
  type t = { username : username }

  let create name = { username = name }

  let get_greeting_message = function
    | Some name when name <> "" -> "Hello, " ^ name ^ "!"
    | _ -> "Hello, Stranger!"

  let greet greeter =
    let greeting = get_greeting_message greeter.username in
    Printf.printf "%s\n" greeting;
    print_endline "Greetings from OCaml!"
end

let () =
  let name = InputHandler.get_user_name () in
  let greeter = Greeter.create (Some name) in
  Greeter.greet greeter
