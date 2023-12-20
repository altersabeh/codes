defmodule Fibonacci do
  @moduledoc """
  Fibonacci Series Calculator

  The Fibonacci Series Calculator is an Elixir program that calculates
  and prints the Fibonacci series up to the nth term with arbitrary
  precision. It includes features such as error handling for input
  validation, handling special cases where numbers don't end in "th"
  (e.g. 1, 2, 3), displaying the sum of the series, and providing the
  current date and time.

  License: This program is in the public domain.
  """

  def start(_) do
    IO.puts("============Fibonacci Series Calculator============")
    IO.puts("This Program was Written Using: Elixir")

    get_user_input()

    IO.puts("===================================================")
  end

  defp get_user_input do
    IO.write("Enter the value of n (an integer): ")
    input = IO.gets("") |> String.trim()

    trimmedinput = String.trim(input)

    case trimmedinput do
      "" ->
        IO.puts("Please enter something...")
        get_user_input()

      "exit" ->
        IO.puts("Exiting the program...")
        :ok

      _ ->
        n = validate_input(trimmedinput)

        if n > 0 do
          fibonacci_series(n)
        else
          IO.puts("Please enter a valid positive integer.")
          get_user_input()
        end
    end
  end

  def fibonacci_series(n) do
    a = 0
    b = 1
    temp = 0
    sum = 0

    IO.puts("The Fibonacci series up to the #{n}#{get_suffix(n)} term:")

    series = []

    {_, _, _, sum, series} =
      Enum.reduce(0..n, {a, b, temp, sum, series}, fn i, state->
        {a, b, _, sum, series} = state

        series = if i <= n, do: [Integer.to_string(a) | series], else: series

        if n > 5000 and i <= n do
          IO.write("#{a}")
          if i < n, do: IO.write(", ")
        end

        temp = a
        a = b
        b = temp + b
        sum = sum + temp

        {a, b, temp, sum, series}
      end)

    if n <= 5000 do
      IO.write(Enum.reverse(series) |> Enum.join(", "))
    end

    IO.puts("\n")
    IO.puts("Sum of the Fibonacci series: #{sum}")
  end

  def get_suffix(n) do
    cond do
      rem(n, 10) == 1 and rem(n, 100) != 11 -> "st"
      rem(n, 10) == 2 and rem(n, 100) != 12 -> "nd"
      rem(n, 10) == 3 and rem(n, 100) != 13 -> "rd"
      true -> "th"
    end
  end

  defp validate_input(input) do
    case Integer.parse(input) do
      {n, _} when n > 0 -> n
      _ -> -1
    end
  end
end
