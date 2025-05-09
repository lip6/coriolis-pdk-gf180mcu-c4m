/*                                                                      */
/*  Avertec Release v3.4p5 (64 bits on Linux 5.4.109+)                  */
/*  [AVT_only] host: runner-xxurkrix-project-41071638-concurrent-0      */
/*  [AVT_only] arch: x86_64                                             */
/*  [AVT_only] path: /opt/tasyag-3.4p5/bin/avt_shell                    */
/*  argv:                                                               */
/*                                                                      */
/*  User: root                                                          */
/*  Generation date Mon May 22 11:35:14 2023                            */
/*                                                                      */
/*  Verilog data flow description generated from `mx3_x2`               */
/*                                                                      */


`timescale 1 ps/1 ps

module mx3_x2 (q, cmd0, cmd1, i0, i1, i2);

  output q;
  input  cmd0;
  input  cmd1;
  input  i0;
  input  i1;
  input  i2;

  wire v_net4;
  wire v_net3;
  wire v_net5;

  assign v_net5 = ((~(i0) & ~(cmd0)) | (~(cmd1) & ~(i2) & ~(v_net4)) | (~(v_net3)
& ~(i1) & ~(v_net4)));
  assign v_net3 = ~(cmd1);
  assign v_net4 = ~(cmd0);

  assign q = ~(v_net5);

endmodule
