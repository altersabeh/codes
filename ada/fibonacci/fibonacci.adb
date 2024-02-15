--  @summary
--  Fibonacci Series Calculator
--
--  The Fibonacci Series Calculator is an Ada program that calculates
--  and prints the Fibonacci Series up to the nth term with arbitrary
--  precision. It includes features such as error handling for input
--  validation, handling special cases where numbers don't end in
--  "th" (e.g. 1, 2, 3), displaying the sum of the series, and
--  providing the current date and time.
--
--  License: This program is in the public domain.
--

with Ada.Calendar;
with Ada.Calendar.Formatting;
with Ada.IO_Exceptions;
with Ada.Strings;
with Ada.Strings.Fixed;
with Ada.Strings.Unbounded;
with Ada.Text_IO;
with GNAT.OS_Lib;
with GNATCOLL.GMP.Integers;

procedure FIBONACCI is
  use Ada.Calendar;
  use Ada.Calendar.Formatting;
  use Ada.Strings;
  use Ada.Strings.Fixed;
  use Ada.Strings.Unbounded;
  use Ada.Text_IO;
  use GNAT.OS_Lib;
  use GNATCOLL.GMP.Integers;

  --  Functions to handle user input and errors
  procedure EOF_Handler is
  begin
    New_Line;
    Put_Line ("End of File encountered.. Stopping...");
    Put_Line ("===================================================");
    OS_Exit (0);
  end EOF_Handler;

  function Validate_Input (Input : String) return Integer is
    N     : Integer;
    Value : Integer;
  begin
    Value := -1;

    if Input'Length > 0 then
      begin
        N     := Integer'Value (Input);
        Value := N;
      exception
        when Constraint_Error =>
          null;
      end;
    end if;
    return Value;
  end Validate_Input;

  --  Display the current date and time
  procedure Date_And_Time is
    Current_Time   : constant Time   := Clock;
    Formatted_Time : constant String := Image (Current_Time);
  begin
    Put_Line ("Date and Time: " & Formatted_Time);
    Flush;
  end Date_And_Time;

  --  Handle special cases where numbers don't end in "th"
  function Get_Suffix (N : Integer) return String is
  begin
    if N mod 10 = 1 and then N mod 100 /= 11 then
      return "st";
    elsif N mod 10 = 2 and then N mod 100 /= 12 then
      return "nd";
    elsif N mod 10 = 3 and then N mod 100 /= 13 then
      return "rd";
    else
      return "th";
    end if;
  end Get_Suffix;

  --  Calculates and prints the Fibonacci Series up to the nth term.
  procedure Fibonacci_Series (N : Integer) is
    A      : Big_Integer;
    B      : Big_Integer;
    Temp   : Big_Integer;
    Sum    : Big_Integer;
    Series : Unbounded_String;
  begin
    Set (A, 0);
    Set (B, 1);

    Put_Line
     ("Fibonacci Series up to the" & Integer'Image (N) & Get_Suffix (N) &
      " term:");

    for I in 0 .. N loop
      if N <= 5_000 then
        Append (Series, String'(Image (A)));
        if I < N then
          Append (Series, ", ");
        end if;
      else
        --  Print the series without using array
        Put (String'(Image (A)));
        if I < N then
          Put (", ");
        else
          New_Line;
        end if;
      end if;

      SET (Temp, A);
      SET (A, B);
      ADD (B, B, Temp);
      ADD (Sum, Sum, Temp); -- Calculate the sum
    end loop;

    if N <= 5_000 then
      Put_Line (To_String (Series));
    end if;

    New_Line;
    Put_Line ("Sum of the Fibonacci Series: " & String'(Image (Sum)));
  end Fibonacci_Series;

  --  Function to Get the User Input
  procedure Get_User_Input is
    N     : Integer;
    Input : String (1 .. 100);
    Last  : Natural;
  begin
    loop
      Put ("Enter the value of n (an integer): ");
      Input := [others => ' '];
      Get_Line (Input, Last);

      declare
        Trimmed_Input : constant String := Trim (Input, Both);

      begin
        if Trimmed_Input (1 .. Last) = "" then
          Put_Line ("Please enter something...");
          goto Continue;
        elsif Trimmed_Input (1 .. Last) = "exit" then
          Put_Line ("Exiting the program...");
          exit;
        end if;

        N := Validate_Input (Trimmed_Input);

        if N > 0 then
          Fibonacci_Series (N);
          exit;
        else
          Put_Line ("Please enter a valid positive integer.");
        end if;

        <<Continue>>
      end;
    end loop;
  exception
    when Ada.IO_Exceptions.End_Error =>
      EOF_Handler;
  end Get_User_Input;

  procedure Main is
  begin
    Put_Line ("============Fibonacci Series Calculator============");
    Put_Line ("This Program was Written Using: Ada");

    Date_And_Time;
    Get_User_Input;

    Put_Line ("===================================================");
  end Main;
begin
  Main;
end FIBONACCI;
