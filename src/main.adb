with Ada.Text_IO;
use Ada.Text_IO;
with loadsets;
with Interfaces.C; use Interfaces.C;
with Ada.Calendar;
use Ada.Calendar;
with Ada.Integer_Text_IO ; use Ada.Integer_Text_IO ;
procedure Main is
   function Sys (Arg : Char_Array) return Integer;
   pragma Import(C, Sys, "system");
   Ret_Val : Integer;
   Str  : String (1 .. 50);
   Last : Natural;
   Ch : Character:='d';
   Available : Boolean:= False;
   CurrentTime, TargetTime: Time;
   HoursDelay: Integer;
   Year    :  Year_Number;
   Month   :  Month_Number;
   Day     :  Day_Number;
   Seconds :  Day_Duration;

begin
   CurrentTime := Clock;
   Split(CurrentTime, Year, Month, Day, Seconds);
   Put(Day);
   if (Day mod 2 = 0) then Put_Line("Alarm!!!  asparagus need water!!!!");
      Ret_Val := Sys(To_C("aplay /usr/bin/uss.wav"));
      end if;
   Put_Line("Welcome to Asparagus Control!");
   Put_Line("Enter command, press <s> - <start> new loop, <b> - break current loop");
   loop
      loop
         Get_Immediate(Ch);
         if (Ch = 's') then exit;
         end if;
         if (Ch = 'b') then exit;
            end if;
      end loop;
      if (Ch='s') then
         Put_Line("Enter delay (hours)");
         Get(HoursDelay);
      --   TargetTime := "+"(Clock,HoursDelay*3600);

         end if;
      --  Get_Line(Str, Last);
      Put_Line("Enter delay from current rime (minutes)");
      Ret_Val := Sys(To_C("aplay vehicle012.wav"));
   end loop;
end Main;

