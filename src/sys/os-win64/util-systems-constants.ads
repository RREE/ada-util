--  Generated by utildgen.c from system includes
with Interfaces.C;
package Util.Systems.Constants is

   pragma Pure;

   --  Flags used when opening a file with open/creat.
   O_RDONLY                      : constant Interfaces.C.int := 8#000000#;
   O_WRONLY                      : constant Interfaces.C.int := 8#000001#;
   O_RDWR                        : constant Interfaces.C.int := 8#000002#;
   O_CREAT                       : constant Interfaces.C.int := 8#000400#;
   O_EXCL                        : constant Interfaces.C.int := 8#002000#;
   O_TRUNC                       : constant Interfaces.C.int := 8#001000#;
   O_APPEND                      : constant Interfaces.C.int := 8#000010#;
   O_CLOEXEC                     : constant Interfaces.C.int := 8#100000#;
   O_SYNC                        : constant Interfaces.C.int := 0;
   O_DIRECT                      : constant Interfaces.C.int := 0;


   DLL_OPTIONS   : constant String := "-ldl";
   SYMBOL_PREFIX : constant String := "";

end Util.Systems.Constants;
