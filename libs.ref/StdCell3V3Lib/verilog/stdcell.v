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
/*  Verilog data flow description generated from `a2_x2`                */
/*                                                                      */


`timescale 1 ps/1 ps

module a2_x2 (q, i0, i1);

  output q;
  input  i0;
  input  i1;

  wire v_net0;

  assign v_net0 = (~(i1) | ~(i0));

  assign q = ~(v_net0);

endmodule
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
/*  Verilog data flow description generated from `a3_x2`                */
/*                                                                      */


`timescale 1 ps/1 ps

module a3_x2 (q, i0, i1, i2);

  output q;
  input  i0;
  input  i1;
  input  i2;

  wire v_net1;

  assign v_net1 = (~(i2) | ~(i1) | ~(i0));

  assign q = ~(v_net1);

endmodule
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
/*  Verilog data flow description generated from `a4_x2`                */
/*                                                                      */


`timescale 1 ps/1 ps

module a4_x2 (q, i0, i1, i2, i3);

  output q;
  input  i0;
  input  i1;
  input  i2;
  input  i3;

  wire v_net1;

  assign v_net1 = (~(i3) | ~(i2) | ~(i1) | ~(i0));

  assign q = ~(v_net1);

endmodule
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
/*  Verilog data flow description generated from `ao22_x2`              */
/*                                                                      */


`timescale 1 ps/1 ps

module ao22_x2 (q, i0, i1, i2);

  output q;
  input  i0;
  input  i1;
  input  i2;

  wire v_net0;

  assign v_net0 = (~(i2) | (~(i1) & ~(i0)));

  assign q = ~(v_net0);

endmodule
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
/*  Verilog data flow description generated from `buf_x1`               */
/*                                                                      */


`timescale 1 ps/1 ps

module buf_x1 (i, q);

  input  i;
  output q;

  wire ni;

  assign ni = ~(i);

  assign q = ~(ni);

endmodule
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
/*  Verilog data flow description generated from `buf_x2`               */
/*                                                                      */


`timescale 1 ps/1 ps

module buf_x2 (i, q);

  input  i;
  output q;

  wire ni;

  assign ni = ~(i);

  assign q = ~(ni);

endmodule
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
/*                                                                      */
/*  Avertec Release v3.4p5 (64 bits on Linux 5.10.0-0.bpo.9-amd64)      */
/*  [AVT_only] host: fsdev                                              */
/*  [AVT_only] arch: x86_64                                             */
/*  [AVT_only] path: /opt/tasyag-3.4p5/bin/avt_shell                    */
/*  argv:                                                               */
/*                                                                      */
/*  User: verhaegs                                                      */
/*  Generation date Thu Feb 10 13:11:38 2022                            */
/*                                                                      */
/*  Verilog data flow description generated from `decap_w0`             */
/*                                                                      */


`timescale 1 ps/1 ps

module decap_w0;

endmodule
// no model for diode_w1
// no model for fill
// no model for fill_w2
// no model for fill_w4
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
/*  Verilog data flow description generated from `inv_x0`               */
/*                                                                      */


`timescale 1 ps/1 ps

module inv_x0 (i, nq);

  input  i;
  output nq;


  assign nq = ~(i);

endmodule
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
/*  Verilog data flow description generated from `inv_x1`               */
/*                                                                      */


`timescale 1 ps/1 ps

module inv_x1 (i, nq);

  input  i;
  output nq;


  assign nq = ~(i);

endmodule
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
/*  Verilog data flow description generated from `inv_x2`               */
/*                                                                      */


`timescale 1 ps/1 ps

module inv_x2 (i, nq);

  input  i;
  output nq;


  assign nq = ~(i);

endmodule
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
/*  Verilog data flow description generated from `inv_x4`               */
/*                                                                      */


`timescale 1 ps/1 ps

module inv_x4 (i, nq);

  input  i;
  output nq;


  assign nq = ~(i);

endmodule
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
/*  Verilog data flow description generated from `mx2_x2`               */
/*                                                                      */


`timescale 1 ps/1 ps

module mx2_x2 (q, cmd, i0, i1);

  output q;
  input  cmd;
  input  i0;
  input  i1;

  wire v_net5;
  wire v_net1;

  assign v_net1 = ((~(cmd) & ~(i0)) | (~(v_net5) & ~(i1)));
  assign v_net5 = ~(cmd);

  assign q = ~(v_net1);

