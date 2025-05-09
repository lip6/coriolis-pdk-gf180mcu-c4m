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
--  VHDL data flow description generated from `sff1r_x4`
--  

library IEEE;
use IEEE.std_logic_1164.all;

-- Entity Declaration

ENTITY sff1r_x4 IS
  PORT (
           ck : in    STD_LOGIC;
            i : in    STD_LOGIC;
         nrst : in    STD_LOGIC;
            q : inout STD_LOGIC
  );
END sff1r_x4;

-- Architecture Declaration

ARCHITECTURE RTL OF sff1r_x4 IS
  SIGNAL sff_m : STD_LOGIC;
  SIGNAL u : STD_LOGIC;
  SIGNAL sff_s : STD_LOGIC;
  SIGNAL y : STD_LOGIC;
  SIGNAL ckr : STD_LOGIC;
  SIGNAL nckr : STD_LOGIC;

BEGIN


  nckr <= not (ck);
  ckr <= not (nckr);
  y <= (not (sff_m) or not (nrst));
  sff_s <= ((not (ckr) and not (nrst)) or (not (ckr) and not (q)) or (not (nckr)
and not (nrst)) or (not (nckr) and not (sff_m)));
  u <= not (i);

REG0: PROCESS (nckr, u, ckr)
BEGIN
  IF nckr = '1' THEN
    sff_m <= not (u);
  END IF;
  IF ckr = '0' THEN
    sff_m <= not (u);
  END IF;
END PROCESS;

  q <= not (sff_s);

END;
