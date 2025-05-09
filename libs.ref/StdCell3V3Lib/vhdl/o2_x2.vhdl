--  
--  Avertec Release v3.4p5 (64 bits on Linux 5.4.109+)
--  [AVT_only] host: runner-xxurkrix-project-41071638-concurrent-0
--  [AVT_only] arch: x86_64
--  [AVT_only] path: /opt/tasyag-3.4p5/bin/avt_shell
--  argv: 
--  
--  User: root
--  Generation date Mon May 22 11:35:13 2023
--  
--  VHDL data flow description generated from `o2_x2`
--  

library IEEE;
use IEEE.std_logic_1164.all;

-- Entity Declaration

ENTITY o2_x2 IS
  PORT (
          q : out   STD_LOGIC;
         i0 : in    STD_LOGIC;
         i1 : in    STD_LOGIC
  );
END o2_x2;

-- Architecture Declaration

ARCHITECTURE RTL OF o2_x2 IS
  SIGNAL v_net1 : STD_LOGIC;

BEGIN


  v_net1 <= (not (i1) and not (i0));

  q <= not (v_net1);

END;
