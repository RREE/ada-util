-----------------------------------------------------------------------
--  util-commands -- Support to make command line tools
--  Copyright (C) 2017 Stephane Carrez
--  Written by Stephane Carrez (Stephane.Carrez@gmail.com)
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
-----------------------------------------------------------------------
package Util.Commands is

   --  The argument list interface that gives access to command arguments.
   type Argument_List is limited interface;

   --  Get the number of arguments available.
   function Get_Count (List : in Argument_List) return Natural is abstract;

   --  Get the argument at the given position.
   function Get_Argument (List : in Argument_List;
                          Pos  : in Positive) return String is abstract;

   type Default_Argument_List (Offset : Natural) is new Argument_List with null record;

   --  Get the number of arguments available.
   overriding
   function Get_Count (List : in Default_Argument_List) return Natural;

   --  Get the argument at the given position.
   overriding
   function Get_Argument (List : in Default_Argument_List;
                          Pos  : in Positive) return String;

end Util.Commands;
