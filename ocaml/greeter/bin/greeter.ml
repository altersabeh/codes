module InputHandler = struct
  let get_user_name () =
    print_string "Enter your name: ";
    let user_input = read_line () in

    let name = String.trim user_input in

    if name = "" then "Stranger" else name
end

module Greeter = struct
  type t = { username : string }

  let create name = { username = name }

  let greet greeter =
    Printf.printf "Hello, %s!\n" greeter.username;
    print_endline "Greetings from OCaml!"
end

let () =
  let name = InputHandler.get_user_name () in
  let greeter = Greeter.create name in

  Greeter.greet greeter
