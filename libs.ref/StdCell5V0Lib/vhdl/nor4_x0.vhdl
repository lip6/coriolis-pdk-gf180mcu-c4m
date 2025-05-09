--  
--  Avertec Release v3.4p5 (64 bits on Linux 5.4.109+)
--  [AVT_only] host: runner-xxurkrix-project-41071638-concurrent-0
--  [AVT_only] arch: x86_64
--  [AVT_only] path: /opt/tasyag-3.4p5/bin/avt_shell
--  argv: 
--  
--  User: root
--  Generation date Mon May 22 11:35:14 2023
--  
--  VHDL data flow description generated from `nor4_x0`
--  

library IEEE;
use IEEE.std_logic_1164.all;

-- Entity Declaration

ENTITY nor4_x0 IS
  PORT (
         nq : out   STD_LOGIC;
         i0 : in    STD_LOGIC;
         i1 : in    STD_LOGIC;
         i2 : in    STD_LOGIC;
         i3 : in    STD_LOGIC
  );
END nor4_x0;

-- Architecture Declaration

ARCHITECTURE RTL OF nor4_x0 IS

BEGIN


  nq <= (not (i3) and not (i2) and not (i1) and not (i0));

END;
