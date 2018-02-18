with Ada.Text_IO;
use Ada.Text_IO;
with Interfaces.C; use Interfaces.C;
procedure Main is
   function Sys (Arg : Char_Array) return Integer;
   pragma Import(C, Sys, "system");
   Ret_Val : Integer;
   Str  : String (1 .. 50);
   Last : Natural;
   Ch : Character:='d';
   Available : Boolean:= False;
begin
   loop
      Put_Line("Enter command, press <s> - <start> new loop, <b> - break current loop");
      loop
         Get_Immediate(Ch);
         exit when Ch = 's';
      end loop;

      Put_Line("!!!!!!!!!!");
      --  Get_Line(Str, Last);
      Put_Line("Enter delay from current rime (minutes)");
      Ret_Val := Sys(To_C("aplay vehicle012.wav"));

   end loop;
end Main;
