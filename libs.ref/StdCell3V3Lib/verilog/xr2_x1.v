/*                                                                      */
/*  Avertec Release v3.4p5 (64 bits on Linux 5.4.109+)                  */
/*  [AVT_only] host: runner-xxurkrix-project-41071638-concurrent-0      */
/*  [AVT_only] arch: x86_64                                             */
/*  [AVT_only] path: /opt/tasyag-3.4p5/bin/avt_shell                    */
/*  argv:                                                               */
/*                                                                      */
/*  User: root                                                          */
/*  Generation date Mon May 22 11:35:13 2023                            */
/*                                                                      */
/*  Verilog data flow description generated from `xr2_x1`               */
/*                                                                      */


`timescale 1 ps/1 ps

module xr2_x1 (q, i0, i1);

  output q;
  input  i0;
  input  i1;

  wire v_net3;
  wire v_net0;

  assign v_net0 = ~(i0);
  assign v_net3 = ~(i1);

  assign q = ((~(v_net3) & ~(i1)) | (~(v_net3) & ~(i0)) | (~(v_net0) & ~(i1))
| (~(v_net0) & ~(i0)));

endmodule
