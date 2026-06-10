-- Directory Lister 
-- Copyright (c) 2026 by gungwald
-- GPL 2.0

with Ada.Command_Line;
with Ada.Directories;
with Ada.Exceptions;
with Ada.Strings.Fixed; 
with Ada.Strings.Unbounded; 
with Ada.Text_IO; 
with GNAT.Directory_Operations;
with GNAT.OS_Lib;

use Ada.Command_Line;
use Ada.Directories;    -- Current_Directory
use Ada.Exceptions;
use Ada.Strings.Fixed;
use Ada.Strings.Unbounded; 
use Ada.Text_IO;
use GNAT.Directory_Operations;
use GNAT.OS_Lib;

procedure Directory_Lister is

    procedure Print_Entry(Dir_Name: in String; Entry_Name: in String) is
        Full_Name : String;
    begin
        Put(Entry_Name);
        Full_Name := Dir_Name & Dir_Separator & Entry_Name;
        if Is_Directory(To_String(Full_Name)) then
            Put_Line("/");
        else
            New_Line();
        end if;
    end Print_Entry;

    procedure List_Directory(Dir_Name: in String) is
        d : Dir_Type;
        Dir_Entry : String;
        Last_Char_Index : Natural;
    begin
        Open(d, Dir_Name);
        loop
            Read(d, Dir_Entry, Last_Char_Index);
            exit when Last_Char_Index = 0;
            if Dir_Entry(1) /= '.' then
                Print_Entry(Dir_Name, Dir_Entry(1..Last_Char_Index));
            end if;
        end loop;
        Close(d);
    exception
        -- Thrown by Open
        when e:File_Not_Found => 
            Put_Line("Directory " & Dir_name & "was not found: " & Exception_Name(e) & ": " & Exception_Message(e));
        -- Thrown by Read
        when e:End_Of_File => 
            Close(d);
        when e:others =>
            Put_Line("Directory " & Dir_name & ": " & Exception_Name(e) & ": " & Exception_Message(e) & ": " & Exception_Information(e));
    end List_Directory;

-- Directory_Lister
begin
    if Argument_Count > 0 then
        for i in Natural range 1..Argument_Count loop
            List_Directory(Argument(i));
        end loop;
    else
        List_Directory(Current_Directory);
    end if;
exception
    when e:others => Put_Line(Exception_Name(e) & ": " & Exception_Message(e));
end Directory_Lister;
