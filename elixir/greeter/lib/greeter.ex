defmodule InputHandler do
  def get_user_name do
    IO.gets("Enter your name: ")
    |> String.trim()
    |> case do
      "" -> "Stranger"
      name -> name
    end
  end
end

defmodule Greeter do
  defstruct username: ""

  def create(name) do
    %Greeter{username: name}
  end

  def greet(%Greeter{username: name}) do
    IO.puts("Hello, #{name}!")
    IO.puts("Greetings from Elixir!")
  end

  def start(_) do
    name = InputHandler.get_user_name()
    greeter = Greeter.create(name)

    Greeter.greet(greeter)
  end
end