endmodule
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
/*  Verilog data flow description generated from `nand2_x0`             */
/*                                                                      */


`timescale 1 ps/1 ps

module nand2_x0 (nq, i0, i1);

  output nq;
  input  i0;
  input  i1;


  assign nq = (~(i1) | ~(i0));

endmodule
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
/*  Verilog data flow description generated from `nand3_x0`             */
/*                                                                      */


`timescale 1 ps/1 ps

module nand3_x0 (nq, i0, i1, i2);

  output nq;
  input  i0;
  input  i1;
  input  i2;


  assign nq = (~(i2) | ~(i1) | ~(i0));

endmodule
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
/*  Verilog data flow description generated from `nand4_x0`             */
/*                                                                      */


`timescale 1 ps/1 ps

module nand4_x0 (nq, i0, i1, i2, i3);

  output nq;
  input  i0;
  input  i1;
  input  i2;
  input  i3;


  assign nq = (~(i3) | ~(i2) | ~(i1) | ~(i0));

endmodule
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
/*  Verilog data flow description generated from `nor2_x0`              */
/*                                                                      */


`timescale 1 ps/1 ps

module nor2_x0 (nq, i0, i1);

  output nq;
  input  i0;
  input  i1;


  assign nq = (~(i1) & ~(i0));

endmodule
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
/*  Verilog data flow description generated from `nor3_x0`              */
/*                                                                      */


`timescale 1 ps/1 ps

module nor3_x0 (nq, i0, i1, i2);

  output nq;
  input  i0;
  input  i1;
  input  i2;


  assign nq = (~(i2) & ~(i1) & ~(i0));

endmodule
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
/*  Verilog data flow description generated from `nor4_x0`              */
/*                                                                      */


`timescale 1 ps/1 ps

module nor4_x0 (nq, i0, i1, i2, i3);

  output nq;
  input  i0;
  input  i1;
  input  i2;
  input  i3;


  assign nq = (~(i3) & ~(i2) & ~(i1) & ~(i0));

endmodule
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
/*  Verilog data flow description generated from `nsnrlatch_x1`         */
/*                                                                      */


`timescale 1 ps/1 ps

module nsnrlatch_x1 (nq, q, nrst, nset);

  inout  nq;
  inout  q;
  input  nrst;
  input  nset;


  assign q = (~(nset) | ~(nq));
  assign nq = (~(q) | ~(nrst));

endmodule
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
/*  Verilog data flow description generated from `nxr2_x1`              */
/*                                                                      */


`timescale 1 ps/1 ps

module nxr2_x1 (nq, i0, i1);

  output nq;
  input  i0;
  input  i1;

  wire v_net3;
  wire v_net0;

  assign v_net0 = ~(i0);
  assign v_net3 = ~(i1);

  assign nq = ((~(i1) & ~(i0)) | (~(i1) & ~(v_net3)) | (~(v_net0) & ~(i0))
| (~(v_net0) & ~(v_net3)));

endmodule
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
/*  Verilog data flow description generated from `o2_x2`                */
/*                                                                      */


`timescale 1 ps/1 ps

module o2_x2 (q, i0, i1);

  output q;
  input  i0;
  input  i1;

  wire v_net1;

  assign v_net1 = (~(i1) & ~(i0));

  assign q = ~(v_net1);

endmodule
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
/*  Verilog data flow description generated from `o3_x2`                */
/*                                                                      */


`timescale 1 ps/1 ps

module o3_x2 (q, i0, i1, i2);

  output q;
  input  i0;
  input  i1;
  input  i2;

  wire v_net1;

  assign v_net1 = (~(i2) & ~(i1) & ~(i0));

  assign q = ~(v_net1);

endmodule
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
/*  Verilog data flow description generated from `o4_x2`                */
/*                                                                      */


`timescale 1 ps/1 ps

module o4_x2 (q, i0, i1, i2, i3);

  output q;
  input  i0;
  input  i1;
  input  i2;
  input  i3;

  wire v_net2;

  assign v_net2 = (~(i3) & ~(i1) & ~(i0) & ~(i2));

  assign q = ~(v_net2);

endmodule
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
/*  Verilog data flow description generated from `oa22_x2`              */
/*                                                                      */


`timescale 1 ps/1 ps

