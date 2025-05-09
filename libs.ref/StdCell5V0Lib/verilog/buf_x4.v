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
/*  Verilog data flow description generated from `buf_x4`               */
/*                                                                      */


`timescale 1 ps/1 ps

module buf_x4 (i, q);

  input  i;
  output q;

  wire ni;

  assign ni = ~(i);

  assign q = ~(ni);

endmodule
