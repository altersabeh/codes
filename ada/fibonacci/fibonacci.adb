with Ada.Integer_Text_IO;   use Ada.Integer_Text_IO;
with Ada.Strings;           use Ada.Strings;
with Ada.Strings.Fixed;     use Ada.Strings.Fixed;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Numerics.Big_Numbers.Big_Integers;
use Ada.Numerics.Big_Numbers.Big_Integers;

procedure FIBONACCI is
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
     ("Fibonacci series up to the" & Integer'Image (N) & Get_Suffix (N) &
      " term:");

    for I in 0 .. N loop
      if N <= 5000 then
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

    if N <= 5000 then
      Put_Line (To_String (Series));
    end if;

    New_Line;
    Put_Line ("Sum of the Fibonacci Series:" & Big_Integer'Image (Sum));
  end Fibonacci_Series;

  procedure Get_User_Input is
    N : Integer;
  begin
    Put ("Enter the value of n (an integer): ");
    Get (Item => N);
    Fibonacci_Series (N);
  end Get_User_Input;

  procedure Main is
  begin
    Put_Line ("============Fibonacci Series Calculator============");
    Put_Line ("This Program was Written Using: Ada");

    Get_User_Input;

    Put_Line ("===================================================");
  end Main;
begin
  Main;
end FIBONACCI;