module oa22_x2 (q, i0, i1, i2);

  output q;
  input  i0;
  input  i1;
  input  i2;

  wire v_net0;

  assign v_net0 = ((~(i1) & ~(i2)) | (~(i0) & ~(i2)));

  assign q = ~(v_net0);

endmodule
/*                                                                      */
/*  Avertec Release v3.4p5 (64 bits on Linux 5.10.0-0.bpo.9-amd64)      */
/*  [AVT_only] host: fsdev                                              */
/*  [AVT_only] arch: x86_64                                             */
/*  [AVT_only] path: /opt/tasyag-3.4p5/bin/avt_shell                    */
/*  argv:                                                               */
/*                                                                      */
/*  User: verhaegs                                                      */
/*  Generation date Thu Feb 10 13:11:38 2022                            */
/*                                                                      */
/*  Verilog data flow description generated from `one_x1`               */
/*                                                                      */


`timescale 1 ps/1 ps

module one_x1 (one);

  output one;
  assign one = 1;

endmodule
// no model for powmid_x0
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
/*  Verilog data flow description generated from `sff1r_x4`             */
/*                                                                      */


`timescale 1 ps/1 ps

module sff1r_x4 (ck, i, nrst, q);

  input  ck;
  input  i;
  input  nrst;
  inout  q;

  reg sff_m;
  wire u;
  wire sff_s;
  wire y;
  wire ckr;
  wire nckr;

  assign nckr = ~(ck);
  assign ckr = ~(nckr);
  assign y = (~(sff_m) | ~(nrst));
  assign sff_s = ((~(ckr) & ~(nrst)) | (~(ckr) & ~(q)) | (~(nckr) & ~(nrst)) |
(~(nckr) & ~(sff_m)));
  assign u = ~(i);

always @ (nckr or u or ckr)
begin
  if (nckr === 1'b1)
    sff_m <= ~(u);
  if (ckr === 1'b0)
    sff_m <= ~(u);
end

  assign q = ~(sff_s);

endmodule
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
/*  Verilog data flow description generated from `sff1_x4`              */
/*                                                                      */


`timescale 1 ps/1 ps

module sff1_x4 (ck, i, q);

  input  ck;
  input  i;
  output q;

  reg sff_m;
  wire u;
  wire ck_delayed;

  assign ck'delayed = 1'bx;
  assign u = ~(i);

always @ (posedge ck)
begin
  sff_m <= ~(u);
end

  assign q = sff_m;

endmodule
// no model for tie_diff
// no model for tie_diff_w2
// no model for tie_diff_w4
// no model for tie_poly
// no model for tie_poly_w2
// no model for tie_poly_w4
// no model for tie
// no model for tie_w2
// no model for tie_w4
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
/*                                                                      */
/*  Avertec Release v3.4p5 (64 bits on Linux 5.10.0-0.bpo.9-amd64)      */
/*  [AVT_only] host: fsdev                                              */
/*  [AVT_only] arch: x86_64                                             */
/*  [AVT_only] path: /opt/tasyag-3.4p5/bin/avt_shell                    */
/*  argv:                                                               */
/*                                                                      */
/*  User: verhaegs                                                      */
/*  Generation date Thu Feb 10 13:11:38 2022                            */
/*                                                                      */
/*  Verilog data flow description generated from `zeroone_x1`           */
/*                                                                      */


`timescale 1 ps/1 ps

module zeroone_x1 (zero, one);

  output zero;
  output one;
  assign zero = 0;
  assign one = 1;

endmodule
/*                                                                      */
/*  Avertec Release v3.4p5 (64 bits on Linux 5.10.0-0.bpo.9-amd64)      */
/*  [AVT_only] host: fsdev                                              */
/*  [AVT_only] arch: x86_64                                             */
/*  [AVT_only] path: /opt/tasyag-3.4p5/bin/avt_shell                    */
/*  argv:                                                               */
/*                                                                      */
/*  User: verhaegs                                                      */
/*  Generation date Thu Feb 10 13:11:38 2022                            */
/*                                                                      */
/*  Verilog data flow description generated from `zero_x1`              */
/*                                                                      */


`timescale 1 ps/1 ps

module zero_x1 (zero);

  output zero;
  assign zero = 0;

endmodule
