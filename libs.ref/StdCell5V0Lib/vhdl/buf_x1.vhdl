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
--  VHDL data flow description generated from `buf_x1`
--  

library IEEE;
use IEEE.std_logic_1164.all;

-- Entity Declaration

ENTITY buf_x1 IS
  PORT (
         i : in    STD_LOGIC;
         q : out   STD_LOGIC
  );
END buf_x1;

-- Architecture Declaration

ARCHITECTURE RTL OF buf_x1 IS
  SIGNAL ni : STD_LOGIC;

BEGIN


  ni <= not (i);

  q <= not (ni);

END;
