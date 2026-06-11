-- Directory Lister 
-- Copyright (c) 2026 by gungwald
-- GPL 2.0

with Ada.Command_Line;
with Ada.Directories;
with Ada.Exceptions;
with Ada.Strings.Fixed; 
with Ada.Text_IO; 
with GNAT.Directory_Operations;
with GNAT.OS_Lib;

use Ada.Command_Line;
use Ada.Directories;    -- Current_Directory
use Ada.Exceptions;
use Ada.Strings.Fixed;
use Ada.Text_IO;
use GNAT.Directory_Operations;
use GNAT.OS_Lib;

procedure Directory_Lister is

    MAX_ENTRY_NAME_LEN : constant Natural := 1024;

    procedure Close_Carefully(d : in out Dir_Type; Dir_Name : in String) is
    begin
        if Is_Open(d) then
            Close(d); -- This can raise a Directory_Error exception
        end if;
    exception
        when e:Directory_Error => 
            Put_Line("Failed to close directory: " & Dir_Name & ": " & Exception_Name(e) & ": " & Exception_Message(e) & ": " & Exception_Information(e));
    end Close_Carefully;
    
    procedure Print_Entry(Dir_Name: in String; Entry_Name: in String) is
        Full_Name : String := Dir_Name & Dir_Separator & Entry_Name;
    begin
        Put(Entry_Name);
        if Is_Directory(Full_Name) then
            Put_Line("/");
        else
            New_Line;
        end if;
    end Print_Entry;

    procedure List_Directory(Dir_Name: in String) is
        d : Dir_Type;
        Dir_Entry : String(1..MAX_ENTRY_NAME_LEN);
        Last_Char_Index : Natural;
    begin
        Open(d, Dir_Name);
        Read(d, Dir_Entry, Last_Char_Index);
        while Last_Char_Index /= 0 loop
            if Dir_Entry(1) /= '.' then
                Print_Entry(Dir_Name, Dir_Entry(1..Last_Char_Index));
            end if;
            Read(d, Dir_Entry, Last_Char_Index);
        end loop;
        Close_Carefully(d, Dir_Name);
    exception
        when e:Directory_Error => -- Directory_Error is thrown by Open and Read.
            Put_Line("Directory operation failed: " & Dir_name & ": " & Exception_Name(e) & ": " & Exception_Message(e) & ": " & Exception_Information(e));
            Close_Carefully(d, Dir_Name);
        when e:others =>
            Put_Line("Failed to list directory: " & Dir_name & ": " & Exception_Name(e) & ": " & Exception_Message(e) & ": " & Exception_Information(e));
            Close_Carefully(d, Dir_Name);
    end List_Directory;

-- Main Program
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
