with Ada.Calendar;
with Ada.Calendar.Formatting;
with Ada.IO_Exceptions;
with Ada.Numerics.Big_Numbers.Big_Integers;
with Ada.Strings;
with Ada.Strings.Fixed;
with Ada.Strings.Unbounded;
with Ada.Text_IO;
with GNAT.OS_Lib;

procedure FIBONACCI is
  use Ada.Calendar;
  use Ada.Calendar.Formatting;
  use Ada.Numerics.Big_Numbers.Big_Integers;
  use Ada.Strings;
  use Ada.Strings.Fixed;
  use Ada.Strings.Unbounded;
  use Ada.Text_IO;

  procedure EOF_Handler is
  begin
    New_Line;
    Put_Line ("End of File encountered.. Stopping...");
    Put_Line ("===================================================");
    GNAT.OS_Lib.OS_Exit (0);
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

  procedure Date_And_Time is
    Current_Time   : constant Time   := Clock;
    Formatted_Time : constant String := Image (Current_Time);
  begin
    Put_Line ("Date and Time: " & Formatted_Time);
    Flush;
  end Date_And_Time;

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

  procedure Fibonacci_Series (N : Integer) is
    A      : Big_Integer := 0;
    B      : Big_Integer := 1;
    Temp   : Big_Integer;
    Sum    : Big_Integer := 0;
    Series : Unbounded_String;
  begin
    Put_Line
     ("Fibonacci Series up to the" & Integer'Image (N) & Get_Suffix (N) &
      " term:");

    for I in 0 .. N loop
      if N <= 5_000 then
        Append (Series, Trim (Big_Integer'Image (A), Both));
        if I < N then
          Append (Series, ", ");
        end if;
      else
        --  Print the series without using array
        Put (Trim (Big_Integer'Image (A), Both));
        if I < N then
          Put (", ");
        else
          New_Line;
        end if;
      end if;

      Temp := A;
      A    := B;
      B    := Temp + B;
      Sum  := Sum + Temp; -- Calculate the sum
    end loop;

    if N <= 5_000 then
      Put_Line (To_String (Series));
    end if;

    New_Line;
    Put_Line ("Sum of the Fibonacci Series:" & Big_Integer'Image (Sum));
  end Fibonacci_Series;

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
