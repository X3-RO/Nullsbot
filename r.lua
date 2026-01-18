  ; CALL XREF from fcn.000f50e8 @ 0xf5768(x)
┌ 8020: fcn.000f1024 (int64_t arg_1c0h);
│ `- args(sp[0x1c0..0x1c0]) vars(23:sp[0x10..0x1c0])
│ 0x000f1024      ff0307d1       sub sp, sp, 0x1c0
│ 0x000f1028      ed33136d       stp d13, d12, [var_130h]
│ 0x000f102c      eb2b146d       stp d11, d10, [var_140h]
│ 0x000f1030      e923156d       stp d9, d8, [var_150h]
│ 0x000f1034      fc6f16a9       stp x28, x27, [var_160h]
│ 0x000f1038      fa6717a9       stp x26, x25, [var_170h]
│ 0x000f103c      f85f18a9       stp x24, x23, [var_180h]
│ 0x000f1040      f65719a9       stp x22, x21, [var_190h]
│ 0x000f1044      f44f1aa9       stp x20, x19, [var_1a0h]
│ 0x000f1048      fd7b1ba9       stp x29, x30, [var_1b0h]
│ 0x000f104c      fdc30691       add x29, sp, 0x1b0
│ 0x000f1050      59d03bd5       mrs x25, tpidr_el0
│ 0x000f1054      a8120090       adrp x8, 0x345000
│ 0x000f1058      291740f9       ldr x9, [x25, 0x28]
│ 0x000f105c      001dc03d       ldr q0, [x8, 0x70]
│ 0x000f1060      e0031f32       mov w0, 2
│ 0x000f1064      e1430291       add x1, sp, 0x90
│ 0x000f1068      a90317f8       stur x9, [x29, -0x90]
│ 0x000f106c      e027803d       str q0, [timeptr]
│ 0x000f1070      3c820094       bl fcn.00111960                       ; 0x111960
│ 0x000f1074      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f1078      00f9c33d       ldr q0, [x8, 0xfe0]
│ 0x000f107c      a0008052       mov w0, 5
│ 0x000f1080      e1430291       add x1, sp, 0x90
│ 0x000f1084      e027803d       str q0, [timeptr]
│ 0x000f1088      36820094       bl fcn.00111960                       ; 0x111960
│ 0x000f108c      05920094       bl fcn.001158a0                       ; 0x1158a0 ; "H\x1f"
│ 0x000f1090      e91f00f0       adrp x9, 0x4f0000
│ 0x000f1094      206d44bd       ldr s0, [x9, 0x46c]
│ 0x000f1098      f30300aa       mov x19, x0
│ 0x000f109c      0820201e       fcmp s0, 0.0
│ 0x000f10a0      60000054       b.eq 0xf10ac
| // true: 0x000f10ac  false: 0x000f10a4
│ 0x000f10a4      0800261e       fmov w8, s0
│ 0x000f10a8      04000014       b 0xf10b8
| // true: 0x000f10b8
│ ; DATA XREF from fcn.000f1024 @ 0xf10a0(r)
│ 0x000f10ac      68668652       mov w8, 0x3333                        ; '33'
│ 0x000f10b0      68e6a772       movk w8, 0x3f33, lsl 16               ; '3?'
│ 0x000f10b4      286d04b9       str w8, [x9, 0x46c]
| // true: 0x000f10b8
│ ; DATA XREF from fcn.000f1024 @ 0xf10a8(r)
│ 0x000f10b8      68aa00b9       str w8, [x19, 0xa8]
│ 0x000f10bc      e81f00f0       adrp x8, 0x4f0000
│ 0x000f10c0      08211291       add x8, x8, 0x488
│ 0x000f10c4      08fddf08       ldarb w8, [x8]
│ 0x000f10c8      28ed0036       tbz w8, 0, 0xf2e6c
| // true: 0x000f2e6c  false: 0x000f10cc
│ ; DATA XREFS from fcn.000f1024 @ 0xf2e78(x), 0xf2eac(r)
│ 0x000f10cc      77c40094       bl fcn.001222a8                       ; 0x1222a8
│ 0x000f10d0      e0031faa       mov x0, xzr                           ; time_t *timer
│ 0x000f10d4      f765ff97       bl sym.imp.time                       ; time_t time(time_t *timer)
│ 0x000f10d8      1273ff97       bl rsym._ZNSt6__ndk16chrono12system_clock11from_time_tEl ; 0xcdd20 ; "p\x1d"
│ 0x000f10dc      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f10e0      013543fd       ldr d1, [x8, 0x668]
│ 0x000f10e4      00e4006f       movi v0.2d, 0000000000000000
│ 0x000f10e8      e9171f32       mov w9, 0x7e                          ; '~'
│ 0x000f10ec      e0430291       add x0, sp, 0x90                      ; tm *timeptr
│ 0x000f10f0      ff6300f9       str xzr, [arg_1c0hxc0]
│ 0x000f10f4      e08304ad       stp q0, q0, [timeptr]
│ 0x000f10f8      e02f803d       str q0, [arg_1c0hxb0]
│ 0x000f10fc      e1c309fc       stur d1, [arg_1c0hx9c]
│ 0x000f1100      e9a700b9       str w9, [arg_1c0hxa4]
│ 0x000f1104      4f6fff97       bl sym.imp.mktime                     ; time_t mktime(tm *timeptr)
│ 0x000f1108      0673ff97       bl rsym._ZNSt6__ndk16chrono12system_clock11from_time_tEl ; 0xcdd20 ; "p\x1d"
│ 0x000f110c      a21200d0       adrp x2, 0x347000
│ 0x000f1110      f50300aa       mov x21, x0
│ 0x000f1114      42d43b91       add x2, x2, 0xef5                     ; 0x347ef5 ; "%02d/%02d/%d" ; const char *format
│ 0x000f1118      a0c302d1       sub x0, x29, 0xb0                     ; char *s
│ 0x000f111c      e1031b32       mov w1, 0x20
│ 0x000f1120      43018052       mov w3, 0xa
│ 0x000f1124      e4070032       mov w4, 3
│ 0x000f1128      45fd8052       mov w5, 0x7ea
│ 0x000f112c      716cff97       bl sym.imp.snprintf                   ; int snprintf(char *s, size_t size, const char *format, ...)
│ 0x000f1130      9476ff97       bl rsym._ZNSt6__ndk16chrono12system_clock3nowEv ; 0xceb80 ; "p\x1d"
│ 0x000f1134      1f0015eb       cmp x0, x21
│ 0x000f1138      2a0b0054       b.ge 0xf129c
| // true: 0x000f129c  false: 0x000f113c
│ 0x000f113c      f71f00f0       adrp x23, 0x4f0000
│ 0x000f1140      e8425239       ldrb w8, [x23, 0x490]
│ 0x000f1144      480c0034       cbz w8, 0xf12cc
| // true: 0x000f12cc  false: 0x000f1148
│ 0x000f1148      f51f00f0       adrp x21, 0x4f0000
│ 0x000f114c      a8525239       ldrb w8, [x21, 0x494]
│ 0x000f1150      c8330035       cbnz w8, 0xf17c8
| // true: 0x000f17c8  false: 0x000f1154
│ 0x000f1154      e0031f32       mov w0, 2
│ 0x000f1158      e1430291       add x1, sp, 0x90
│ 0x000f115c      ff4b00f9       str xzr, [timeptr]
│ 0x000f1160      cb820094       bl fcn.00111c8c                       ; 0x111c8c
│ 0x000f1164      e0070032       mov w0, 3
│ 0x000f1168      e003271e       fmov s0, wzr
│ 0x000f116c      6e820094       bl fcn.00111b24                       ; 0x111b24
│ 0x000f1170      e0031e32       mov w0, 4
│ 0x000f1174      e003271e       fmov s0, wzr
│ 0x000f1178      6b820094       bl fcn.00111b24                       ; 0x111b24
│ 0x000f117c      a01200f0       adrp x0, 0x348000
│ 0x000f1180      00ac0091       add x0, x0, 0x2b                      ; 0x34802b ; "MKOP"
│ 0x000f1184      62158052       mov w2, 0xab
│ 0x000f1188      e1031faa       mov x1, xzr
│ 0x000f118c      55a50094       bl fcn.0011a6e0                       ; 0x11a6e0
│ 0x000f1190      20310036       tbz w0, 0, 0xf17b4
| // true: 0x000f17b4  false: 0x000f1194
│ 0x000f1194      ffc60094       bl fcn.00122d90                       ; 0x122d90
│ 0x000f1198      f40300aa       mov x20, x0
│ 0x000f119c      9ec60094       bl fcn.00122c14                       ; 0x122c14
│ 0x000f11a0      a007262d       stp s0, s1, [x29, -0xd0]
│ 0x000f11a4      bf910094       bl fcn.001158a0                       ; 0x1158a0 ; "H\x1f"
│ 0x000f11a8      009443bd       ldr s0, [x0, 0x394]
│ 0x000f11ac      a21200f0       adrp x2, 0x348000
│ 0x000f11b0      42c00091       add x2, x2, 0x30                      ; 0x348030 ; "%.1ffps" ; const char *format
│ 0x000f11b4      e0430291       add x0, sp, 0x90                      ; char *s
│ 0x000f11b8      00c0221e       fcvt d0, s0
│ 0x000f11bc      e1031b32       mov w1, 0x20
│ 0x000f11c0      4c6cff97       bl sym.imp.snprintf                   ; int snprintf(char *s, size_t size, const char *format, ...)
│ 0x000f11c4      00103e1e       fmov s0, -1.00000000
│ 0x000f11c8      e0430291       add x0, sp, 0x90
│ 0x000f11cc      e1031faa       mov x1, xzr
│ 0x000f11d0      e2031f2a       mov w2, wzr
│ 0x000f11d4      6a850094       bl fcn.0011277c                       ; 0x11277c ; "i\x1f"
│ 0x000f11d8      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f11dc      018d4dbd       ldr s1, [x8, 0xd8c]
│ 0x000f11e0      0210271e       fmov s2, 24.00000000
│ 0x000f11e4      0853a852       mov w8, 0x42980000
│ 0x000f11e8      e0430091       add x0, sp, 0x10
│ 0x000f11ec      0028211e       fadd s0, s0, s1
│ 0x000f11f0      0028221e       fadd s0, s0, s2
│ 0x000f11f4      e1031f2a       mov w1, wzr
│ 0x000f11f8      e01300bd       str s0, [arg_1c0hx10]
│ 0x000f11fc      e81700b9       str w8, [arg_1c0hx14]
│ 0x000f1200      8fc60094       bl fcn.00122c3c                       ; 0x122c3c
│ 0x000f1204      e207422d       ldp s2, s1, [arg_1c0hx10]
│ 0x000f1208      a30353fc       ldur d3, [x29, -0xd0]
│ 0x000f120c      08102c1e       fmov s8, 0.50000000
│ 0x000f1210      03048452       mov w3, 0x2020                        ; '  '
│ 0x000f1214      22040c6e       mov v2.s[1], v1.s[0]
│ 0x000f1218      2008281e       fmul s0, s1, s8
│ 0x000f121c      61d4220e       fadd v1.2s, v3.2s, v2.2s
│ 0x000f1220      a14303d1       sub x1, x29, 0xd0
│ 0x000f1224      e2030291       add x2, sp, 0x80
│ 0x000f1228      0344ba72       movk w3, 0xd220, lsl 16
│ 0x000f122c      e00314aa       mov x0, x20
│ 0x000f1230      e4031f2a       mov w4, wzr
│ 0x000f1234      e14300fd       str d1, [arg_1c0hx80]
│ 0x000f1238      69e20094       bl fcn.00129bdc                       ; 0x129bdc
│ 0x000f123c      a00353fc       ldur d0, [x29, -0xd0]
│ 0x000f1240      e91f00d0       adrp x9, 0x4ef000
│ 0x000f1244      21d547f9       ldr x1, [x9, 0xfa8]
│ 0x000f1248      2164020f       movi v1.2s, 0x41, lsl 24              ; 'A'
│ 0x000f124c      084ea852       mov w8, 0x42700000
│ 0x000f1250      020d040e       dup v2.2s, w8
│ 0x000f1254      00d4210e       fadd v0.2s, v0.2s, v1.2s
│ 0x000f1258      01d4220e       fadd v1.2s, v0.2s, v2.2s
│ 0x000f125c      e04300fd       str d0, [arg_1c0hx80]
│ 0x000f1260      e13b00fd       str d1, [arg_1c0hx70]
│ 0x000f1264      a12500b4       cbz x1, 0xf1718
| // true: 0x000f1718  false: 0x000f1268
│ 0x000f1268      00f6030f       fmov v0.2s, 1.00000000
│ 0x000f126c      e02b00fd       str d0, [arg_1c0hx50]
│ 0x000f1270      00d0271e       fmov s0, 30.00000000
│ 0x000f1274      e2030291       add x2, sp, 0x80
│ 0x000f1278      e3c30191       add x3, sp, 0x70
│ 0x000f127c      e4830191       add x4, sp, 0x60
│ 0x000f1280      e5430191       add x5, sp, 0x50
│ 0x000f1284      06008012       mov w6, -1
│ 0x000f1288      e00314aa       mov x0, x20
│ 0x000f128c      e7031f2a       mov w7, wzr
│ 0x000f1290      ff3300f9       str xzr, [arg_1c0hx60]
│ 0x000f1294      91e60094       bl fcn.0012acd8                       ; 0x12acd8
│ 0x000f1298      2a010014       b 0xf1740
| // true: 0x000f1740
│ ; DATA XREF from fcn.000f1024 @ 0xf1138(r)
│ 0x000f129c      a01200d0       adrp x0, 0x347000
│ 0x000f12a0      e81f00f0       adrp x8, 0x4f0000
│ 0x000f12a4      00083c91       add x0, x0, 0xf02                     ; 0x347f02 ; "EXPIRED!!"
│ 0x000f12a8      e2071b32       mov w2, 0x60                          ; '`'
│ 0x000f12ac      e1031faa       mov x1, xzr
│ 0x000f12b0      1f411239       strb wzr, [x8, 0x490]
│ 0x000f12b4      0ba50094       bl fcn.0011a6e0                       ; 0x11a6e0
│ 0x000f12b8      a01200d0       adrp x0, 0x347000
│ 0x000f12bc      00303c91       add x0, x0, 0xf0c                     ; 0x347f0c ; "BUY FROM OFFICIAL SELLER FUCK"
│ 0x000f12c0      cb670194       bl fcn.0014b1ec                       ; 0x14b1ec
│ 0x000f12c4      b9bb0094       bl fcn.001201a8                       ; 0x1201a8
│ 0x000f12c8      5f060014       b 0xf2c44
| // true: 0x000f2c44
│ ; DATA XREF from fcn.000f1024 @ 0xf1144(r)
│ 0x000f12cc      75910094       bl fcn.001158a0                       ; 0x1158a0 ; "H\x1f"
│ 0x000f12d0      a8120090       adrp x8, 0x345000
│ 0x000f12d4      003dc03d       ldr q0, [x8, 0xf0]
│ 0x000f12d8      a8120090       adrp x8, 0x345000
│ 0x000f12dc      0141c03d       ldr q1, [x8, fcn.00000100]
│ 0x000f12e0      a8120090       adrp x8, 0x345000
│ 0x000f12e4      0245c03d       ldr q2, [x8, 0x110]
│ 0x000f12e8      a8120090       adrp x8, 0x345000
│ 0x000f12ec      0349c03d       ldr q3, [x8, 0x120]
│ 0x000f12f0      a8120090       adrp x8, 0x345000
│ 0x000f12f4      0928412d       ldp s9, s10, [x0, 8]
│ 0x000f12f8      a003933c       stur q0, [x29, -0xd0]
│ 0x000f12fc      004dc03d       ldr q0, [x8, 0x130]
│ 0x000f1300      a8120090       adrp x8, 0x345000
│ 0x000f1304      e107803d       str q1, [arg_1c0hx10]
│ 0x000f1308      0151c03d       ldr q1, [x8, 0x140]
│ 0x000f130c      a8120090       adrp x8, 0x345000
│ 0x000f1310      e38b03ad       stp q3, q2, [arg_1c0hx70]
│ 0x000f1314      0255c03d       ldr q2, [x8, 0x150]
│ 0x000f1318      f40300aa       mov x20, x0
│ 0x000f131c      e18302ad       stp q1, q0, [arg_1c0hx50]
│ 0x000f1320      0010251e       fmov s0, 12.00000000
│ 0x000f1324      e0070032       mov w0, 3
│ 0x000f1328      e213803d       str q2, [arg_1c0hx40]
│ 0x000f132c      fe810094       bl fcn.00111b24                       ; 0x111b24
│ 0x000f1330      0810241e       fmov s8, 8.00000000
│ 0x000f1334      e0071e32       mov w0, 0xc
│ 0x000f1338      001da84e       mov v0.16b, v8.16b
│ 0x000f133c      fa810094       bl fcn.00111b24                       ; 0x111b24
│ 0x000f1340      a0028052       mov w0, 0x15
│ 0x000f1344      001da84e       mov v0.16b, v8.16b
│ 0x000f1348      f7810094       bl fcn.00111b24                       ; 0x111b24
│ 0x000f134c      40f6010f       fmov v0.2s, 18.00000000
│ 0x000f1350      e0031f32       mov w0, 2
│ 0x000f1354      e1430291       add x1, sp, 0x90
│ 0x000f1358      e04b00fd       str d0, [timeptr]
│ 0x000f135c      4c820094       bl fcn.00111c8c                       ; 0x111c8c
│ 0x000f1360      e0031f32       mov w0, 2
│ 0x000f1364      e1430191       add x1, sp, 0x50
│ 0x000f1368      7e810094       bl fcn.00111960                       ; 0x111960
│ 0x000f136c      e1c30191       add x1, sp, 0x70
│ 0x000f1370      e0031f2a       mov w0, wzr
│ 0x000f1374      7b810094       bl fcn.00111960                       ; 0x111960
│ 0x000f1378      40018052       mov w0, 0xa
│ 0x000f137c      a14303d1       sub x1, x29, 0xd0
│ 0x000f1380      78810094       bl fcn.00111960                       ; 0x111960
│ 0x000f1384      60018052       mov w0, 0xb
│ 0x000f1388      a14303d1       sub x1, x29, 0xd0
│ 0x000f138c      75810094       bl fcn.00111960                       ; 0x111960
│ 0x000f1390      e00b0032       mov w0, 7
│ 0x000f1394      e1030191       add x1, sp, 0x40
│ 0x000f1398      72810094       bl fcn.00111960                       ; 0x111960
│ 0x000f139c      e0031d32       mov w0, 8
│ 0x000f13a0      e1430091       add x1, sp, 0x10
│ 0x000f13a4      6f810094       bl fcn.00111960                       ; 0x111960
│ 0x000f13a8      20018052       mov w0, 9
│ 0x000f13ac      e1030291       add x1, sp, 0x80
│ 0x000f13b0      6c810094       bl fcn.00111960                       ; 0x111960
│ 0x000f13b4      a0028052       mov w0, 0x15
│ 0x000f13b8      a14303d1       sub x1, x29, 0xd0
│ 0x000f13bc      69810094       bl fcn.00111960                       ; 0x111960
│ 0x000f13c0      c0028052       mov w0, 0x16
│ 0x000f13c4      e1430091       add x1, sp, 0x10
│ 0x000f13c8      66810094       bl fcn.00111960                       ; 0x111960
│ 0x000f13cc      e0028052       mov w0, 0x17
│ 0x000f13d0      e1030291       add x1, sp, 0x80
│ 0x000f13d4      63810094       bl fcn.00111960                       ; 0x111960
│ 0x000f13d8      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f13dc      801240bd       ldr s0, [x20, 0x10]
│ 0x000f13e0      01d54dbd       ldr s1, [x8, 0xdd4]
│ 0x000f13e4      f81f00f0       adrp x24, 0x4f0000
│ 0x000f13e8      03102e1e       fmov s3, 1.00000000
│ 0x000f13ec      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f13f0      0008211e       fmul s0, s0, s1
│ 0x000f13f4      019b44bd       ldr s1, [x24, 0x498]
│ 0x000f13f8      02d94dbd       ldr s2, [x8, 0xdd8]
│ 0x000f13fc      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f1400      e0e30091       add x0, sp, 0x38
│ 0x000f1404      6338211e       fsub s3, s3, s1
│ 0x000f1408      6008201e       fmul s0, s3, s0
│ 0x000f140c      2028201e       fadd s0, s1, s0
│ 0x000f1410      01cd4dbd       ldr s1, [x8, 0xdcc]
│ 0x000f1414      4229221e       fadd s2, s10, s2
│ 0x000f1418      0a102c1e       fmov s10, 0.50000000
│ 0x000f141c      009b04bd       str s0, [x24, 0x498]
│ 0x000f1420      0808211e       fmul s8, s0, s1
│ 0x000f1424      2039281e       fsub s0, s9, s8
│ 0x000f1428      42082a1e       fmul s2, s2, s10
│ 0x000f142c      00082a1e       fmul s0, s0, s10
│ 0x000f1430      e1030032       mov w1, 1
│ 0x000f1434      e2430291       add x2, sp, 0x90
│ 0x000f1438      ff4b00f9       str xzr, [timeptr]
│ 0x000f143c      e00b072d       stp s0, s2, [arg_1c0hx38]
│ 0x000f1440      20c60094       bl fcn.00122cc0                       ; 0x122cc0
│ 0x000f1444      0874a852       mov w8, 0x43a00000
│ 0x000f1448      e0430291       add x0, sp, 0x90
│ 0x000f144c      e1030032       mov w1, 1
│ 0x000f1450      e89300bd       str s8, [timeptr]
│ 0x000f1454      e89700b9       str w8, [arg_1c0hx94]
│ 0x000f1458      97a40094       bl fcn.0011a6b4                       ; 0x11a6b4 ; "(\x1f"
│ 0x000f145c      a01200d0       adrp x0, 0x347000
│ 0x000f1460      00a83c91       add x0, x0, 0xf2a
│ 0x000f1464      e2058052       mov w2, 0x2f                          ; '/'
│ 0x000f1468      e1031faa       mov x1, xzr
│ 0x000f146c      9da40094       bl fcn.0011a6e0                       ; 0x11a6e0
│ 0x000f1470      f56d0194       bl fcn.0014cc44                       ; 0x14cc44
│ 0x000f1474      b61200d0       adrp x22, 0x347000
│ 0x000f1478      d6c23c91       add x22, x22, 0xf30                   ; 0x347f30 ; "LOGIN CODM 1.6"
│ 0x000f147c      00103e1e       fmov s0, -1.00000000
│ 0x000f1480      e00316aa       mov x0, x22                           ; 0x347f30 ; "LOGIN CODM 1.6"
│ 0x000f1484      e1031faa       mov x1, xzr
│ 0x000f1488      e2031f2a       mov w2, wzr
│ 0x000f148c      bc840094       bl fcn.0011277c                       ; 0x11277c ; "i\x1f"
│ 0x000f1490      081ca04e       mov v8.16b, v0.16b
│ 0x000f1494      dbc50094       bl fcn.00122c00                       ; 0x122c00
│ 0x000f1498      0038281e       fsub s0, s0, s8
│ 0x000f149c      00082a1e       fmul s0, s0, s10
│ 0x000f14a0      69c90094       bl fcn.00123a44                       ; 0x123a44
│ 0x000f14a4      e00316aa       mov x0, x22                           ; 0x347f30 ; "LOGIN CODM 1.6"
│ 0x000f14a8      51670194       bl fcn.0014b1ec                       ; 0x14b1ec
│ 0x000f14ac      e66d0194       bl fcn.0014cc44                       ; 0x14cc44
│ 0x000f14b0      e56d0194       bl fcn.0014cc44                       ; 0x14cc44
│ 0x000f14b4      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f14b8      009b44bd       ldr s0, [x24, 0x498]
│ 0x000f14bc      01dd4dbd       ldr s1, [x8, 0xddc]
│ 0x000f14c0      0020211e       fcmp s0, s1
│ 0x000f14c4      edb70054       b.le 0xf2bc0
| // true: 0x000f2bc0  false: 0x000f14c8
│ 0x000f14c8      a11200d0       adrp x1, 0x347000
│ 0x000f14cc      00f6034f       fmov v0.4s, 1.00000000
│ 0x000f14d0      21fc3c91       add x1, x1, 0xf3f                     ; 0x347f3f ; "HEXABYTEZ CODM"
│ 0x000f14d4      e0430291       add x0, sp, 0x90
│ 0x000f14d8      e003803d       str q0, [sp]
│ 0x000f14dc      e027803d       str q0, [timeptr]
│ 0x000f14e0      a5670194       bl fcn.0014b374                       ; 0x14b374
│ 0x000f14e4      e003c03d       ldr q0, [sp]
│ 0x000f14e8      a11200d0       adrp x1, 0x347000
│ 0x000f14ec      21383d91       add x1, x1, 0xf4e                     ; 0x347f4e ; "NO CHEAT | NO FUN | VERSION 1.6.53"
│ 0x000f14f0      e0430291       add x0, sp, 0x90
│ 0x000f14f4      e027803d       str q0, [timeptr]
│ 0x000f14f8      9f670194       bl fcn.0014b374                       ; 0x14b374
│ 0x000f14fc      08103e1e       fmov s8, -1.00000000
│ 0x000f1500      e003271e       fmov s0, wzr
│ 0x000f1504      011da84e       mov v1.16b, v8.16b
│ 0x000f1508      efc80094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f150c      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f1510      00a9c33d       ldr q0, [x8, 0xea0]
│ 0x000f1514      a11200d0       adrp x1, 0x347000
│ 0x000f1518      21c43d91       add x1, x1, 0xf71
│ 0x000f151c      e0430291       add x0, sp, 0x90
│ 0x000f1520      e027803d       str q0, [timeptr]
│ 0x000f1524      94670194       bl fcn.0014b374                       ; 0x14b374
│ 0x000f1528      e003271e       fmov s0, wzr
│ 0x000f152c      011da84e       mov v1.16b, v8.16b
│ 0x000f1530      e5c80094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f1534      a8120090       adrp x8, 0x345000
│ 0x000f1538      0059c03d       ldr q0, [x8, 0x160]
│ 0x000f153c      a11200d0       adrp x1, 0x347000
│ 0x000f1540      21d43d91       add x1, x1, 0xf75                     ; 0x347f75 ; "Telegram @hexapremiumofficial"
│ 0x000f1544      e0430291       add x0, sp, 0x90
│ 0x000f1548      e027803d       str q0, [timeptr]
│ 0x000f154c      8a670194       bl fcn.0014b374                       ; 0x14b374
│ 0x000f1550      896e0194       bl fcn.0014cf74                       ; 0x14cf74
│ 0x000f1554      bc6d0194       bl fcn.0014cc44                       ; 0x14cc44
│ 0x000f1558      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f155c      004943fd       ldr d0, [x8, 0x690]
│ 0x000f1560      60018052       mov w0, 0xb
│ 0x000f1564      e1430291       add x1, sp, 0x90
│ 0x000f1568      e04b00fd       str d0, [timeptr]
│ 0x000f156c      c8810094       bl fcn.00111c8c                       ; 0x111c8c
│ 0x000f1570      a01200d0       adrp x0, 0x347000
│ 0x000f1574      004c3e91       add x0, x0, 0xf93                     ; 0x347f93 ; " \uf084  Login Key"
│ 0x000f1578      1d670194       bl fcn.0014b1ec                       ; 0x14b1ec
│ 0x000f157c      b26d0194       bl fcn.0014cc44                       ; 0x14cc44
│ 0x000f1580      2abf0094       bl fcn.00121228                       ; 0x121228
│ 0x000f1584      091ca04e       mov v9.16b, v0.16b
│ 0x000f1588      33800094       bl fcn.00111654                       ; 0x111654 ; "h\x1f"
│ 0x000f158c      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f1590      00b14dbd       ldr s0, [x8, 0xdb0]
│ 0x000f1594      084c40bd       ldr s8, [x0, 0x4c]
│ 0x000f1598      2029201e       fadd s0, s9, s0
│ 0x000f159c      0129281e       fadd s1, s8, s8
│ 0x000f15a0      0038211e       fsub s0, s0, s1
│ 0x000f15a4      68c90094       bl fcn.00123b44                       ; 0x123b44
│ 0x000f15a8      a01200d0       adrp x0, 0x347000
│ 0x000f15ac      e11f00f0       adrp x1, 0x4f0000
│ 0x000f15b0      008c3e91       add x0, x0, 0xfa3                     ; 0x347fa3 ; "##key"
│ 0x000f15b4      21800091       add x1, x1, 0x20
│ 0x000f15b8      e2031832       mov w2, fcn.00000100                  ; 0x100
│ 0x000f15bc      e3031f2a       mov w3, wzr
│ 0x000f15c0      e4031faa       mov x4, xzr
│ 0x000f15c4      e5031faa       mov x5, xzr
│ 0x000f15c8      7e7f0194       bl fcn.001513c0                       ; 0x1513c0
│ 0x000f15cc      a9c90094       bl fcn.00123c70                       ; 0x123c70
│ 0x000f15d0      e003271e       fmov s0, wzr
│ 0x000f15d4      011da84e       mov v1.16b, v8.16b
│ 0x000f15d8      bbc80094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f15dc      0849a852       mov w8, 0x42480000
│ 0x000f15e0      a01200d0       adrp x0, 0x347000
│ 0x000f15e4      000d040e       dup v0.2s, w8
│ 0x000f15e8      00a43e91       add x0, x0, 0xfa9
│ 0x000f15ec      e1430291       add x1, sp, 0x90
│ 0x000f15f0      e04b00fd       str d0, [timeptr]
│ 0x000f15f4      f6430291       add x22, sp, 0x90
│ 0x000f15f8      436a0194       bl fcn.0014bf04                       ; 0x14bf04
│ 0x000f15fc      00020036       tbz w0, 0, 0xf163c
| // true: 0x000f163c  false: 0x000f1600
│ 0x000f1600      e8430291       add x8, sp, 0x90
│ 0x000f1604      a6cdff97       bl fcn.000e4c9c                       ; 0xe4c9c
│ 0x000f1608      e8434239       ldrb w8, [timeptr]
│ 0x000f160c      e95340f9       ldr x9, [arg_1c0hxa0]
│ 0x000f1610      ca0240b2       orr x10, x22, 1
│ 0x000f1614      e01f00f0       adrp x0, 0x4f0000
│ 0x000f1618      1f010072       tst w8, 1
│ 0x000f161c      4101899a       csel x1, x10, x9, eq                  ; const char *src
│ 0x000f1620      00800091       add x0, x0, 0x20                      ; char *dest
│ 0x000f1624      e2031832       mov w2, fcn.00000100                  ; 0x100
│ 0x000f1628      464bff97       bl sym.imp.strncpy                    ; char *strncpy(char *dest, const char *src, size_t  n)
│ 0x000f162c      e8434239       ldrb w8, [timeptr]
│ 0x000f1630      68000036       tbz w8, 0, 0xf163c
| // true: 0x000f163c  false: 0x000f1634
│ 0x000f1634      e05340f9       ldr x0, [arg_1c0hxa0]
│ 0x000f1638      7e55ff97       bl rsym._ZdlPv                        ; 0xc6c30
| // true: 0x000f163c
│ ; DATA XREFS from fcn.000f1024 @ 0xf15fc(x), 0xf1630(r)
│ 0x000f163c      e0031f2a       mov w0, wzr
│ 0x000f1640      cd8a0094       bl fcn.00114174                       ; 0x114174 ; "H\x1f"
│ 0x000f1644      80000036       tbz w0, 0, 0xf1654
| // true: 0x000f1654  false: 0x000f1648
│ 0x000f1648      a01200d0       adrp x0, 0x347000
│ 0x000f164c      00b43e91       add x0, x0, 0xfad                     ; 0x347fad ; "Paste from clipboard"
│ 0x000f1650      34bb0094       bl fcn.00120320                       ; 0x120320
| // true: 0x000f1654
│ ; DATA XREF from fcn.000f1024 @ 0xf1644(r)
│ 0x000f1654      e003271e       fmov s0, wzr
│ 0x000f1658      011da84e       mov v1.16b, v8.16b
│ 0x000f165c      9ac80094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f1660      0849a852       mov w8, 0x42480000
│ 0x000f1664      a01200d0       adrp x0, 0x347000
│ 0x000f1668      000d040e       dup v0.2s, w8
│ 0x000f166c      00083f91       add x0, x0, 0xfc2
│ 0x000f1670      e1430291       add x1, sp, 0x90
│ 0x000f1674      e04b00fd       str d0, [timeptr]
│ 0x000f1678      236a0194       bl fcn.0014bf04                       ; 0x14bf04
│ 0x000f167c      40000036       tbz w0, 0, 0xf1684
| // true: 0x000f1684  false: 0x000f1680
│ 0x000f1680      3be9ff97       bl fcn.000ebb6c                       ; 0xebb6c
| // true: 0x000f1684
│ ; DATA XREF from fcn.000f1024 @ 0xf167c(r)
│ 0x000f1684      e0031f2a       mov w0, wzr
│ 0x000f1688      bb8a0094       bl fcn.00114174                       ; 0x114174 ; "H\x1f"
│ 0x000f168c      80000036       tbz w0, 0, 0xf169c
| // true: 0x000f169c  false: 0x000f1690
│ 0x000f1690      a01200d0       adrp x0, 0x347000
│ 0x000f1694      00183f91       add x0, x0, 0xfc6                     ; 0x347fc6 ; "Load key from file"
│ 0x000f1698      22bb0094       bl fcn.00120320                       ; 0x120320
| // true: 0x000f169c
│ ; DATA XREF from fcn.000f1024 @ 0xf168c(r)
│ 0x000f169c      e0030032       mov w0, 1
│ 0x000f16a0      d6810094       bl fcn.00111df8                       ; 0x111df8
│ 0x000f16a4      686d0194       bl fcn.0014cc44                       ; 0x14cc44
│ 0x000f16a8      676d0194       bl fcn.0014cc44                       ; 0x14cc44
│ 0x000f16ac      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f16b0      005943fd       ldr d0, [x8, 0x6b0]
│ 0x000f16b4      a01200d0       adrp x0, 0x347000
│ 0x000f16b8      00643f91       add x0, x0, 0xfd9                     ; 0x347fd9 ; " \uf007  Enter License"
│ 0x000f16bc      e1430291       add x1, sp, 0x90
│ 0x000f16c0      e04b00fd       str d0, [timeptr]
│ 0x000f16c4      106a0194       bl fcn.0014bf04                       ; 0x14bf04
│ 0x000f16c8      c0a30036       tbz w0, 0, 0xf2b40
| // true: 0x000f2b40  false: 0x000f16cc
│ 0x000f16cc      9aceff97       bl fcn.000e5134                       ; 0xe5134
│ 0x000f16d0      20010036       tbz w0, 0, 0xf16f4
| // true: 0x000f16f4  false: 0x000f16d4
│ 0x000f16d4      e01f00f0       adrp x0, 0x4f0000
│ 0x000f16d8      a11200d0       adrp x1, 0x347000
│ 0x000f16dc      00c01191       add x0, x0, 0x470
│ 0x000f16e0      21b43f91       add x1, x1, 0xfed                     ; 0x347fed ; "VPN is active. Please turn it off."
│ 0x000f16e4      42048052       mov w2, 0x22                          ; '\"'
│ 0x000f16e8      383c0094       bl fcn.001007c8                       ; 0x1007c8
| // true: 0x000f16ec
│ ; DATA XREFS from fcn.000f1024 @ 0xf2da4(x), 0xf2db0(r), 0xf2df0(x), 0xf2e28(x), 0xf2e48(r)
│ 0x000f16ec      ff421239       strb wzr, [x23, 0x490]
│ 0x000f16f0      14050014       b 0xf2b40
| // true: 0x000f2b40
│ ; CODE XREF from fcn.000f1024 @ 0xf16d0(x)
│ 0x000f16f4      e01f00f0       adrp x0, 0x4f0000
│ 0x000f16f8      00800091       add x0, x0, 0x20
│ 0x000f16fc      e8430291       add x8, sp, 0x90
│ 0x000f1700      f8cfff97       bl fcn.000e56e0                       ; 0xe56e0
│ 0x000f1704      e81f00f0       adrp x8, 0x4f0000
│ 0x000f1708      09c15139       ldrb w9, [x8, 0x470]
│ 0x000f170c      299e0037       tbnz w9, 0, 0xf2ad0
| // true: 0x000f2ad0  false: 0x000f1710
│ 0x000f1710      1fe10879       strh wzr, [x8, 0x470]
│ 0x000f1714      f4040014       b 0xf2ae4
| // true: 0x000f2ae4
│ ; DATA XREF from fcn.000f1024 @ 0xf1264(r)
│ 0x000f1718      c1f7010f       fmov v1.2s, 30.00000000
│ 0x000f171c      00d4210e       fadd v0.2s, v0.2s, v1.2s
│ 0x000f1720      828c8c52       mov w2, 0x6464                        ; 'dd'
│ 0x000f1724      e03300fd       str d0, [arg_1c0hx60]
│ 0x000f1728      00d0271e       fmov s0, 30.00000000
│ 0x000f172c      e1830191       add x1, sp, 0x60
│ 0x000f1730      82ecbf72       movk w2, 0xff64, lsl 16
│ 0x000f1734      e00314aa       mov x0, x20
│ 0x000f1738      e3031f2a       mov w3, wzr
│ 0x000f173c      ade20094       bl fcn.0012a1f0                       ; 0x12a1f0
| // true: 0x000f1740
│ ; DATA XREF from fcn.000f1024 @ 0xf1298(r)
│ 0x000f1740      e07340bd       ldr s0, [arg_1c0hx70]
│ 0x000f1744      e11740bd       ldr s1, [arg_1c0hx14]
│ 0x000f1748      a24353bc       ldur s2, [x29, -0xcc]
│ 0x000f174c      0310241e       fmov s3, 8.00000000
│ 0x000f1750      0928231e       fadd s9, s0, s3
│ 0x000f1754      2008281e       fmul s0, s1, s8
│ 0x000f1758      4a28201e       fadd s10, s2, s0
│ 0x000f175c      98c50094       bl fcn.00122dbc                       ; 0x122dbc
│ 0x000f1760      0008281e       fmul s0, s0, s8
│ 0x000f1764      4039201e       fsub s0, s10, s0
│ 0x000f1768      e1830191       add x1, sp, 0x60
│ 0x000f176c      e29f0832       mov w2, -0xff0100
│ 0x000f1770      e3430291       add x3, sp, 0x90
│ 0x000f1774      e00314aa       mov x0, x20
│ 0x000f1778      e4031faa       mov x4, xzr
│ 0x000f177c      e9030c2d       stp s9, s0, [arg_1c0hx60]
│ 0x000f1780      7ae40094       bl fcn.0012a968                       ; 0x12a968
│ 0x000f1784      e0030291       add x0, sp, 0x80
│ 0x000f1788      e1c30191       add x1, sp, 0x70
│ 0x000f178c      e2030032       mov w2, 1
│ 0x000f1790      5d8b0094       bl fcn.00114504                       ; 0x114504 ; "H\x1f"
│ 0x000f1794      00010036       tbz w0, 0, 0xf17b4
| // true: 0x000f17b4  false: 0x000f1798
│ 0x000f1798      e0031f2a       mov w0, wzr
│ 0x000f179c      e1031f2a       mov w1, wzr
│ 0x000f17a0      4fbd0094       bl fcn.00120cdc                       ; 0x120cdc
│ 0x000f17a4      80000036       tbz w0, 0, 0xf17b4
| // true: 0x000f17b4  false: 0x000f17a8
│ 0x000f17a8      a8525239       ldrb w8, [x21, 0x494]
│ 0x000f17ac      08010052       eor w8, w8, 1
│ 0x000f17b0      a8521239       strb w8, [x21, 0x494]
| // true: 0x000f17b4
│ ; DATA XREFS from fcn.000f1024 @ 0xf1190(x), 0xf1794(r), 0xf17a4(r)
│ 0x000f17b4      7dba0094       bl fcn.001201a8                       ; 0x1201a8
│ 0x000f17b8      e0070032       mov w0, 3
│ 0x000f17bc      8f810094       bl fcn.00111df8                       ; 0x111df8
│ 0x000f17c0      a8525239       ldrb w8, [x21, 0x494]
│ 0x000f17c4      28980034       cbz w8, 0xf2ac8
| // true: 0x000f2ac8  false: 0x000f17c8
│ ; DATA XREF from fcn.000f1024 @ 0xf1150(r)
│ 0x000f17c8      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f17cc      003943fd       ldr d0, [x8, 0x670]
│ 0x000f17d0      e0430291       add x0, sp, 0x90
│ 0x000f17d4      e1031e32       mov w1, 4
│ 0x000f17d8      e04b00fd       str d0, [timeptr]
│ 0x000f17dc      b6a30094       bl fcn.0011a6b4                       ; 0x11a6b4 ; "(\x1f"
│ 0x000f17e0      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f17e4      003d43fd       ldr d0, [x8, 0x678]
│ 0x000f17e8      a0008052       mov w0, 5
│ 0x000f17ec      e1430291       add x1, sp, 0x90
│ 0x000f17f0      e04b00fd       str d0, [timeptr]
│ 0x000f17f4      26810094       bl fcn.00111c8c                       ; 0x111c8c
│ 0x000f17f8      00f5010f       fmov v0.2s, 12.00000000
│ 0x000f17fc      e0031f32       mov w0, 2
│ 0x000f1800      e1430291       add x1, sp, 0x90
│ 0x000f1804      e04b00fd       str d0, [timeptr]
│ 0x000f1808      21810094       bl fcn.00111c8c                       ; 0x111c8c
│ 0x000f180c      a01200f0       adrp x0, 0x348000
│ 0x000f1810      e11f00f0       adrp x1, 0x4f0000
│ 0x000f1814      00e00091       add x0, x0, 0x38                      ; 0x348038 ; "##MainUI"
│ 0x000f1818      21501291       add x1, x1, 0x494
│ 0x000f181c      22078052       mov w2, 0x39                          ; '9'
│ 0x000f1820      b0a30094       bl fcn.0011a6e0                       ; 0x11a6e0
│ 0x000f1824      20950036       tbz w0, 0, 0xf2ac8
| // true: 0x000f2ac8  false: 0x000f1828
│ 0x000f1828      5ac50094       bl fcn.00122d90                       ; 0x122d90
│ 0x000f182c      f40300aa       mov x20, x0                           ; 0x348038 ; "##MainUI"
│ 0x000f1830      f9c40094       bl fcn.00122c14                       ; 0x122c14
│ 0x000f1834      091ca04e       mov v9.16b, v0.16b
│ 0x000f1838      2b1ca14e       mov v11.16b, v1.16b
│ 0x000f183c      fbc40094       bl fcn.00122c28                       ; 0x122c28
│ 0x000f1840      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f1844      0a1ca04e       mov v10.16b, v0.16b
│ 0x000f1848      004143fd       ldr d0, [x8, 0x680]
│ 0x000f184c      a01200f0       adrp x0, 0x348000
│ 0x000f1850      00040191       add x0, x0, 0x41
│ 0x000f1854      e1430291       add x1, sp, 0x90
│ 0x000f1858      e3031932       mov w3, 0x80
│ 0x000f185c      e2031f2a       mov w2, wzr
│ 0x000f1860      e04b00fd       str d0, [timeptr]
│ 0x000f1864      81be0094       bl fcn.00121268                       ; 0x121268
│ 0x000f1868      e91f00b0       adrp x9, section..bss                 ; 0x4ee000
│ 0x000f186c      48008452       mov w8, 0x2002
│ 0x000f1870      29613391       add x9, x9, 0xcd8
│ 0x000f1874      ff7f01a9       stp xzr, xzr, [arg_1c0hx10]
│ 0x000f1878      e8230079       strh w8, [arg_1c0hx10]
│ 0x000f187c      28014039       ldrb w8, [x9]
│ 0x000f1880      2aad40a9       ldp x10, x11, [x9, 8]
│ 0x000f1884      ff1300f9       str xzr, [arg_1c0hx20]
│ 0x000f1888      ff4b0039       strb wzr, [arg_1c0hx12]
│ 0x000f188c      1f010072       tst w8, 1
│ 0x000f1890      0c7d0153       lsr w12, w8, 1
│ 0x000f1894      6115899a       csinc x1, x11, x9, ne
│ 0x000f1898      82018a9a       csel x2, x12, x10, eq
│ 0x000f189c      e0430091       add x0, sp, 0x10
│ 0x000f18a0      0888ff97       bl fcn.000d38c0                       ; 0xd38c0
│ 0x000f18a4      080840f9       ldr x8, [x0, 0x10]
│ 0x000f18a8      a80314f8       stur x8, [x29, -0xc0]
│ 0x000f18ac      0000c03d       ldr q0, [x0]
│ 0x000f18b0      a003933c       stur q0, [x29, -0xd0]
│ 0x000f18b4      1f7c00a9       stp xzr, xzr, [x0]
│ 0x000f18b8      1f0800f9       str xzr, [x0, 0x10]
│ 0x000f18bc      a11200f0       adrp x1, 0x348000
│ 0x000f18c0      21280191       add x1, x1, 0x4a                      ; 0x34804a ; " HEXABYTEZ CODM VIP V.1.6 | PATCH 1.6.53 | x64 "
│ 0x000f18c4      a04303d1       sub x0, x29, 0xd0
│ 0x000f18c8      e2058052       mov w2, 0x2f                          ; '/'
│ 0x000f18cc      fd87ff97       bl fcn.000d38c0                       ; 0xd38c0
│ 0x000f18d0      080840f9       ldr x8, [x0, 0x10]
│ 0x000f18d4      e85300f9       str x8, [arg_1c0hxa0]
│ 0x000f18d8      0000c03d       ldr q0, [x0]
│ 0x000f18dc      e027803d       str q0, [timeptr]
│ 0x000f18e0      1ffc00a9       stp xzr, xzr, [x0, 8]
│ 0x000f18e4      1f0000f9       str xzr, [x0]
│ 0x000f18e8      a8035338       ldurb w8, [x29, -0xd0]
│ 0x000f18ec      68000036       tbz w8, 0, 0xf18f8
| // true: 0x000f18f8  false: 0x000f18f0
│ 0x000f18f0      a00354f8       ldur x0, [x29, -0xc0]
│ 0x000f18f4      cf54ff97       bl rsym._ZdlPv                        ; 0xc6c30
| // true: 0x000f18f8
│ ; CODE XREF from fcn.000f1024 @ 0xf18ec(x)
│ 0x000f18f8      e8434039       ldrb w8, [arg_1c0hx10]
│ 0x000f18fc      68000036       tbz w8, 0, 0xf1908
| // true: 0x000f1908  false: 0x000f1900
│ 0x000f1900      e01340f9       ldr x0, [arg_1c0hx20]
│ 0x000f1904      cb54ff97       bl rsym._ZdlPv                        ; 0xc6c30
| // true: 0x000f1908
│ ; DATA XREF from fcn.000f1024 @ 0xf18fc(r)
│ 0x000f1908      e68f0094       bl fcn.001158a0                       ; 0x1158a0 ; "H\x1f"
│ 0x000f190c      009443bd       ldr s0, [x0, 0x394]
│ 0x000f1910      a21200f0       adrp x2, 0x348000
│ 0x000f1914      42980091       add x2, x2, 0x26                      ; const char *format
│ 0x000f1918      a04303d1       sub x0, x29, 0xd0                     ; char *s
│ 0x000f191c      00c0221e       fcvt d0, s0
│ 0x000f1920      e1031c32       mov w1, 0x10
│ 0x000f1924      736aff97       bl sym.imp.snprintf                   ; int snprintf(char *s, size_t size, const char *format, ...)
│ 0x000f1928      e8434239       ldrb w8, [timeptr]
│ 0x000f192c      e95340f9       ldr x9, [arg_1c0hxa0]
│ 0x000f1930      ea430291       add x10, sp, 0x90
│ 0x000f1934      560140b2       orr x22, x10, 1
│ 0x000f1938      1f010072       tst w8, 1
│ 0x000f193c      c002899a       csel x0, x22, x9, eq
│ 0x000f1940      00103e1e       fmov s0, -1.00000000
│ 0x000f1944      e1031faa       mov x1, xzr
│ 0x000f1948      e2031f2a       mov w2, wzr
│ 0x000f194c      8c830094       bl fcn.0011277c                       ; 0x11277c ; "i\x1f"
│ 0x000f1950      081ca04e       mov v8.16b, v0.16b
│ 0x000f1954      a01200f0       adrp x0, 0x348000
│ 0x000f1958      00e80191       add x0, x0, 0x7a                      ; 0x34807a ; " | FPS "
│ 0x000f195c      00103e1e       fmov s0, -1.00000000
│ 0x000f1960      e1031faa       mov x1, xzr
│ 0x000f1964      e2031f2a       mov w2, wzr
│ 0x000f1968      85830094       bl fcn.0011277c                       ; 0x11277c ; "i\x1f"
│ 0x000f196c      0c1ca04e       mov v12.16b, v0.16b
│ 0x000f1970      00103e1e       fmov s0, -1.00000000
│ 0x000f1974      a04303d1       sub x0, x29, 0xd0
│ 0x000f1978      e1031faa       mov x1, xzr
│ 0x000f197c      e2031f2a       mov w2, wzr
│ 0x000f1980      7f830094       bl fcn.0011277c                       ; 0x11277c ; "i\x1f"
│ 0x000f1984      0d1ca04e       mov v13.16b, v0.16b
│ 0x000f1988      08c90094       bl fcn.00123da8                       ; 0x123da8
│ 0x000f198c      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f1990      02c14dbd       ldr s2, [x8, 0xdc0]
│ 0x000f1994      01292c1e       fadd s1, s8, s12
│ 0x000f1998      e9434239       ldrb w9, [timeptr]
│ 0x000f199c      21282d1e       fadd s1, s1, s13
│ 0x000f19a0      e85340f9       ldr x8, [arg_1c0hxa0]
│ 0x000f19a4      08102c1e       fmov s8, 0.50000000
│ 0x000f19a8      4139211e       fsub s1, s10, s1
│ 0x000f19ac      4038201e       fsub s0, s2, s0
│ 0x000f19b0      2108281e       fmul s1, s1, s8
│ 0x000f19b4      0008281e       fmul s0, s0, s8
│ 0x000f19b8      2d29211e       fadd s13, s9, s1
│ 0x000f19bc      3f010072       tst w9, 1
│ 0x000f19c0      6c29201e       fadd s12, s11, s0
│ 0x000f19c4      ed33022d       stp s13, s12, [arg_1c0hx10]
│ 0x000f19c8      c302889a       csel x3, x22, x8, eq
│ 0x000f19cc      e1430091       add x1, sp, 0x10
│ 0x000f19d0      02008012       mov w2, -1
│ 0x000f19d4      e00314aa       mov x0, x20                           ; 0x348038 ; "##MainUI"
│ 0x000f19d8      e4031faa       mov x4, xzr
│ 0x000f19dc      e3e30094       bl fcn.0012a968                       ; 0x12a968
│ 0x000f19e0      e8434239       ldrb w8, [timeptr]
│ 0x000f19e4      e95340f9       ldr x9, [arg_1c0hxa0]
│ 0x000f19e8      1f010072       tst w8, 1
│ 0x000f19ec      c002899a       csel x0, x22, x9, eq
│ 0x000f19f0      00103e1e       fmov s0, -1.00000000
│ 0x000f19f4      e1031faa       mov x1, xzr
│ 0x000f19f8      e2031f2a       mov w2, wzr
│ 0x000f19fc      60830094       bl fcn.0011277c                       ; 0x11277c ; "i\x1f"
│ 0x000f1a00      ad29201e       fadd s13, s13, s0
│ 0x000f1a04      ed33022d       stp s13, s12, [arg_1c0hx10]
│ 0x000f1a08      a31200f0       adrp x3, 0x348000
│ 0x000f1a0c      63e80191       add x3, x3, 0x7a                      ; 0x34807a ; " | FPS "
│ 0x000f1a10      e1430091       add x1, sp, 0x10
│ 0x000f1a14      02008012       mov w2, -1
│ 0x000f1a18      e00314aa       mov x0, x20                           ; 0x348038 ; "##MainUI"
│ 0x000f1a1c      e4031faa       mov x4, xzr
│ 0x000f1a20      d2e30094       bl fcn.0012a968                       ; 0x12a968
│ 0x000f1a24      a01200f0       adrp x0, 0x348000
│ 0x000f1a28      00e80191       add x0, x0, 0x7a                      ; 0x34807a ; " | FPS "
│ 0x000f1a2c      00103e1e       fmov s0, -1.00000000
│ 0x000f1a30      e1031faa       mov x1, xzr
│ 0x000f1a34      e2031f2a       mov w2, wzr
│ 0x000f1a38      51830094       bl fcn.0011277c                       ; 0x11277c ; "i\x1f"
│ 0x000f1a3c      a029201e       fadd s0, s13, s0
│ 0x000f1a40      e033022d       stp s0, s12, [arg_1c0hx10]
│ 0x000f1a44      e1430091       add x1, sp, 0x10
│ 0x000f1a48      e29f0832       mov w2, -0xff0100
│ 0x000f1a4c      a34303d1       sub x3, x29, 0xd0
│ 0x000f1a50      e00314aa       mov x0, x20                           ; 0x348038 ; "##MainUI"
│ 0x000f1a54      e4031faa       mov x4, xzr
│ 0x000f1a58      c4e30094       bl fcn.0012a968                       ; 0x12a968
│ 0x000f1a5c      0010271e       fmov s0, 24.00000000
│ 0x000f1a60      0150261e       fmov s1, 18.00000000
│ 0x000f1a64      6c29201e       fadd s12, s11, s0
│ 0x000f1a68      2d29211e       fadd s13, s9, s1
│ 0x000f1a6c      ed33022d       stp s13, s12, [arg_1c0hx10]
│ 0x000f1a70      e21f8a52       mov w2, 0x50ff
│ 0x000f1a74      0090231e       fmov s0, 7.00000000
│ 0x000f1a78      e1430091       add x1, sp, 0x10
│ 0x000f1a7c      02eabf72       movk w2, 0xff50, lsl 16
│ 0x000f1a80      e00314aa       mov x0, x20                           ; 0x348038 ; "##MainUI"
│ 0x000f1a84      e3031f2a       mov w3, wzr
│ 0x000f1a88      dae10094       bl fcn.0012a1f0                       ; 0x12a1f0
│ 0x000f1a8c      0090251e       fmov s0, 14.00000000
│ 0x000f1a90      0b90241e       fmov s11, 10.00000000
│ 0x000f1a94      a029201e       fadd s0, s13, s0
│ 0x000f1a98      00282b1e       fadd s0, s0, s11
│ 0x000f1a9c      e033022d       stp s0, s12, [arg_1c0hx10]
│ 0x000f1aa0      e29f9b52       mov w2, 0xdcff
│ 0x000f1aa4      0090231e       fmov s0, 7.00000000
│ 0x000f1aa8      e1430091       add x1, sp, 0x10
│ 0x000f1aac      82ecbf72       movk w2, 0xff64, lsl 16
│ 0x000f1ab0      e00314aa       mov x0, x20                           ; 0x348038 ; "##MainUI"
│ 0x000f1ab4      e3031f2a       mov w3, wzr
│ 0x000f1ab8      cee10094       bl fcn.0012a1f0                       ; 0x12a1f0
│ 0x000f1abc      0090271e       fmov s0, 28.00000000
│ 0x000f1ac0      0190261e       fmov s1, 20.00000000
│ 0x000f1ac4      a029201e       fadd s0, s13, s0
│ 0x000f1ac8      0028211e       fadd s0, s0, s1
│ 0x000f1acc      e033022d       stp s0, s12, [arg_1c0hx10]
│ 0x000f1ad0      028a9b52       mov w2, 0xdc50
│ 0x000f1ad4      0090231e       fmov s0, 7.00000000
│ 0x000f1ad8      e1430091       add x1, sp, 0x10
│ 0x000f1adc      02efbf72       movk w2, 0xff78, lsl 16
│ 0x000f1ae0      e00314aa       mov x0, x20                           ; 0x348038 ; "##MainUI"
│ 0x000f1ae4      e3031f2a       mov w3, wzr
│ 0x000f1ae8      c2e10094       bl fcn.0012a1f0                       ; 0x12a1f0
│ 0x000f1aec      20292a1e       fadd s0, s9, s10
│ 0x000f1af0      0190361e       fmov s1, -20.00000000
│ 0x000f1af4      02d0341e       fmov s2, -11.00000000
│ 0x000f1af8      0028211e       fadd s0, s0, s1
│ 0x000f1afc      8129221e       fadd s1, s12, s2
│ 0x000f1b00      e033022d       stp s0, s12, [arg_1c0hx10]
│ 0x000f1b04      0028221e       fadd s0, s0, s2
│ 0x000f1b08      e007102d       stp s0, s1, [arg_1c0hx80]
│ 0x000f1b0c      e0030291       add x0, sp, 0x80
│ 0x000f1b10      aac70094       bl fcn.001239b8                       ; 0x1239b8
│ 0x000f1b14      c0f6010f       fmov v0.2s, 22.00000000
│ 0x000f1b18      e04300fd       str d0, [arg_1c0hx80]
│ 0x000f1b1c      a01200f0       adrp x0, 0x348000
│ 0x000f1b20      00080291       add x0, x0, 0x82                      ; 0x348082 ; "##CloseBtn"
│ 0x000f1b24      e1030291       add x1, sp, 0x80
│ 0x000f1b28      e2031f2a       mov w2, wzr
│ 0x000f1b2c      f8680194       bl fcn.0014bf0c                       ; 0x14bf0c
│ 0x000f1b30      40000036       tbz w0, 0, 0xf1b38
| // true: 0x000f1b38  false: 0x000f1b34
│ 0x000f1b34      bf521239       strb wzr, [x21, 0x494]
| // true: 0x000f1b38
│ ; DATA XREF from fcn.000f1024 @ 0xf1b30(r)
│ 0x000f1b38      e0031f2a       mov w0, wzr
│ 0x000f1b3c      8e890094       bl fcn.00114174                       ; 0x114174 ; "H\x1f"
│ 0x000f1b40      c8dc9c52       mov w8, 0xe6e6
│ 0x000f1b44      1f000072       tst w0, 1
│ 0x000f1b48      c8fcbf72       movk w8, 0xffe6, lsl 16
│ 0x000f1b4c      02119f5a       csinv w2, w8, wzr, ne
│ 0x000f1b50      00d0241e       fmov s0, 11.00000000
│ 0x000f1b54      e1430091       add x1, sp, 0x10
│ 0x000f1b58      e00314aa       mov x0, x20                           ; 0x348038 ; "##MainUI"
│ 0x000f1b5c      e3031f2a       mov w3, wzr
│ 0x000f1b60      a4e10094       bl fcn.0012a1f0                       ; 0x12a1f0
│ 0x000f1b64      e01740bd       ldr s0, [arg_1c0hx14]
│ 0x000f1b68      e81340b9       ldr w8, [arg_1c0hx10]
│ 0x000f1b6c      01d0321e       fmov s1, -5.50000000
│ 0x000f1b70      0128211e       fadd s1, s0, s1
│ 0x000f1b74      e88300b9       str w8, [arg_1c0hx80]
│ 0x000f1b78      e87300b9       str w8, [arg_1c0hx70]
│ 0x000f1b7c      e18700bd       str s1, [arg_1c0hx84]
│ 0x000f1b80      e07700bd       str s0, [arg_1c0hx74]
│ 0x000f1b84      0010201e       fmov s0, 2.00000000
│ 0x000f1b88      e1030291       add x1, sp, 0x80
│ 0x000f1b8c      e2c30191       add x2, sp, 0x70
│ 0x000f1b90      e31f0832       mov w3, -0x1000000
│ 0x000f1b94      e00314aa       mov x0, x20                           ; 0x348038 ; "##MainUI"
│ 0x000f1b98      77df0094       bl fcn.00129974                       ; 0x129974
│ 0x000f1b9c      e8434239       ldrb w8, [timeptr]
│ 0x000f1ba0      68000036       tbz w8, 0, 0xf1bac
| // true: 0x000f1bac  false: 0x000f1ba4
│ 0x000f1ba4      e05340f9       ldr x0, [arg_1c0hxa0]
│ 0x000f1ba8      2254ff97       bl rsym._ZdlPv                        ; 0xc6c30
| // true: 0x000f1bac
│ ; CODE XREF from fcn.000f1024 @ 0xf1ba0(x)
│ 0x000f1bac      e1bd0094       bl fcn.00121330                       ; 0x121330
│ 0x000f1bb0      256c0194       bl fcn.0014cc44                       ; 0x14cc44
│ 0x000f1bb4      a01200f0       adrp x0, 0x348000
│ 0x000f1bb8      00340291       add x0, x0, 0x8d                      ; 0x34808d ; "##Body"
│ 0x000f1bbc      e1430291       add x1, sp, 0x90
│ 0x000f1bc0      e2031f2a       mov w2, wzr
│ 0x000f1bc4      e3031f2a       mov w3, wzr
│ 0x000f1bc8      ff4b00f9       str xzr, [timeptr]
│ 0x000f1bcc      a7bd0094       bl fcn.00121268                       ; 0x121268
│ 0x000f1bd0      0010241e       fmov s0, 8.00000000
│ 0x000f1bd4      e00b0032       mov w0, 7
│ 0x000f1bd8      d37f0094       bl fcn.00111b24                       ; 0x111b24
│ 0x000f1bdc      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f1be0      009dc33d       ldr q0, [x8, 0xe70]
│ 0x000f1be4      e0070032       mov w0, 3
│ 0x000f1be8      e1430291       add x1, sp, 0x90
│ 0x000f1bec      e027803d       str q0, [timeptr]
│ 0x000f1bf0      5c7f0094       bl fcn.00111960                       ; 0x111960
│ 0x000f1bf4      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f1bf8      004543fd       ldr d0, [x8, 0x688]
│ 0x000f1bfc      a01200f0       adrp x0, 0x348000
│ 0x000f1c00      00500291       add x0, x0, 0x94                      ; 0x348094 ; "Sidebar"
│ 0x000f1c04      e1430291       add x1, sp, 0x90
│ 0x000f1c08      e2030032       mov w2, 1
│ 0x000f1c0c      e3031f2a       mov w3, wzr
│ 0x000f1c10      e04b00fd       str d0, [timeptr]
│ 0x000f1c14      95bd0094       bl fcn.00121268                       ; 0x121268
│ 0x000f1c18      0b6c0194       bl fcn.0014cc44                       ; 0x14cc44
│ 0x000f1c1c      81c70094       bl fcn.00123a20                       ; 0x123a20
│ 0x000f1c20      0150221e       fmov s1, 4.50000000
│ 0x000f1c24      0028211e       fadd s0, s0, s1
│ 0x000f1c28      96c70094       bl fcn.00123a80                       ; 0x123a80
│ 0x000f1c2c      7fbd0094       bl fcn.00121228                       ; 0x121228
│ 0x000f1c30      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f1c34      01c54dbd       ldr s1, [x8, 0xdc4]
│ 0x000f1c38      0028211e       fadd s0, s0, s1
│ 0x000f1c3c      0908281e       fmul s9, s0, s8
│ 0x000f1c40      6fc70094       bl fcn.001239fc                       ; 0x1239fc
│ 0x000f1c44      0028291e       fadd s0, s0, s9
│ 0x000f1c48      7fc70094       bl fcn.00123a44                       ; 0x123a44
│ 0x000f1c4c      a01200f0       adrp x0, 0x348000
│ 0x000f1c50      00700291       add x0, x0, 0x9c                      ; 0x34809c ; "LogoClickable"
│ 0x000f1c54      ddc40094       bl fcn.00122fc8                       ; 0x122fc8
│ 0x000f1c58      0854a852       mov w8, 0x42a00000
│ 0x000f1c5c      a01200f0       adrp x0, 0x348000
│ 0x000f1c60      000d040e       dup v0.2s, w8
│ 0x000f1c64      00a80291       add x0, x0, 0xaa                      ; 0x3480aa ; "##LogoButton"
│ 0x000f1c68      e1430291       add x1, sp, 0x90
│ 0x000f1c6c      e2031f2a       mov w2, wzr
│ 0x000f1c70      e04b00fd       str d0, [timeptr]
│ 0x000f1c74      a6680194       bl fcn.0014bf0c                       ; 0x14bf0c
│ 0x000f1c78      80000036       tbz w0, 0, 0xf1c88
| // true: 0x000f1c88  false: 0x000f1c7c
│ 0x000f1c7c      a8525239       ldrb w8, [x21, 0x494]
│ 0x000f1c80      08010052       eor w8, w8, 1
│ 0x000f1c84      a8521239       strb w8, [x21, 0x494]
| // true: 0x000f1c88
│ ; DATA XREF from fcn.000f1024 @ 0xf1c78(r)
│ 0x000f1c88      42c40094       bl fcn.00122d90                       ; 0x122d90
│ 0x000f1c8c      f40300aa       mov x20, x0                           ; 0x3480aa ; "##LogoButton"
│ 0x000f1c90      9ebc0094       bl fcn.00120f08                       ; 0x120f08
│ 0x000f1c94      e007122d       stp s0, s1, [timeptr]
│ 0x000f1c98      a1bc0094       bl fcn.00120f1c                       ; 0x120f1c
│ 0x000f1c9c      e81f00d0       adrp x8, 0x4ef000
│ 0x000f1ca0      01d547f9       ldr x1, [x8, 0xfa8]
│ 0x000f1ca4      a007262d       stp s0, s1, [x29, -0xd0]
│ 0x000f1ca8      00f6030f       fmov v0.2s, 1.00000000
│ 0x000f1cac      e2430291       add x2, sp, 0x90
│ 0x000f1cb0      a34303d1       sub x3, x29, 0xd0
│ 0x000f1cb4      e4430091       add x4, sp, 0x10
│ 0x000f1cb8      e5030291       add x5, sp, 0x80
│ 0x000f1cbc      06008012       mov w6, -1
│ 0x000f1cc0      e00314aa       mov x0, x20                           ; 0x3480aa ; "##LogoButton"
│ 0x000f1cc4      ff0b00f9       str xzr, [arg_1c0hx10]
│ 0x000f1cc8      e04300fd       str d0, [arg_1c0hx80]
│ 0x000f1ccc      55e30094       bl fcn.0012aa20                       ; 0x12aa20
│ 0x000f1cd0      e0031f2a       mov w0, wzr
│ 0x000f1cd4      28890094       bl fcn.00114174                       ; 0x114174 ; "H\x1f"
│ 0x000f1cd8      40010036       tbz w0, 0, 0xf1d00
| // true: 0x000f1d00  false: 0x000f1cdc
│ 0x000f1cdc      e1430291       add x1, sp, 0x90
│ 0x000f1ce0      a24303d1       sub x2, x29, 0xd0
│ 0x000f1ce4      03e0ba12       mov w3, 0x28ffffff
│ 0x000f1ce8      e003271e       fmov s0, wzr
│ 0x000f1cec      e00314aa       mov x0, x20
│ 0x000f1cf0      e4031f2a       mov w4, wzr
│ 0x000f1cf4      badf0094       bl fcn.00129bdc                       ; 0x129bdc
│ 0x000f1cf8      e00b0032       mov w0, 7
│ 0x000f1cfc      4abc0094       bl fcn.00120e24                       ; 0x120e24
| // true: 0x000f1d00
│ ; DATA XREF from fcn.000f1024 @ 0xf1cd8(r)
│ 0x000f1d00      0ac60094       bl fcn.00123528                       ; 0x123528
│ 0x000f1d04      47c70094       bl fcn.00123a20                       ; 0x123a20
│ 0x000f1d08      00282b1e       fadd s0, s0, s11
│ 0x000f1d0c      5dc70094       bl fcn.00123a80                       ; 0x123a80
│ 0x000f1d10      44c70094       bl fcn.00123a20                       ; 0x123a20
│ 0x000f1d14      00282b1e       fadd s0, s0, s11
│ 0x000f1d18      5ac70094       bl fcn.00123a80                       ; 0x123a80
│ 0x000f1d1c      ca6b0194       bl fcn.0014cc44                       ; 0x14cc44
│ 0x000f1d20      956c0194       bl fcn.0014cf74                       ; 0x14cf74
│ 0x000f1d24      c86b0194       bl fcn.0014cc44                       ; 0x14cc44
│ 0x000f1d28      fa1f00f0       adrp x26, 0x4f0000
│ 0x000f1d2c      489f44b9       ldr w8, [x26, 0x49c]
│ 0x000f1d30      b41200f0       adrp x20, 0x348000
│ 0x000f1d34      a01200f0       adrp x0, 0x348000
│ 0x000f1d38      94fa0291       add x20, x20, 0xbe
│ 0x000f1d3c      1f010071       cmp w8, 0
│ 0x000f1d40      e3179f1a       cset w3, eq
│ 0x000f1d44      00dc0291       add x0, x0, 0xb7                      ; 0x3480b7 ; "Visual"
│ 0x000f1d48      e10314aa       mov x1, x20
│ 0x000f1d4c      e9deff97       bl fcn.000e98f0                       ; 0xe98f0
│ 0x000f1d50      80000036       tbz w0, 0, 0xf1d60
| // true: 0x000f1d60  false: 0x000f1d54
│ 0x000f1d54      e8031f2a       mov w8, wzr
│ 0x000f1d58      5f9f04b9       str wzr, [x26, 0x49c]
│ 0x000f1d5c      02000014       b 0xf1d64
| // true: 0x000f1d64
│ ; CODE XREF from fcn.000f1024 @ 0xf1d50(x)
│ 0x000f1d60      489f44b9       ldr w8, [x26, 0x49c]
| // true: 0x000f1d64
│ ; DATA XREF from fcn.000f1024 @ 0xf1d5c(r)
│ 0x000f1d64      b51200f0       adrp x21, 0x348000
│ 0x000f1d68      1f050071       cmp w8, 1
│ 0x000f1d6c      a01200f0       adrp x0, 0x348000
│ 0x000f1d70      b51a0391       add x21, x21, 0xc6
│ 0x000f1d74      e3179f1a       cset w3, eq
│ 0x000f1d78      00080391       add x0, x0, 0xc2
│ 0x000f1d7c      e10315aa       mov x1, x21
│ 0x000f1d80      dcdeff97       bl fcn.000e98f0                       ; 0xe98f0
│ 0x000f1d84      80000036       tbz w0, 0, 0xf1d94
| // true: 0x000f1d94  false: 0x000f1d88
│ 0x000f1d88      e8030032       mov w8, 1
│ 0x000f1d8c      489f04b9       str w8, [x26, 0x49c]
│ 0x000f1d90      02000014       b 0xf1d98
| // true: 0x000f1d98
│ ; DATA XREF from fcn.000f1024 @ 0xf1d84(r)
│ 0x000f1d94      489f44b9       ldr w8, [x26, 0x49c]
| // true: 0x000f1d98
│ ; DATA XREF from fcn.000f1024 @ 0xf1d90(r)
│ 0x000f1d98      b61200f0       adrp x22, 0x348000
│ 0x000f1d9c      1f090071       cmp w8, 2
│ 0x000f1da0      a01200f0       adrp x0, 0x348000
│ 0x000f1da4      d63e0391       add x22, x22, 0xcf
│ 0x000f1da8      e3179f1a       cset w3, eq
│ 0x000f1dac      00280391       add x0, x0, 0xca                      ; 0x3480ca ; "Misc"
│ 0x000f1db0      e10316aa       mov x1, x22
│ 0x000f1db4      cfdeff97       bl fcn.000e98f0                       ; 0xe98f0
│ 0x000f1db8      80000036       tbz w0, 0, 0xf1dc8
| // true: 0x000f1dc8  false: 0x000f1dbc
│ 0x000f1dbc      e8031f32       mov w8, 2
│ 0x000f1dc0      489f04b9       str w8, [x26, 0x49c]
│ 0x000f1dc4      02000014       b 0xf1dcc
| // true: 0x000f1dcc
│ ; DATA XREF from fcn.000f1024 @ 0xf1db8(r)
│ 0x000f1dc8      489f44b9       ldr w8, [x26, 0x49c]
| // true: 0x000f1dcc
│ ; DATA XREF from fcn.000f1024 @ 0xf1dc4(r)
│ 0x000f1dcc      b71200f0       adrp x23, 0x348000
│ 0x000f1dd0      1f0d0071       cmp w8, 3
│ 0x000f1dd4      a01200f0       adrp x0, 0x348000
│ 0x000f1dd8      f7620391       add x23, x23, 0xd8
│ 0x000f1ddc      e3179f1a       cset w3, eq
│ 0x000f1de0      004c0391       add x0, x0, 0xd3                      ; 0x3480d3 ; "Skin"
│ 0x000f1de4      e10317aa       mov x1, x23
│ 0x000f1de8      c2deff97       bl fcn.000e98f0                       ; 0xe98f0
│ 0x000f1dec      80000036       tbz w0, 0, 0xf1dfc
| // true: 0x000f1dfc  false: 0x000f1df0
│ 0x000f1df0      e8070032       mov w8, 3
│ 0x000f1df4      489f04b9       str w8, [x26, 0x49c]
│ 0x000f1df8      02000014       b 0xf1e00
| // true: 0x000f1e00
│ ; CODE XREF from fcn.000f1024 @ 0xf1dec(x)
│ 0x000f1dfc      489f44b9       ldr w8, [x26, 0x49c]
| // true: 0x000f1e00
│ ; DATA XREF from fcn.000f1024 @ 0xf1df8(r)
│ 0x000f1e00      1f110071       cmp w8, 4
│ 0x000f1e04      a01200f0       adrp x0, 0x348000
│ 0x000f1e08      a11200f0       adrp x1, 0x348000
│ 0x000f1e0c      e3179f1a       cset w3, eq
│ 0x000f1e10      00700391       add x0, x0, 0xdc                      ; 0x3480dc ; "Room Info"
│ 0x000f1e14      21980391       add x1, x1, 0xe6
│ 0x000f1e18      b6deff97       bl fcn.000e98f0                       ; 0xe98f0
│ 0x000f1e1c      80000036       tbz w0, 0, 0xf1e2c
| // true: 0x000f1e2c  false: 0x000f1e20
│ 0x000f1e20      e8031e32       mov w8, 4
│ 0x000f1e24      489f04b9       str w8, [x26, 0x49c]
│ 0x000f1e28      02000014       b 0xf1e30
| // true: 0x000f1e30
│ ; DATA XREF from fcn.000f1024 @ 0xf1e1c(r)
│ 0x000f1e2c      489f44b9       ldr w8, [x26, 0x49c]
| // true: 0x000f1e30
│ ; DATA XREF from fcn.000f1024 @ 0xf1e28(r)
│ 0x000f1e30      b81200f0       adrp x24, 0x348000
│ 0x000f1e34      1f150071       cmp w8, 5
│ 0x000f1e38      a01200f0       adrp x0, 0x348000
│ 0x000f1e3c      18cb0391       add x24, x24, 0xf2
│ 0x000f1e40      e3179f1a       cset w3, eq
│ 0x000f1e44      00a80391       add x0, x0, 0xea                      ; 0x3480ea ; "Setting"
│ 0x000f1e48      e10318aa       mov x1, x24
│ 0x000f1e4c      a9deff97       bl fcn.000e98f0                       ; 0xe98f0
│ 0x000f1e50      60000036       tbz w0, 0, 0xf1e5c
| // true: 0x000f1e5c  false: 0x000f1e54
│ 0x000f1e54      a8008052       mov w8, 5
│ 0x000f1e58      489f04b9       str w8, [x26, 0x49c]
| // true: 0x000f1e5c
│ ; DATA XREF from fcn.000f1024 @ 0xf1e50(r)
│ 0x000f1e5c      35bd0094       bl fcn.00121330                       ; 0x121330
│ 0x000f1e60      e0030032       mov w0, 1
│ 0x000f1e64      1b7f0094       bl fcn.00111ad0                       ; 0x111ad0
│ 0x000f1e68      e0030032       mov w0, 1
│ 0x000f1e6c      e37f0094       bl fcn.00111df8                       ; 0x111df8
│ 0x000f1e70      09103e1e       fmov s9, -1.00000000
│ 0x000f1e74      e003271e       fmov s0, wzr
│ 0x000f1e78      211da94e       mov v1.16b, v9.16b
│ 0x000f1e7c      92c60094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f1e80      a01200f0       adrp x0, 0x348000
│ 0x000f1e84      00d80391       add x0, x0, 0xf6                      ; 0x3480f6 ; "Content"
│ 0x000f1e88      e1430291       add x1, sp, 0x90
│ 0x000f1e8c      e2030032       mov w2, 1
│ 0x000f1e90      e3031f2a       mov w3, wzr
│ 0x000f1e94      ff4b00f9       str xzr, [timeptr]
│ 0x000f1e98      fb430291       add x27, sp, 0x90
│ 0x000f1e9c      f3bc0094       bl fcn.00121268                       ; 0x121268
│ 0x000f1ea0      0030271e       fmov s0, 25.00000000
│ 0x000f1ea4      06c70094       bl fcn.00123abc                       ; 0x123abc
│ 0x000f1ea8      489f44b9       ldr w8, [x26, 0x49c]
│ 0x000f1eac      491600f0       adrp x9, 0x3bc000
│ 0x000f1eb0      aa1200f0       adrp x10, 0x348000
│ 0x000f1eb4      ab1200f0       adrp x11, 0x348000
│ 0x000f1eb8      29792391       add x9, x9, 0x8de
│ 0x000f1ebc      4a150491       add x10, x10, 0x105                   ; 0x348105 ; "ESP & visual settings"
│ 0x000f1ec0      6bf90391       add x11, x11, 0xfe                    ; 0x3480fe ; "VISUAL"
│ 0x000f1ec4      1f010071       cmp w8, 0
│ 0x000f1ec8      8c02899a       csel x12, x20, x9, eq
│ 0x000f1ecc      4a01899a       csel x10, x10, x9, eq                 ; 0x348105 ; "ESP & visual settings"
│ 0x000f1ed0      6901899a       csel x9, x11, x9, eq                  ; 0x3480fe ; "VISUAL"
│ 0x000f1ed4      ab1200f0       adrp x11, 0x348000
│ 0x000f1ed8      6b7d0491       add x11, x11, 0x11f                   ; 0x34811f ; "Aim assistance features"
│ 0x000f1edc      1f050071       cmp w8, 1
│ 0x000f1ee0      ad1200f0       adrp x13, 0x348000
│ 0x000f1ee4      ad6d0491       add x13, x13, 0x11b
│ 0x000f1ee8      6a018a9a       csel x10, x11, x10, eq                ; 0x348105 ; "ESP & visual settings"
│ 0x000f1eec      ab1200f0       adrp x11, 0x348000
│ 0x000f1ef0      ac028c9a       csel x12, x21, x12, eq
│ 0x000f1ef4      6bf10491       add x11, x11, 0x13c                   ; 0x34813c ; "Miscellaneous features"
│ 0x000f1ef8      a901899a       csel x9, x13, x9, eq                  ; 0x3480fe ; "VISUAL"
│ 0x000f1efc      ad1200f0       adrp x13, 0x348000
│ 0x000f1f00      1f090071       cmp w8, 2
│ 0x000f1f04      addd0491       add x13, x13, 0x137                   ; 0x348137 ; "MISC"
│ 0x000f1f08      ae1200f0       adrp x14, 0x348000
│ 0x000f1f0c      6a018a9a       csel x10, x11, x10, eq                ; 0x348105 ; "ESP & visual settings"
│ 0x000f1f10      ab1200f0       adrp x11, 0x348000
│ 0x000f1f14      cc028c9a       csel x12, x22, x12, eq
│ 0x000f1f18      ce610591       add x14, x14, 0x158                   ; 0x348158 ; "Character skin & Weapon selection"
│ 0x000f1f1c      6b4d0591       add x11, x11, 0x153                   ; 0x348153 ; "SKIN"
│ 0x000f1f20      a901899a       csel x9, x13, x9, eq                  ; 0x3480fe ; "VISUAL"
│ 0x000f1f24      ad1200f0       adrp x13, 0x348000
│ 0x000f1f28      1f0d0071       cmp w8, 3
│ 0x000f1f2c      ad790691       add x13, x13, 0x19e
│ 0x000f1f30      ec028c9a       csel x12, x23, x12, eq
│ 0x000f1f34      af1200f0       adrp x15, 0x348000
│ 0x000f1f38      ca018a9a       csel x10, x14, x10, eq                ; 0x348105 ; "ESP & visual settings"
│ 0x000f1f3c      ae1200f0       adrp x14, 0x348000
│ 0x000f1f40      6901899a       csel x9, x11, x9, eq                  ; 0x3480fe ; "VISUAL"
│ 0x000f1f44      1f110071       cmp w8, 4
│ 0x000f1f48      ef110691       add x15, x15, 0x184                   ; 0x348184 ; "Room & player information"
│ 0x000f1f4c      cee90591       add x14, x14, 0x17a                   ; 0x34817a ; "ROOM INFO"
│ 0x000f1f50      ac018c9a       csel x12, x13, x12, eq
│ 0x000f1f54      ad1200f0       adrp x13, 0x348000
│ 0x000f1f58      ab1200f0       adrp x11, 0x348000
│ 0x000f1f5c      ad890691       add x13, x13, 0x1a2                   ; 0x3481a2 ; "SETTING"
│ 0x000f1f60      ea018a9a       csel x10, x15, x10, eq                ; 0x348105 ; "ESP & visual settings"
│ 0x000f1f64      c901899a       csel x9, x14, x9, eq                  ; 0x3480fe ; "VISUAL"
│ 0x000f1f68      1f150071       cmp w8, 5
│ 0x000f1f6c      e01f00d0       adrp x0, 0x4ef000
│ 0x000f1f70      a11200f0       adrp x1, 0x348000
│ 0x000f1f74      6ba90691       add x11, x11, 0x1aa                   ; 0x3481aa ; "Application configuration"
│ 0x000f1f78      02038c9a       csel x2, x24, x12, eq
│ 0x000f1f7c      a301899a       csel x3, x13, x9, eq                  ; 0x3480fe ; "VISUAL"
│ 0x000f1f80      00003691       add x0, x0, 0xd80
│ 0x000f1f84      21100791       add x1, x1, 0x1c4
│ 0x000f1f88      74018a9a       csel x20, x11, x10, eq                ; 0x348105 ; "ESP & visual settings"
│ 0x000f1f8c      fa640194       bl fcn.0014b374                       ; 0x14b374
│ 0x000f1f90      e003271e       fmov s0, wzr
│ 0x000f1f94      211da94e       mov v1.16b, v9.16b
│ 0x000f1f98      4bc60094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f1f9c      e01f00d0       adrp x0, 0x4ef000
│ 0x000f1fa0      a11200f0       adrp x1, 0x348000
│ 0x000f1fa4      00403791       add x0, x0, 0xdd0
│ 0x000f1fa8      21280791       add x1, x1, 0x1ca                     ; 0x3481ca ; " | %s"
│ 0x000f1fac      e20314aa       mov x2, x20                           ; 0x348105 ; "ESP & visual settings"
│ 0x000f1fb0      f1640194       bl fcn.0014b374                       ; 0x14b374
│ 0x000f1fb4      f06b0194       bl fcn.0014cf74                       ; 0x14cf74
│ 0x000f1fb8      236b0194       bl fcn.0014cc44                       ; 0x14cc44
│ 0x000f1fbc      489f44b9       ldr w8, [x26, 0x49c]
│ 0x000f1fc0      a80e0034       cbz w8, 0xf2194
| // true: 0x000f2194  false: 0x000f1fc4
│ 0x000f1fc4      1f050071       cmp w8, 1
│ 0x000f1fc8      a1280054       b.ne 0xf24dc
| // true: 0x000f24dc  false: 0x000f1fcc
│ ; CODE XREF from fcn.000f1024 @ 0xf24d8(x)
│ 0x000f1fcc      881200f0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f1fd0      004943fd       ldr d0, [x8, 0x690]
│ 0x000f1fd4      60018052       mov w0, 0xb
│ 0x000f1fd8      e1430291       add x1, sp, 0x90
│ 0x000f1fdc      e04b00fd       str d0, [timeptr]
│ 0x000f1fe0      2b7f0094       bl fcn.00111c8c                       ; 0x111c8c
│ 0x000f1fe4      86c60094       bl fcn.001239fc                       ; 0x1239fc
│ 0x000f1fe8      741c00d0       adrp x20, section..data               ; 0x47f000
│ 0x000f1fec      94e20391       add x20, x20, 0xf8
│ 0x000f1ff0      a01200f0       adrp x0, 0x348000
│ 0x000f1ff4      81460191       add x1, x20, 0x51
│ 0x000f1ff8      00800991       add x0, x0, 0x260                     ; 0x348260 ; "Aimbot 360"
│ 0x000f1ffc      091ca04e       mov v9.16b, v0.16b
│ 0x000f2000      3ddcff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2004      881200d0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f2008      00c94dbd       ldr s0, [x8, 0xdc8]
│ 0x000f200c      01103e1e       fmov s1, -1.00000000
│ 0x000f2010      2929201e       fadd s9, s9, s0
│ 0x000f2014      201da94e       mov v0.16b, v9.16b
│ 0x000f2018      2bc60094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f201c      a01200d0       adrp x0, 0x348000
│ 0x000f2020      81c20191       add x1, x20, 0x70
│ 0x000f2024      00ac0991       add x0, x0, 0x26b                     ; 0x34826b ; "Bullet Track"
│ 0x000f2028      33dcff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f202c      a01200d0       adrp x0, 0x348000
│ 0x000f2030      81520191       add x1, x20, 0x54
│ 0x000f2034      00e00991       add x0, x0, 0x278                     ; 0x348278 ; "Aimlock"
│ 0x000f2038      2fdcff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f203c      60000036       tbz w0, 0, 0xf2048
| // true: 0x000f2048  false: 0x000f2040
│ 0x000f2040      88524139       ldrb w8, [x20, 0x54]
│ 0x000f2044      88660139       strb w8, [x20, 0x59]
| // true: 0x000f2048
│ ; DATA XREF from fcn.000f1024 @ 0xf203c(r)
│ 0x000f2048      01103e1e       fmov s1, -1.00000000
│ 0x000f204c      201da94e       mov v0.16b, v9.16b
│ 0x000f2050      1dc60094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f2054      a01200d0       adrp x0, 0x348000
│ 0x000f2058      e11f0090       adrp x1, section..bss                 ; 0x4ee000
│ 0x000f205c      00000a91       add x0, x0, 0x280                     ; 0x348280 ; "Hide Fov"
│ 0x000f2060      21f02391       add x1, x1, 0x8fc
│ 0x000f2064      24dcff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2068      88664139       ldrb w8, [x20, 0x59]
│ 0x000f206c      48010034       cbz w8, 0xf2094
| // true: 0x000f2094  false: 0x000f2070
│ 0x000f2070      881200d0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f2074      01f94cbd       ldr s1, [x8, 0xcf8]
│ 0x000f2078      a01200d0       adrp x0, 0x348000
│ 0x000f207c      e2140090       adrp x2, 0x38e000
│ 0x000f2080      81920191       add x1, x20, 0x64
│ 0x000f2084      00240a91       add x0, x0, 0x289                     ; 0x348289 ; "Locking"
│ 0x000f2088      42241791       add x2, x2, 0x5c9
│ 0x000f208c      e003271e       fmov s0, wzr
│ 0x000f2090      d2deff97       bl fcn.000e9bd8                       ; 0xe9bd8
| // true: 0x000f2094
│ ; DATA XREF from fcn.000f1024 @ 0xf206c(r)
│ 0x000f2094      ec6a0194       bl fcn.0014cc44                       ; 0x14cc44
│ 0x000f2098      881200d0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f209c      891200d0       adrp x9, case.0x1328c8.23             ; 0x344000
│ 0x000f20a0      00f94cbd       ldr s0, [x8, 0xcf8]
│ 0x000f20a4      21cd4dbd       ldr s1, [x9, 0xdcc]
│ 0x000f20a8      a01200d0       adrp x0, 0x348000
│ 0x000f20ac      a21200d0       adrp x2, 0x348000
│ 0x000f20b0      81020291       add x1, x20, 0x80
│ 0x000f20b4      00140a91       add x0, x0, 0x285
│ 0x000f20b8      42980091       add x2, x2, 0x26
│ 0x000f20bc      c7deff97       bl fcn.000e9bd8                       ; 0xe9bd8
│ 0x000f20c0      a01200d0       adrp x0, 0x348000
│ 0x000f20c4      621f00d0       adrp x2, 0x4e0000
│ 0x000f20c8      81d20191       add x1, x20, 0x74
│ 0x000f20cc      00700a91       add x0, x0, 0x29c                     ; 0x34829c ; "Location"
│ 0x000f20d0      42601d91       add x2, x2, 0x758
│ 0x000f20d4      e3070032       mov w3, 3
│ 0x000f20d8      04008012       mov w4, -1
│ 0x000f20dc      756e0194       bl fcn.0014dab0                       ; 0x14dab0
│ 0x000f20e0      a01200b0       adrp x0, 0x347000
│ 0x000f20e4      621f00d0       adrp x2, 0x4e0000
│ 0x000f20e8      81e20191       add x1, x20, 0x78
│ 0x000f20ec      00fc0a91       add x0, x0, 0x2bf
│ 0x000f20f0      42c01d91       add x2, x2, 0x770
│ 0x000f20f4      e3031e32       mov w3, 4
│ 0x000f20f8      04008012       mov w4, -1
│ 0x000f20fc      6d6e0194       bl fcn.0014dab0                       ; 0x14dab0
│ 0x000f2100      a01200d0       adrp x0, 0x348000
│ 0x000f2104      621f00d0       adrp x2, 0x4e0000
│ 0x000f2108      81f20191       add x1, x20, 0x7c
│ 0x000f210c      00fc0a91       add x0, x0, 0x2bf                     ; 0x3482bf ; "Target By"
│ 0x000f2110      42401e91       add x2, x2, 0x790
│ 0x000f2114      e3031f32       mov w3, 2
│ 0x000f2118      04008012       mov w4, -1
│ 0x000f211c      656e0194       bl fcn.0014dab0                       ; 0x14dab0
│ 0x000f2120      a01200d0       adrp x0, 0x348000
│ 0x000f2124      621f00d0       adrp x2, 0x4e0000
│ 0x000f2128      81e20391       add x1, x20, 0xf8
│ 0x000f212c      00840b91       add x0, x0, 0x2e1                     ; 0x3482e1 ; "Crosshair Type"
│ 0x000f2130      42801e91       add x2, x2, 0x7a0
│ 0x000f2134      e3070032       mov w3, 3
│ 0x000f2138      04008012       mov w4, -1
│ 0x000f213c      5d6e0194       bl fcn.0014dab0                       ; 0x14dab0
│ 0x000f2140      881200f0       adrp x8, 0x345000
│ 0x000f2144      0025c03d       ldr q0, [x8, 0x90]
│ 0x000f2148      a11200d0       adrp x1, 0x348000
│ 0x000f214c      21c00b91       add x1, x1, 0x2f0                     ; 0x3482f0 ; "Color : Rainbow (Auto)"
│ 0x000f2150      e0430291       add x0, sp, 0x90
│ 0x000f2154      e027803d       str q0, [timeptr]
│ 0x000f2158      87640194       bl fcn.0014b374                       ; 0x14b374
│ 0x000f215c      489f44b9       ldr w8, [x26, 0x49c]
│ 0x000f2160      1f090071       cmp w8, 2
│ 0x000f2164      001c0054       b.eq 0xf24e4
| // true: 0x000f24e4  false: 0x000f2168
│ ; DATA XREF from fcn.000f1024 @ 0xf24e0(r)
│ 0x000f2168      1f0d0071       cmp w8, 3
│ 0x000f216c      01340054       b.ne 0xf27ec
| // true: 0x000f27ec  false: 0x000f2170
│ ; CODE XREF from fcn.000f1024 @ 0xf27e8(x)
│ 0x000f2170      2ebc0094       bl fcn.00121228                       ; 0x121228
│ 0x000f2174      387d0094       bl fcn.00111654                       ; 0x111654 ; "h\x1f"
│ 0x000f2178      1f040094       bl fcn.000f31f4                       ; 0xf31f4
│ 0x000f217c      489f44b9       ldr w8, [x26, 0x49c]
│ 0x000f2180      1f110071       cmp w8, 4
│ 0x000f2184      80330054       b.eq 0xf27f4
| // true: 0x000f27f4  false: 0x000f2188
│ ; DATA XREF from fcn.000f1024 @ 0xf27f0(r)
│ 0x000f2188      1f150071       cmp w8, 5
│ 0x000f218c      00340054       b.eq 0xf280c
| // true: 0x000f280c  false: 0x000f2190
│ 0x000f2190      4e020014       b 0xf2ac8
| // true: 0x000f2ac8
│ ; DATA XREF from fcn.000f1024 @ 0xf1fc0(r)
│ 0x000f2194      ac6a0194       bl fcn.0014cc44                       ; 0x14cc44
│ 0x000f2198      a01200d0       adrp x0, 0x348000
│ 0x000f219c      a11200d0       adrp x1, 0x348000
│ 0x000f21a0      00400791       add x0, x0, 0x1d0                     ; 0x3481d0 ; "%s  Time :"
│ 0x000f21a4      216c0791       add x1, x1, 0x1db
│ 0x000f21a8      11640194       bl fcn.0014b1ec                       ; 0x14b1ec
│ 0x000f21ac      01103e1e       fmov s1, -1.00000000
│ 0x000f21b0      e003271e       fmov s0, wzr
│ 0x000f21b4      c4c50094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f21b8      e8430291       add x8, sp, 0x90
│ 0x000f21bc      34e3ff97       bl fcn.000eae8c                       ; 0xeae8c
│ 0x000f21c0      881200f0       adrp x8, 0x345000
│ 0x000f21c4      e9434239       ldrb w9, [timeptr]
│ 0x000f21c8      0021c03d       ldr q0, [x8, 0x80]
│ 0x000f21cc      e85340f9       ldr x8, [arg_1c0hxa0]
│ 0x000f21d0      6a0340b2       orr x10, x27, 1
│ 0x000f21d4      3f010072       tst w9, 1
│ 0x000f21d8      e003803d       str q0, [sp]
│ 0x000f21dc      a003933c       stur q0, [x29, -0xd0]
│ 0x000f21e0      4201889a       csel x2, x10, x8, eq
│ 0x000f21e4      c11400f0       adrp x1, case.0x124dd0.0              ; 0x38d000
│ 0x000f21e8      215c2791       add x1, x1, 0x9d7
│ 0x000f21ec      a04303d1       sub x0, x29, 0xd0
│ 0x000f21f0      61640194       bl fcn.0014b374                       ; 0x14b374
│ 0x000f21f4      a01200d0       adrp x0, 0x348000
│ 0x000f21f8      a11200d0       adrp x1, 0x348000
│ 0x000f21fc      007c0791       add x0, x0, 0x1df                     ; 0x3481df ; "%s  Playing Time :"
│ 0x000f2200      21c80791       add x1, x1, 0x1f2
│ 0x000f2204      fa630194       bl fcn.0014b1ec                       ; 0x14b1ec
│ 0x000f2208      01103e1e       fmov s1, -1.00000000
│ 0x000f220c      e003271e       fmov s0, wzr
│ 0x000f2210      adc50094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f2214      e003c03d       ldr q0, [sp]
│ 0x000f2218      e007803d       str q0, [arg_1c0hx10]
│ 0x000f221c      a84303d1       sub x8, x29, 0xd0
│ 0x000f2220      b44303d1       sub x20, x29, 0xd0
│ 0x000f2224      54ddff97       bl fcn.000e9774                       ; 0xe9774
│ 0x000f2228      a8035338       ldurb w8, [x29, -0xd0]
│ 0x000f222c      a90354f8       ldur x9, [x29, -0xc0]
│ 0x000f2230      8a0240b2       orr x10, x20, 1
│ 0x000f2234      1f010072       tst w8, 1
│ 0x000f2238      4201899a       csel x2, x10, x9, eq
│ 0x000f223c      c11400f0       adrp x1, case.0x124dd0.0              ; 0x38d000
│ 0x000f2240      215c2791       add x1, x1, 0x9d7
│ 0x000f2244      e0430091       add x0, sp, 0x10
│ 0x000f2248      4b640194       bl fcn.0014b374                       ; 0x14b374
│ 0x000f224c      a8035338       ldurb w8, [x29, -0xd0]
│ 0x000f2250      68000036       tbz w8, 0, 0xf225c
| // true: 0x000f225c  false: 0x000f2254
│ 0x000f2254      a00354f8       ldur x0, [x29, -0xc0]
│ 0x000f2258      7652ff97       bl rsym._ZdlPv                        ; 0xc6c30
| // true: 0x000f225c
│ ; CODE XREF from fcn.000f1024 @ 0xf2250(x)
│ 0x000f225c      881200d0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f2260      004943fd       ldr d0, [x8, 0x690]
│ 0x000f2264      a00313fc       stur d0, [x29, -0xd0]
│ 0x000f2268      60018052       mov w0, 0xb
│ 0x000f226c      a14303d1       sub x1, x29, 0xd0
│ 0x000f2270      877e0094       bl fcn.00111c8c                       ; 0x111c8c
│ 0x000f2274      e2c50094       bl fcn.001239fc                       ; 0x1239fc
│ 0x000f2278      091ca04e       mov v9.16b, v0.16b
│ 0x000f227c      a01200d0       adrp x0, 0x348000
│ 0x000f2280      00d80791       add x0, x0, 0x1f6
│ 0x000f2284      72030094       bl fcn.000f304c                       ; 0xf304c
│ 0x000f2288      d3c60094       bl fcn.00123dd4                       ; 0x123dd4
│ 0x000f228c      741c00b0       adrp x20, section..data               ; 0x47f000
│ 0x000f2290      94e20391       add x20, x20, 0xf8
│ 0x000f2294      a01200d0       adrp x0, 0x348000
│ 0x000f2298      81b20391       add x1, x20, 0xec
│ 0x000f229c      00200891       add x0, x0, 0x208
│ 0x000f22a0      95dbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f22a4      881200d0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f22a8      00c94dbd       ldr s0, [x8, 0xdc8]
│ 0x000f22ac      2929201e       fadd s9, s9, s0
│ 0x000f22b0      01103e1e       fmov s1, -1.00000000
│ 0x000f22b4      201da94e       mov v0.16b, v9.16b
│ 0x000f22b8      83c50094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f22bc      a01200b0       adrp x0, 0x347000
│ 0x000f22c0      81f20391       add x1, x20, 0xfc
│ 0x000f22c4      00940791       add x0, x0, 0x1e5
│ 0x000f22c8      8bdbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f22cc      a01200b0       adrp x0, 0x347000
│ 0x000f22d0      81fe0391       add x1, x20, 0xff
│ 0x000f22d4      00303291       add x0, x0, 0xc8c                     ; 0x347c8c ; "Skeleton"
│ 0x000f22d8      87dbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f22dc      01103e1e       fmov s1, -1.00000000
│ 0x000f22e0      201da94e       mov v0.16b, v9.16b
│ 0x000f22e4      78c50094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f22e8      a01200d0       adrp x0, 0x348000
│ 0x000f22ec      81f60391       add x1, x20, 0xfd
│ 0x000f22f0      00b80891       add x0, x0, 0x22e
│ 0x000f22f4      80dbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f22f8      a01200b0       adrp x0, 0x347000
│ 0x000f22fc      81ae0391       add x1, x20, 0xeb
│ 0x000f2300      00000891       add x0, x0, fcn.00000200              ; 0x200 ; "l\x80\xd9\xff\x14\x81\xd9"
│ 0x000f2304      7cdbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2308      01103e1e       fmov s1, -1.00000000
│ 0x000f230c      201da94e       mov v0.16b, v9.16b
│ 0x000f2310      6dc50094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f2314      a01200b0       adrp x0, 0x347000
│ 0x000f2318      81fa0391       add x1, x20, 0xfe
│ 0x000f231c      00340891       add x0, x0, 0x20d
│ 0x000f2320      75dbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2324      a01200b0       adrp x0, 0x347000
│ 0x000f2328      81aa0391       add x1, x20, 0xea
│ 0x000f232c      00780891       add x0, x0, 0x21e
│ 0x000f2330      71dbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2334      01103e1e       fmov s1, -1.00000000
│ 0x000f2338      201da94e       mov v0.16b, v9.16b
│ 0x000f233c      62c50094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f2340      a01200d0       adrp x0, 0x348000
│ 0x000f2344      81a60391       add x1, x20, 0xe9
│ 0x000f2348      00e80791       add x0, x0, 0x1fa                     ; 0x3481fa ; "360 Alert"
│ 0x000f234c      6adbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2350      a01200d0       adrp x0, 0x348000
│ 0x000f2354      81060491       add x1, x20, 0x101
│ 0x000f2358      00100891       add x0, x0, 0x204                     ; 0x348204 ; "Aim Line"
│ 0x000f235c      66dbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2360      01103e1e       fmov s1, -1.00000000
│ 0x000f2364      201da94e       mov v0.16b, v9.16b
│ 0x000f2368      57c50094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f236c      a01200d0       adrp x0, 0x348000
│ 0x000f2370      81e20091       add x1, x20, 0x38
│ 0x000f2374      00340891       add x0, x0, 0x20d                     ; 0x34820d ; "Teleport Enemy"
│ 0x000f2378      5fdbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f237c      c6c40094       bl fcn.00123694                       ; 0x123694
│ 0x000f2380      e0030032       mov w0, 1
│ 0x000f2384      9d7e0094       bl fcn.00111df8                       ; 0x111df8
│ 0x000f2388      a01200d0       adrp x0, 0x348000
│ 0x000f238c      00700891       add x0, x0, 0x21c                     ; 0x34821c ; "ESP WORLD"
│ 0x000f2390      2f030094       bl fcn.000f304c                       ; 0xf304c
│ 0x000f2394      90c60094       bl fcn.00123dd4                       ; 0x123dd4
│ 0x000f2398      a01200b0       adrp x0, 0x347000
│ 0x000f239c      810e0491       add x1, x20, 0x103
│ 0x000f23a0      00543291       add x0, x0, 0xc95                     ; 0x347c95 ; "Vehicle"
│ 0x000f23a4      54dbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f23a8      01103e1e       fmov s1, -1.00000000
│ 0x000f23ac      201da94e       mov v0.16b, v9.16b
│ 0x000f23b0      45c50094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f23b4      a01200d0       adrp x0, 0x348000
│ 0x000f23b8      810a0491       add x1, x20, 0x102
│ 0x000f23bc      00980891       add x0, x0, 0x226                     ; 0x348226 ; "Vehicle Health"
│ 0x000f23c0      4ddbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f23c4      a01200d0       adrp x0, 0x348000
│ 0x000f23c8      81120491       add x1, x20, 0x104
│ 0x000f23cc      00d40891       add x0, x0, 0x235                     ; 0x348235 ; "ESP Items"
│ 0x000f23d0      49dbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f23d4      88124439       ldrb w8, [x20, 0x104]
│ 0x000f23d8      28050034       cbz w8, 0xf247c
| // true: 0x000f247c  false: 0x000f23dc
│ 0x000f23dc      e66a0194       bl fcn.0014cf74                       ; 0x14cf74
│ 0x000f23e0      a01200d0       adrp x0, 0x348000
│ 0x000f23e4      00fc0891       add x0, x0, 0x23f                     ; 0x34823f ; "Item type toggles:"
│ 0x000f23e8      81630194       bl fcn.0014b1ec                       ; 0x14b1ec
│ 0x000f23ec      751f00d0       adrp x21, 0x4e0000
│ 0x000f23f0      b5421d91       add x21, x21, 0x750
│ 0x000f23f4      a01200d0       adrp x0, 0x348000
│ 0x000f23f8      a1060091       add x1, x21, 1
│ 0x000f23fc      00480991       add x0, x0, 0x252                     ; 0x348252 ; "Weapon "
│ 0x000f2400      3ddbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2404      01103e1e       fmov s1, -1.00000000
│ 0x000f2408      201da94e       mov v0.16b, v9.16b
│ 0x000f240c      2ec50094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f2410      a01200d0       adrp x0, 0x348000
│ 0x000f2414      a10a0091       add x1, x21, 2
│ 0x000f2418      00680991       add x0, x0, 0x25a                     ; 0x34825a ; "Ammo "
│ 0x000f241c      36dbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2420      a0120090       adrp x0, 0x346000
│ 0x000f2424      a10e0091       add x1, x21, 3
│ 0x000f2428      00083991       add x0, x0, 0xe42                     ; 0x346e42 ; "Throwable"
│ 0x000f242c      32dbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2430      01103e1e       fmov s1, -1.00000000
│ 0x000f2434      201da94e       mov v0.16b, v9.16b
│ 0x000f2438      23c50094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f243c      a0120090       adrp x0, 0x346000
│ 0x000f2440      a1120091       add x1, x21, 4
│ 0x000f2444      00703991       add x0, x0, 0xe5c                     ; 0x346e5c ; "Attachment"
│ 0x000f2448      2bdbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f244c      a0120090       adrp x0, 0x346000
│ 0x000f2450      a1160091       add x1, x21, 5
│ 0x000f2454      00842691       add x0, x0, 0x9a1
│ 0x000f2458      27dbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f245c      01103e1e       fmov s1, -1.00000000
│ 0x000f2460      201da94e       mov v0.16b, v9.16b
│ 0x000f2464      18c50094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f2468      a0120090       adrp x0, 0x346000
│ 0x000f246c      a11a0091       add x1, x21, 6
│ 0x000f2470      009c3991       add x0, x0, 0xe67
│ 0x000f2474      20dbff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2478      c0abff97       bl fcn.000dd378                       ; 0xdd378
| // true: 0x000f247c
│ ; DATA XREF from fcn.000f1024 @ 0xf23d8(r)
│ 0x000f247c      86c40094       bl fcn.00123694                       ; 0x123694
│ 0x000f2480      a01200d0       adrp x0, 0x348000
│ 0x000f2484      a21200d0       adrp x2, 0x348000
│ 0x000f2488      81520091       add x1, x20, 0x14
│ 0x000f248c      00200891       add x0, x0, 0x208
│ 0x000f2490      42980091       add x2, x2, 0x26
│ 0x000f2494      00102c1e       fmov s0, 0.50000000
│ 0x000f2498      0190221e       fmov s1, 5.00000000
│ 0x000f249c      cfddff97       bl fcn.000e9bd8                       ; 0xe9bd8
│ 0x000f24a0      a01200b0       adrp x0, 0x347000
│ 0x000f24a4      a21200d0       adrp x2, 0x348000
│ 0x000f24a8      81620091       add x1, x20, 0x18
│ 0x000f24ac      00940791       add x0, x0, 0x1e5
│ 0x000f24b0      42980091       add x2, x2, 0x26
│ 0x000f24b4      00102c1e       fmov s0, 0.50000000
│ 0x000f24b8      0190221e       fmov s1, 5.00000000
│ 0x000f24bc      c7ddff97       bl fcn.000e9bd8                       ; 0xe9bd8
│ 0x000f24c0      e8434239       ldrb w8, [timeptr]
│ 0x000f24c4      68000036       tbz w8, 0, 0xf24d0
| // true: 0x000f24d0  false: 0x000f24c8
│ 0x000f24c8      e05340f9       ldr x0, [arg_1c0hxa0]
│ 0x000f24cc      d951ff97       bl rsym._ZdlPv                        ; 0xc6c30
| // true: 0x000f24d0
│ ; DATA XREF from fcn.000f1024 @ 0xf24c4(r)
│ 0x000f24d0      489f44b9       ldr w8, [x26, 0x49c]
│ 0x000f24d4      1f050071       cmp w8, 1
│ 0x000f24d8      a0d7ff54       b.eq 0xf1fcc
| // true: 0x000f1fcc  false: 0x000f24dc
│ ; DATA XREF from fcn.000f1024 @ 0xf1fc8(r)
│ 0x000f24dc      1f090071       cmp w8, 2
│ 0x000f24e0      41e4ff54       b.ne 0xf2168
| // true: 0x000f2168  false: 0x000f24e4
│ ; CODE XREF from fcn.000f1024 @ 0xf2164(x)
│ 0x000f24e4      46c50094       bl fcn.001239fc                       ; 0x1239fc
│ 0x000f24e8      091ca04e       mov v9.16b, v0.16b
│ 0x000f24ec      3ac60094       bl fcn.00123dd4                       ; 0x123dd4
│ 0x000f24f0      a01200d0       adrp x0, 0x348000
│ 0x000f24f4      001c0c91       add x0, x0, 0x307                     ; 0x348307 ; "Weapon - Core"
│ 0x000f24f8      d5020094       bl fcn.000f304c                       ; 0xf304c
│ 0x000f24fc      761c00b0       adrp x22, section..data               ; 0x47f000
│ 0x000f2500      d6e20391       add x22, x22, 0xf8
│ 0x000f2504      a01200d0       adrp x0, 0x348000
│ 0x000f2508      c19a0791       add x1, x22, 0x1e6
│ 0x000f250c      00540c91       add x0, x0, 0x315                     ; 0x348315 ; "No Recoil"
│ 0x000f2510      f9daff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2514      881200d0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f2518      00d14dbd       ldr s0, [x8, 0xdd0]
│ 0x000f251c      0a103e1e       fmov s10, -1.00000000
│ 0x000f2520      411daa4e       mov v1.16b, v10.16b
│ 0x000f2524      2929201e       fadd s9, s9, s0
│ 0x000f2528      201da94e       mov v0.16b, v9.16b
│ 0x000f252c      e6c40094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f2530      a01200d0       adrp x0, 0x348000
│ 0x000f2534      c13e0791       add x1, x22, 0x1cf
│ 0x000f2538      007c0c91       add x0, x0, 0x31f                     ; 0x34831f ; "No Spread"
│ 0x000f253c      eedaff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2540      a01200d0       adrp x0, 0x348000
│ 0x000f2544      c1a60791       add x1, x22, 0x1e9
│ 0x000f2548      00a40c91       add x0, x0, 0x329                     ; 0x348329 ; "No Shake"
│ 0x000f254c      eadaff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2550      201da94e       mov v0.16b, v9.16b
│ 0x000f2554      411daa4e       mov v1.16b, v10.16b
│ 0x000f2558      dbc40094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f255c      a01200d0       adrp x0, 0x348000
│ 0x000f2560      c14e0791       add x1, x22, 0x1d3
│ 0x000f2564      00c80c91       add x0, x0, 0x332                     ; 0x348332 ; "Firerate"
│ 0x000f2568      e3daff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f256c      a01200d0       adrp x0, 0x348000
│ 0x000f2570      c19e0791       add x1, x22, 0x1e7
│ 0x000f2574      00ec0c91       add x0, x0, 0x33b                     ; 0x34833b ; "Fast Reload"
│ 0x000f2578      dfdaff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f257c      201da94e       mov v0.16b, v9.16b
│ 0x000f2580      411daa4e       mov v1.16b, v10.16b
│ 0x000f2584      d0c40094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f2588      a01200d0       adrp x0, 0x348000
│ 0x000f258c      c1aa0791       add x1, x22, 0x1ea
│ 0x000f2590      001c0d91       add x0, x0, 0x347                     ; 0x348347 ; "Fast Scope"
│ 0x000f2594      d8daff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2598      a01200d0       adrp x0, 0x348000
│ 0x000f259c      00480d91       add x0, x0, 0x352                     ; 0x348352 ; "Weapon - Combat"
│ 0x000f25a0      ab020094       bl fcn.000f304c                       ; 0xf304c
│ 0x000f25a4      a01200d0       adrp x0, 0x348000
│ 0x000f25a8      c1c60791       add x1, x22, 0x1f1
│ 0x000f25ac      00880d91       add x0, x0, 0x362                     ; 0x348362 ; "Hitbox"
│ 0x000f25b0      d1daff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f25b4      201da94e       mov v0.16b, v9.16b
│ 0x000f25b8      411daa4e       mov v1.16b, v10.16b
│ 0x000f25bc      c2c40094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f25c0      a01200d0       adrp x0, 0x348000
│ 0x000f25c4      c1860891       add x1, x22, 0x221
│ 0x000f25c8      00a40d91       add x0, x0, 0x369                     ; 0x348369 ; "Weapon Kinetic"
│ 0x000f25cc      cadaff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f25d0      a01200d0       adrp x0, 0x348000
│ 0x000f25d4      c1d20791       add x1, x22, 0x1f4
│ 0x000f25d8      00e00d91       add x0, x0, 0x378                     ; 0x348378 ; "No Overheat"
│ 0x000f25dc      c6daff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f25e0      2dc40094       bl fcn.00123694                       ; 0x123694
│ 0x000f25e4      a01200b0       adrp x0, 0x347000
│ 0x000f25e8      00e03391       add x0, x0, 0xcf8
│ 0x000f25ec      98020094       bl fcn.000f304c                       ; 0xf304c
│ 0x000f25f0      f9c50094       bl fcn.00123dd4                       ; 0x123dd4
│ 0x000f25f4      a01200d0       adrp x0, 0x348000
│ 0x000f25f8      c10e0891       add x1, x22, 0x203
│ 0x000f25fc      00100e91       add x0, x0, 0x384                     ; 0x348384 ; "Wallhack Yellow"
│ 0x000f2600      bddaff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2604      201da94e       mov v0.16b, v9.16b
│ 0x000f2608      411daa4e       mov v1.16b, v10.16b
│ 0x000f260c      aec40094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f2610      a01200d0       adrp x0, 0x348000
│ 0x000f2614      c11e0791       add x1, x22, 0x1c7
│ 0x000f2618      00500e91       add x0, x0, 0x394                     ; 0x348394 ; "Wallhack Red"
│ 0x000f261c      b6daff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2620      1dc40094       bl fcn.00123694                       ; 0x123694
│ 0x000f2624      ecc50094       bl fcn.00123dd4                       ; 0x123dd4
│ 0x000f2628      a01200d0       adrp x0, 0x348000
│ 0x000f262c      00840e91       add x0, x0, 0x3a1                     ; 0x3483a1 ; "Player / Extra"
│ 0x000f2630      87020094       bl fcn.000f304c                       ; 0xf304c
│ 0x000f2634      a01200d0       adrp x0, 0x348000
│ 0x000f2638      c1b20791       add x1, x22, 0x1ec
│ 0x000f263c      00c00e91       add x0, x0, 0x3b0                     ; 0x3483b0 ; "Quick Switch"
│ 0x000f2640      addaff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2644      201da94e       mov v0.16b, v9.16b
│ 0x000f2648      411daa4e       mov v1.16b, v10.16b
│ 0x000f264c      9ec40094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f2650      a01200d0       adrp x0, 0x348000
│ 0x000f2654      c1e20791       add x1, x22, 0x1f8
│ 0x000f2658      00f40e91       add x0, x0, 0x3bd                     ; 0x3483bd ; "No Parachute"
│ 0x000f265c      a6daff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2660      a01200d0       adrp x0, 0x348000
│ 0x000f2664      c1c20791       add x1, x22, 0x1f0
│ 0x000f2668      00280f91       add x0, x0, 0x3ca                     ; 0x3483ca ; "Anti Flashbang"
│ 0x000f266c      a2daff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2670      201da94e       mov v0.16b, v9.16b
│ 0x000f2674      411daa4e       mov v1.16b, v10.16b
│ 0x000f2678      93c40094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f267c      a01200d0       adrp x0, 0x348000
│ 0x000f2680      c1520791       add x1, x22, 0x1d4
│ 0x000f2684      00640f91       add x0, x0, 0x3d9                     ; 0x3483d9 ; "Fast Dive"
│ 0x000f2688      9bdaff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f268c      a01200d0       adrp x0, 0x348000
│ 0x000f2690      c1da0791       add x1, x22, 0x1f6
│ 0x000f2694      008c0f91       add x0, x0, 0x3e3                     ; 0x3483e3 ; "Advance UAV"
│ 0x000f2698      97daff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f269c      201da94e       mov v0.16b, v9.16b
│ 0x000f26a0      411daa4e       mov v1.16b, v10.16b
│ 0x000f26a4      88c40094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f26a8      a01200d0       adrp x0, 0x348000
│ 0x000f26ac      c1020791       add x1, x22, 0x1c0
│ 0x000f26b0      00bc0f91       add x0, x0, 0x3ef                     ; 0x3483ef ; "Fast Revival Time"
│ 0x000f26b4      90daff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f26b8      a01200d0       adrp x0, 0x348000
│ 0x000f26bc      c1060791       add x1, x22, 0x1c1
│ 0x000f26c0      00041091       add x0, x0, 0x401                     ; 0x348401 ; "Fast Medicine Time"
│ 0x000f26c4      8cdaff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f26c8      201da94e       mov v0.16b, v9.16b
│ 0x000f26cc      411daa4e       mov v1.16b, v10.16b
│ 0x000f26d0      7dc40094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f26d4      a01200d0       adrp x0, 0x348000
│ 0x000f26d8      c1960791       add x1, x22, 0x1e5
│ 0x000f26dc      00501091       add x0, x0, 0x414                     ; 0x348414 ; "Skip Tutorial"
│ 0x000f26e0      85daff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f26e4      a01200d0       adrp x0, 0x348000
│ 0x000f26e8      c1760891       add x1, x22, 0x21d
│ 0x000f26ec      00881091       add x0, x0, 0x422                     ; 0x348422 ; "Jet Jump"
│ 0x000f26f0      81daff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f26f4      201da94e       mov v0.16b, v9.16b
│ 0x000f26f8      411daa4e       mov v1.16b, v10.16b
│ 0x000f26fc      72c40094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f2700      b41200d0       adrp x20, 0x348000
│ 0x000f2704      94ae1091       add x20, x20, 0x42b                   ; 0x34842b ; "Speed Hack"
│ 0x000f2708      c1e60691       add x1, x22, 0x1b9
│ 0x000f270c      e00314aa       mov x0, x20                           ; 0x34842b ; "Speed Hack"
│ 0x000f2710      79daff97       bl fcn.000e90f4                       ; 0xe90f4
│ 0x000f2714      e0c30094       bl fcn.00123694                       ; 0x123694
│ 0x000f2718      a01200d0       adrp x0, 0x348000
│ 0x000f271c      00d81091       add x0, x0, 0x436                     ; 0x348436 ; "Movement"
│ 0x000f2720      4b020094       bl fcn.000f304c                       ; 0xf304c
│ 0x000f2724      acc50094       bl fcn.00123dd4                       ; 0x123dd4
│ 0x000f2728      881200d0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f272c      01f94cbd       ldr s1, [x8, 0xcf8]
│ 0x000f2730      b51200d0       adrp x21, 0x348000
│ 0x000f2734      a01200b0       adrp x0, 0x347000
│ 0x000f2738      e11f00b0       adrp x1, 0x4ef000
│ 0x000f273c      b59a0091       add x21, x21, 0x26
│ 0x000f2740      008c3391       add x0, x0, 0xce3                     ; 0x347ce3 ; "Snowb"
│ 0x000f2744      21c03491       add x1, x1, 0xd30
│ 0x000f2748      e003271e       fmov s0, wzr
│ 0x000f274c      e20315aa       mov x2, x21
│ 0x000f2750      22ddff97       bl fcn.000e9bd8                       ; 0xe9bd8
│ 0x000f2754      a01200b0       adrp x0, 0x347000
│ 0x000f2758      e11f0090       adrp x1, section..bss                 ; 0x4ee000
│ 0x000f275c      00a43391       add x0, x0, 0xce9                     ; 0x347ce9 ; "Slide"
│ 0x000f2760      21e02391       add x1, x1, 0x8f8
│ 0x000f2764      01d0271e       fmov s1, 30.00000000
│ 0x000f2768      e003271e       fmov s0, wzr
│ 0x000f276c      e20315aa       mov x2, x21
│ 0x000f2770      1addff97       bl fcn.000e9bd8                       ; 0xe9bd8
│ 0x000f2774      a01200b0       adrp x0, 0x347000
│ 0x000f2778      e11f00b0       adrp x1, 0x4ef000
│ 0x000f277c      a21200d0       adrp x2, 0x348000
│ 0x000f2780      09102c1e       fmov s9, 0.50000000
│ 0x000f2784      0a90241e       fmov s10, 10.00000000
│ 0x000f2788      00bc3391       add x0, x0, 0xcef                     ; 0x347cef ; "Speed"
│ 0x000f278c      21d03491       add x1, x1, 0xd34
│ 0x000f2790      42fc1091       add x2, x2, 0x43f                     ; 0x34843f ; "%.1fx"
│ 0x000f2794      201da94e       mov v0.16b, v9.16b
│ 0x000f2798      411daa4e       mov v1.16b, v10.16b
│ 0x000f279c      0fddff97       bl fcn.000e9bd8                       ; 0xe9bd8
│ 0x000f27a0      a01200d0       adrp x0, 0x348000
│ 0x000f27a4      611f00d0       adrp x1, 0x4e0000
│ 0x000f27a8      a21200d0       adrp x2, 0x348000
│ 0x000f27ac      00981091       add x0, x0, 0x426
│ 0x000f27b0      21201a91       add x1, x1, 0x688
│ 0x000f27b4      42141191       add x2, x2, 0x445                     ; 0x348445 ; "%.2fx"
│ 0x000f27b8      201da94e       mov v0.16b, v9.16b
│ 0x000f27bc      411daa4e       mov v1.16b, v10.16b
│ 0x000f27c0      06ddff97       bl fcn.000e9bd8                       ; 0xe9bd8
│ 0x000f27c4      c1f20691       add x1, x22, 0x1bc
│ 0x000f27c8      0110211e       fmov s1, 3.00000000
│ 0x000f27cc      e00314aa       mov x0, x20                           ; 0x34842b ; "Speed Hack"
│ 0x000f27d0      201da94e       mov v0.16b, v9.16b
│ 0x000f27d4      e20315aa       mov x2, x21
│ 0x000f27d8      00ddff97       bl fcn.000e9bd8                       ; 0xe9bd8
│ 0x000f27dc      aec30094       bl fcn.00123694                       ; 0x123694
│ 0x000f27e0      489f44b9       ldr w8, [x26, 0x49c]
│ 0x000f27e4      1f0d0071       cmp w8, 3
│ 0x000f27e8      40ccff54       b.eq 0xf2170
| // true: 0x000f2170  false: 0x000f27ec
│ ; DATA XREF from fcn.000f1024 @ 0xf216c(r)
│ 0x000f27ec      1f110071       cmp w8, 4
│ 0x000f27f0      c1ccff54       b.ne 0xf2188
| // true: 0x000f2188  false: 0x000f27f4
│ ; CODE XREF from fcn.000f1024 @ 0xf2184(x)
│ 0x000f27f4      8dba0094       bl fcn.00121228                       ; 0x121228
│ 0x000f27f8      977b0094       bl fcn.00111654                       ; 0x111654 ; "h\x1f"
│ 0x000f27fc      f1dfff97       bl fcn.000ea7c0                       ; 0xea7c0
│ 0x000f2800      489f44b9       ldr w8, [x26, 0x49c]
│ 0x000f2804      1f150071       cmp w8, 5
│ 0x000f2808      01160054       b.ne 0xf2ac8
| // true: 0x000f2ac8  false: 0x000f280c
│ ; CODE XREF from fcn.000f1024 @ 0xf218c(x)
│ 0x000f280c      a01200d0       adrp x0, 0x348000
│ 0x000f2810      002c1191       add x0, x0, 0x44b                     ; 0x34844b ; "Window Size"
│ 0x000f2814      0e020094       bl fcn.000f304c                       ; 0xf304c
│ 0x000f2818      00103e1e       fmov s0, -1.00000000
│ 0x000f281c      cac40094       bl fcn.00123b44                       ; 0x123b44
│ 0x000f2820      a01200d0       adrp x0, 0x348000
│ 0x000f2824      e11f00d0       adrp x1, 0x4f0000
│ 0x000f2828      a21200d0       adrp x2, 0x348000
│ 0x000f282c      005c1191       add x0, x0, 0x457                     ; 0x348457 ; "##Scale"
│ 0x000f2830      21b01191       add x1, x1, 0x46c
│ 0x000f2834      42980091       add x2, x2, 0x26
│ 0x000f2838      01102f1e       fmov s1, 1.50000000
│ 0x000f283c      001da84e       mov v0.16b, v8.16b
│ 0x000f2840      e6dcff97       bl fcn.000e9bd8                       ; 0xe9bd8
│ 0x000f2844      0bc50094       bl fcn.00123c70                       ; 0x123c70
│ 0x000f2848      ff680194       bl fcn.0014cc44                       ; 0x14cc44
│ 0x000f284c      77ba0094       bl fcn.00121228                       ; 0x121228
│ 0x000f2850      a01200d0       adrp x0, 0x348000
│ 0x000f2854      0008281e       fmul s0, s0, s8
│ 0x000f2858      007c1191       add x0, x0, 0x45f                     ; 0x34845f ; "SAVE CONFIG"
│ 0x000f285c      e1430291       add x1, sp, 0x90
│ 0x000f2860      e09300bd       str s0, [timeptr]
│ 0x000f2864      ff9700b9       str wzr, [arg_1c0hx94]
│ 0x000f2868      a7650194       bl fcn.0014bf04                       ; 0x14bf04
│ 0x000f286c      40000036       tbz w0, 0, 0xf2874
| // true: 0x000f2874  false: 0x000f2870
│ 0x000f2870      72e5ff97       bl fcn.000ebe38                       ; 0xebe38
| // true: 0x000f2874
│ ; CODE XREF from fcn.000f1024 @ 0xf286c(x)
│ 0x000f2874      01103e1e       fmov s1, -1.00000000
│ 0x000f2878      e003271e       fmov s0, wzr
│ 0x000f287c      12c40094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f2880      6aba0094       bl fcn.00121228                       ; 0x121228
│ 0x000f2884      a01200d0       adrp x0, 0x348000
│ 0x000f2888      00ac1191       add x0, x0, 0x46b                     ; 0x34846b ; "LOAD CONFIG"
│ 0x000f288c      e1430291       add x1, sp, 0x90
│ 0x000f2890      e09300bd       str s0, [timeptr]
│ 0x000f2894      ff9700b9       str wzr, [arg_1c0hx94]
│ 0x000f2898      9b650194       bl fcn.0014bf04                       ; 0x14bf04
│ 0x000f289c      40000036       tbz w0, 0, 0xf28a4
| // true: 0x000f28a4  false: 0x000f28a0
│ 0x000f28a0      68e8ff97       bl fcn.000eca40                       ; 0xeca40
| // true: 0x000f28a4
│ ; CODE XREF from fcn.000f1024 @ 0xf289c(x)
│ 0x000f28a4      d7c00094       bl fcn.00122c00                       ; 0x122c00
│ 0x000f28a8      f41f00b0       adrp x20, 0x4ef000
│ 0x000f28ac      94623f91       add x20, x20, 0xfd8
│ 0x000f28b0      88024039       ldrb w8, [x20]
│ 0x000f28b4      890a40f9       ldr x9, [x20, 0x10]
│ 0x000f28b8      09103e1e       fmov s9, -1.00000000
│ 0x000f28bc      0a1ca04e       mov v10.16b, v0.16b
│ 0x000f28c0      1f010072       tst w8, 1
│ 0x000f28c4      2015949a       csinc x0, x9, x20, ne
│ 0x000f28c8      e1031faa       mov x1, xzr
│ 0x000f28cc      e2031f2a       mov w2, wzr
│ 0x000f28d0      201da94e       mov v0.16b, v9.16b
│ 0x000f28d4      aa7f0094       bl fcn.0011277c                       ; 0x11277c ; "i\x1f"
│ 0x000f28d8      4039201e       fsub s0, s10, s0
│ 0x000f28dc      0008281e       fmul s0, s0, s8
│ 0x000f28e0      59c40094       bl fcn.00123a44                       ; 0x123a44
│ 0x000f28e4      881200f0       adrp x8, 0x345000
│ 0x000f28e8      89024039       ldrb w9, [x20]
│ 0x000f28ec      0029c03d       ldr q0, [x8, 0xa0]
│ 0x000f28f0      880a40f9       ldr x8, [x20, 0x10]
│ 0x000f28f4      e0430291       add x0, sp, 0x90
│ 0x000f28f8      3f010072       tst w9, 1
│ 0x000f28fc      e027803d       str q0, [timeptr]
│ 0x000f2900      0215949a       csinc x2, x8, x20, ne
│ 0x000f2904      d41400f0       adrp x20, case.0x124dd0.0             ; 0x38d000
│ 0x000f2908      945e2791       add x20, x20, 0x9d7
│ 0x000f290c      e10314aa       mov x1, x20
│ 0x000f2910      99620194       bl fcn.0014b374                       ; 0x14b374
│ 0x000f2914      881200f0       adrp x8, 0x345000
│ 0x000f2918      002dc03d       ldr q0, [x8, 0xb0]
│ 0x000f291c      a11200d0       adrp x1, 0x348000
│ 0x000f2920      a21200d0       adrp x2, 0x348000
│ 0x000f2924      21dc1191       add x1, x1, 0x477                     ; 0x348477 ; "%s  License VIP"
│ 0x000f2928      421c1291       add x2, x2, 0x487
│ 0x000f292c      e0430291       add x0, sp, 0x90
│ 0x000f2930      e027803d       str q0, [timeptr]
│ 0x000f2934      90620194       bl fcn.0014b374                       ; 0x14b374
│ 0x000f2938      e003271e       fmov s0, wzr
│ 0x000f293c      211da94e       mov v1.16b, v9.16b
│ 0x000f2940      e1c30094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f2944      e91f0090       adrp x9, section..bss                 ; 0x4ee000
│ 0x000f2948      881200f0       adrp x8, 0x345000
│ 0x000f294c      29812f91       add x9, x9, 0xbe0
│ 0x000f2950      0031c03d       ldr q0, [x8, 0xc0]
│ 0x000f2954      28014039       ldrb w8, [x9]
│ 0x000f2958      2a0940f9       ldr x10, [x9, 0x10]
│ 0x000f295c      a11200d0       adrp x1, 0x348000
│ 0x000f2960      212c1291       add x1, x1, 0x48b                     ; 0x34848b ; "= %s"
│ 0x000f2964      1f010072       tst w8, 1
│ 0x000f2968      4215899a       csinc x2, x10, x9, ne
│ 0x000f296c      e0430291       add x0, sp, 0x90
│ 0x000f2970      e027803d       str q0, [timeptr]
│ 0x000f2974      80620194       bl fcn.0014b374                       ; 0x14b374
│ 0x000f2978      a01200d0       adrp x0, 0x348000
│ 0x000f297c      a11200d0       adrp x1, 0x348000
│ 0x000f2980      00401291       add x0, x0, 0x490                     ; 0x348490 ; "%s  Expired License :"
│ 0x000f2984      21981291       add x1, x1, 0x4a6
│ 0x000f2988      19620194       bl fcn.0014b1ec                       ; 0x14b1ec
│ 0x000f298c      e003271e       fmov s0, wzr
│ 0x000f2990      211da94e       mov v1.16b, v9.16b
│ 0x000f2994      ccc30094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f2998      e91f0090       adrp x9, section..bss                 ; 0x4ee000
│ 0x000f299c      881200d0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f29a0      29a13291       add x9, x9, 0xca8
│ 0x000f29a4      00a5c33d       ldr q0, [x8, 0xe90]
│ 0x000f29a8      28014039       ldrb w8, [x9]
│ 0x000f29ac      2a0940f9       ldr x10, [x9, 0x10]
│ 0x000f29b0      e0430291       add x0, sp, 0x90
│ 0x000f29b4      e10314aa       mov x1, x20
│ 0x000f29b8      1f010072       tst w8, 1
│ 0x000f29bc      4215899a       csinc x2, x10, x9, ne
│ 0x000f29c0      e027803d       str q0, [timeptr]
│ 0x000f29c4      6c620194       bl fcn.0014b374                       ; 0x14b374
│ 0x000f29c8      881200f0       adrp x8, 0x345000
│ 0x000f29cc      0035c03d       ldr q0, [x8, 0xd0]
│ 0x000f29d0      e81f00d0       adrp x8, 0x4f0000
│ 0x000f29d4      08a12691       add x8, x8, 0x9a8
│ 0x000f29d8      e027803d       str q0, [timeptr]
│ 0x000f29dc      08fddf08       ldarb w8, [x8]
│ 0x000f29e0      88260036       tbz w8, 0, 0xf2eb0
| // true: 0x000f2eb0  false: 0x000f29e4
│ ; DATA XREFS from fcn.000f1024 @ 0xf2ebc(x), 0xf2f08(r)
│ 0x000f29e4      e81f00d0       adrp x8, 0x4f0000
│ 0x000f29e8      08612691       add x8, x8, 0x998
│ 0x000f29ec      09314039       ldrb w9, [x8, 0xc]
│ 0x000f29f0      c9020034       cbz w9, 0xf2a48
| // true: 0x000f2a48  false: 0x000f29f4
│ 0x000f29f4      0a214039       ldrb w10, [x8, 8]
│ 0x000f29f8      891200d0       adrp x9, case.0x1328c8.23             ; 0x344000
│ 0x000f29fc      0c254039       ldrb w12, [x8, 9]
│ 0x000f2a00      205143fd       ldr d0, [x9, 0x6a0]
│ 0x000f2a04      09294039       ldrb w9, [x8, 0xa]
│ 0x000f2a08      eb168052       mov w11, 0xb7
│ 0x000f2a0c      4a010b4a       eor w10, w10, w11
│ 0x000f2a10      6b048052       mov w11, 0x23                         ; '#'
│ 0x000f2a14      8b010b4a       eor w11, w12, w11
│ 0x000f2a18      ac1d8052       mov w12, 0xed
│ 0x000f2a1c      29010c4a       eor w9, w9, w12
│ 0x000f2a20      0c2d4039       ldrb w12, [x8, 0xb]
│ 0x000f2a24      010140fd       ldr d1, [x8]
│ 0x000f2a28      0a210039       strb w10, [x8, 8]
│ 0x000f2a2c      0b250039       strb w11, [x8, 9]
│ 0x000f2a30      8a791952       eor w10, w12, 0xffffffbf
│ 0x000f2a34      201c202e       eor v0.8b, v1.8b, v0.8b
│ 0x000f2a38      09290039       strb w9, [x8, 0xa]
│ 0x000f2a3c      0a2d0039       strb w10, [x8, 0xb]
│ 0x000f2a40      000100fd       str d0, [x8]
│ 0x000f2a44      1f310039       strb wzr, [x8, 0xc]
| // true: 0x000f2a48
│ ; DATA XREF from fcn.000f1024 @ 0xf29f0(r)
│ 0x000f2a48      e11f00d0       adrp x1, 0x4f0000
│ 0x000f2a4c      21602691       add x1, x1, 0x998
│ 0x000f2a50      e0430291       add x0, sp, 0x90
│ 0x000f2a54      48620194       bl fcn.0014b374                       ; 0x14b374
│ 0x000f2a58      08103e1e       fmov s8, -1.00000000
│ 0x000f2a5c      e003271e       fmov s0, wzr
│ 0x000f2a60      011da84e       mov v1.16b, v8.16b
│ 0x000f2a64      98c30094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f2a68      881200d0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f2a6c      00a9c33d       ldr q0, [x8, 0xea0]
│ 0x000f2a70      a11200b0       adrp x1, 0x347000
│ 0x000f2a74      21c43d91       add x1, x1, 0xf71
│ 0x000f2a78      e0430291       add x0, sp, 0x90
│ 0x000f2a7c      e027803d       str q0, [timeptr]
│ 0x000f2a80      3d620194       bl fcn.0014b374                       ; 0x14b374
│ 0x000f2a84      e003271e       fmov s0, wzr
│ 0x000f2a88      011da84e       mov v1.16b, v8.16b
│ 0x000f2a8c      8ec30094       bl fcn.001238c4                       ; 0x1238c4
│ 0x000f2a90      881200f0       adrp x8, 0x345000
│ 0x000f2a94      0039c03d       ldr q0, [x8, 0xe0]
│ 0x000f2a98      e81f00d0       adrp x8, 0x4f0000
│ 0x000f2a9c      08212791       add x8, x8, 0x9c8
│ 0x000f2aa0      e027803d       str q0, [timeptr]
│ 0x000f2aa4      08fddf08       ldarb w8, [x8]
│ 0x000f2aa8      28230036       tbz w8, 0, 0xf2f0c
| // true: 0x000f2f0c  false: 0x000f2aac
│ ; DATA XREFS from fcn.000f1024 @ 0xf2f18(x), 0xf2f78(r)
│ 0x000f2aac      f41f00d0       adrp x20, 0x4f0000
│ 0x000f2ab0      94c22691       add x20, x20, 0x9b0
│ 0x000f2ab4      e00314aa       mov x0, x20
│ 0x000f2ab8      3d710094       bl fcn.0010efac                       ; 0x10efac
│ 0x000f2abc      e0430291       add x0, sp, 0x90
│ 0x000f2ac0      e10314aa       mov x1, x20
│ 0x000f2ac4      2c620194       bl fcn.0014b374                       ; 0x14b374
| // true: 0x000f2ac8
│ ; DATA XREFS from fcn.000f1024 @ 0xf17c4(r), 0xf1824(r), 0xf2190(r), 0xf2808(r)
│ 0x000f2ac8      1aba0094       bl fcn.00121330                       ; 0x121330
│ 0x000f2acc      5d000014       b 0xf2c40
| // true: 0x000f2c40
│ ; CODE XREF from fcn.000f1024 @ 0xf170c(x)
│ 0x000f2ad0      e81f00d0       adrp x8, 0x4f0000
│ 0x000f2ad4      08c11191       add x8, x8, 0x470
│ 0x000f2ad8      090940f9       ldr x9, [x8, 0x10]
│ 0x000f2adc      3f010039       strb wzr, [x9]
│ 0x000f2ae0      1f0500f9       str xzr, [x8, 8]
| // true: 0x000f2ae4
│ ; DATA XREF from fcn.000f1024 @ 0xf1714(r)
│ 0x000f2ae4      f61f00d0       adrp x22, 0x4f0000
│ 0x000f2ae8      d6c21191       add x22, x22, 0x470
│ 0x000f2aec      e00316aa       mov x0, x22
│ 0x000f2af0      e1031faa       mov x1, xzr
│ 0x000f2af4      6882ff97       bl fcn.000d3494                       ; 0xd3494
│ 0x000f2af8      e027c03d       ldr q0, [timeptr]
│ 0x000f2afc      ea5340f9       ldr x10, [arg_1c0hxa0]
│ 0x000f2b00      c002803d       str q0, [x22]
│ 0x000f2b04      c8024039       ldrb w8, [x22]
│ 0x000f2b08      c90640f9       ldr x9, [x22, 8]
│ 0x000f2b0c      ca0a00f9       str x10, [x22, 0x10]
│ 0x000f2b10      0b7d0153       lsr w11, w8, 1
│ 0x000f2b14      1f010072       tst w8, 1
│ 0x000f2b18      6901899a       csel x9, x11, x9, eq
│ 0x000f2b1c      3f0900f1       cmp x9, 2
│ 0x000f2b20      01010054       b.ne 0xf2b40
| // true: 0x000f2b40  false: 0x000f2b24
│ 0x000f2b24      c90a40f9       ldr x9, [x22, 0x10]
│ 0x000f2b28      1f010072       tst w8, 1
│ 0x000f2b2c      2815969a       csinc x8, x9, x22, ne
│ 0x000f2b30      08014079       ldrh w8, [x8]
│ 0x000f2b34      e9698952       mov w9, 0x4b4f                        ; 'OK'
│ 0x000f2b38      1f01096b       cmp w8, w9
│ 0x000f2b3c      00130054       b.eq 0xf2d9c
| // true: 0x000f2d9c  false: 0x000f2b40
│ ; DATA XREFS from fcn.000f1024 @ 0xf16c8(x), 0xf16f0(r), 0xf2b20(r), 0xf2e68(r)
│ 0x000f2b40      f51f00d0       adrp x21, 0x4f0000
│ 0x000f2b44      b5c21191       add x21, x21, 0x470
│ 0x000f2b48      a8024039       ldrb w8, [x21]
│ 0x000f2b4c      a90640f9       ldr x9, [x21, 8]
│ 0x000f2b50      0a7d0153       lsr w10, w8, 1
│ 0x000f2b54      1f010072       tst w8, 1
│ 0x000f2b58      4901899a       csel x9, x10, x9, eq
│ 0x000f2b5c      290300b4       cbz x9, 0xf2bc0
| // true: 0x000f2bc0  false: 0x000f2b60
│ 0x000f2b60      3f0900f1       cmp x9, 2
│ 0x000f2b64      01010054       b.ne 0xf2b84
| // true: 0x000f2b84  false: 0x000f2b68
│ 0x000f2b68      a90a40f9       ldr x9, [x21, 0x10]
│ 0x000f2b6c      1f010072       tst w8, 1
│ 0x000f2b70      2815959a       csinc x8, x9, x21, ne
│ 0x000f2b74      08014079       ldrh w8, [x8]
│ 0x000f2b78      e9698952       mov w9, 0x4b4f                        ; 'OK'
│ 0x000f2b7c      1f01096b       cmp w8, w9
│ 0x000f2b80      00020054       b.eq 0xf2bc0
| // true: 0x000f2bc0  false: 0x000f2b84
│ ; DATA XREF from fcn.000f1024 @ 0xf2b64(r)
│ 0x000f2b84      30680194       bl fcn.0014cc44                       ; 0x14cc44
│ 0x000f2b88      e1830191       add x1, sp, 0x60
│ 0x000f2b8c      e0031f2a       mov w0, wzr
│ 0x000f2b90      747b0094       bl fcn.00111960                       ; 0x111960
│ 0x000f2b94      f8680194       bl fcn.0014cf74                       ; 0x14cf74
│ 0x000f2b98      a8024039       ldrb w8, [x21]
│ 0x000f2b9c      a90a40f9       ldr x9, [x21, 0x10]
│ 0x000f2ba0      a01200d0       adrp x0, 0x348000
│ 0x000f2ba4      00400091       add x0, x0, 0x10                      ; 0x348010 ; " \uf071  SERVER: %s"
│ 0x000f2ba8      1f010072       tst w8, 1
│ 0x000f2bac      2115959a       csinc x1, x9, x21, ne
│ 0x000f2bb0      8f610194       bl fcn.0014b1ec                       ; 0x14b1ec
│ 0x000f2bb4      f0680194       bl fcn.0014cf74                       ; 0x14cf74
│ 0x000f2bb8      e0030032       mov w0, 1
│ 0x000f2bbc      c57b0094       bl fcn.00111ad0                       ; 0x111ad0
| // true: 0x000f2bc0
│ ; CODE XREFS from fcn.000f1024 @ 0xf14c4(r), 0xf2b5c(r), 0xf2b80(x)
│ 0x000f2bc0      84860094       bl fcn.001145d0                       ; 0x1145d0 ; "H\x1f"
│ 0x000f2bc4      809643bd       ldr s0, [x20, 0x394]
│ 0x000f2bc8      a21200d0       adrp x2, 0x348000
│ 0x000f2bcc      f50300aa       mov x21, x0                           ; 0x347f30 ; "LOGIN CODM 1.6"
│ 0x000f2bd0      42840091       add x2, x2, 0x21                      ; 0x348021 ; "FPS: %.1f" ; const char *format
│ 0x000f2bd4      00c0221e       fcvt d0, s0
│ 0x000f2bd8      e0430291       add x0, sp, 0x90                      ; char *s
│ 0x000f2bdc      e1031b32       mov w1, 0x20
│ 0x000f2be0      c465ff97       bl sym.imp.snprintf                   ; int snprintf(char *s, size_t size, const char *format, ...)
│ 0x000f2be4      00103e1e       fmov s0, -1.00000000
│ 0x000f2be8      e0430291       add x0, sp, 0x90
│ 0x000f2bec      e1031faa       mov x1, xzr
│ 0x000f2bf0      e2031f2a       mov w2, wzr
│ 0x000f2bf4      e27e0094       bl fcn.0011277c                       ; 0x11277c ; "i\x1f"
│ 0x000f2bf8      800e40bd       ldr s0, [x20, 0xc]
│ 0x000f2bfc      0290341e       fmov s2, -10.00000000
│ 0x000f2c00      0824a852       mov w8, 0x41200000
│ 0x000f2c04      e1c30091       add x1, sp, 0x30
│ 0x000f2c08      0038211e       fsub s0, s0, s1
│ 0x000f2c0c      0028221e       fadd s0, s0, s2
│ 0x000f2c10      22288812       mov w2, -0x4142
│ 0x000f2c14      e3430291       add x3, sp, 0x90
│ 0x000f2c18      e00315aa       mov x0, x21                           ; 0x347f30 ; "LOGIN CODM 1.6"
│ 0x000f2c1c      e4031faa       mov x4, xzr
│ 0x000f2c20      e83300b9       str w8, [arg_1c0hx30]
│ 0x000f2c24      e03700bd       str s0, [arg_1c0hx34]
│ 0x000f2c28      50df0094       bl fcn.0012a968                       ; 0x12a968
│ 0x000f2c2c      5fb50094       bl fcn.001201a8                       ; 0x1201a8
│ 0x000f2c30      e0031d32       mov w0, 8
│ 0x000f2c34      a77b0094       bl fcn.00111ad0                       ; 0x111ad0
│ 0x000f2c38      e0031e32       mov w0, 4
│ 0x000f2c3c      6f7c0094       bl fcn.00111df8                       ; 0x111df8
| // true: 0x000f2c40
│ ; DATA XREF from fcn.000f1024 @ 0xf2acc(r)
│ 0x000f2c40      bcb90094       bl fcn.00121330                       ; 0x121330
| // true: 0x000f2c44
│ ; DATA XREF from fcn.000f1024 @ 0xf12c8(r)
│ 0x000f2c44      741c00b0       adrp x20, section..data               ; 0x47f000
│ 0x000f2c48      94e20391       add x20, x20, 0xf8
│ 0x000f2c4c      880e4839       ldrb w8, [x20, 0x203]
│ 0x000f2c50      88000034       cbz w8, 0xf2c60
| // true: 0x000f2c60  false: 0x000f2c54
│ 0x000f2c54      e01f00b0       adrp x0, 0x4ef000
│ 0x000f2c58      00c03791       add x0, x0, 0xdf0
│ 0x000f2c5c      2f680794       bl fcn.002ccd18                       ; 0x2ccd18
| // true: 0x000f2c60
│ ; DATA XREF from fcn.000f1024 @ 0xf2c50(r)
│ 0x000f2c60      887e4839       ldrb w8, [x20, 0x21f]
│ 0x000f2c64      a8000034       cbz w8, 0xf2c78
| // true: 0x000f2c78  false: 0x000f2c68
│ 0x000f2c68      e81f00b0       adrp x8, 0x4ef000
│ 0x000f2c6c      08c13791       add x8, x8, 0xdf0
│ 0x000f2c70      00c10291       add x0, x8, 0xb0
│ 0x000f2c74      29680794       bl fcn.002ccd18                       ; 0x2ccd18
| // true: 0x000f2c78
│ ; DATA XREF from fcn.000f1024 @ 0xf2c64(r)
│ 0x000f2c78      88024739       ldrb w8, [x20, 0x1c0]
│ 0x000f2c7c      a8000034       cbz w8, 0xf2c90
| // true: 0x000f2c90  false: 0x000f2c80
│ 0x000f2c80      e81f00b0       adrp x8, 0x4ef000
│ 0x000f2c84      08c13791       add x8, x8, 0xdf0
│ 0x000f2c88      00210491       add x0, x8, 0x108
│ 0x000f2c8c      23680794       bl fcn.002ccd18                       ; 0x2ccd18
| // true: 0x000f2c90
│ ; DATA XREF from fcn.000f1024 @ 0xf2c7c(r)
│ 0x000f2c90      88e24039       ldrb w8, [x20, 0x38]
│ 0x000f2c94      48000034       cbz w8, 0xf2c9c
| // true: 0x000f2c9c  false: 0x000f2c98
│ 0x000f2c98      5aa6ff97       bl fcn.000dc600                       ; 0xdc600
| // true: 0x000f2c9c
│ ; DATA XREF from fcn.000f1024 @ 0xf2c94(r)
│ 0x000f2c9c      f51f0090       adrp x21, section..bss                ; 0x4ee000
│ 0x000f2ca0      681c00b0       adrp x8, section..data                ; 0x47f000
│ 0x000f2ca4      a95a41f9       ldr x9, [x21, 0x2b0]
│ 0x000f2ca8      080d40f9       ldr x8, [x8, 0x18]
│ 0x000f2cac      0801098b       add x8, x8, x9
│ 0x000f2cb0      00013fd6       blr x8
│ 0x000f2cb4      1f040071       cmp w0, 1
│ 0x000f2cb8      2b050054       b.lt 0xf2d5c
| // true: 0x000f2d5c  false: 0x000f2cbc
│ 0x000f2cbc      681c00b0       adrp x8, section..data                ; 0x47f000
│ 0x000f2cc0      b65a41f9       ldr x22, [x21, 0x2b0]
│ 0x000f2cc4      081140f9       ldr x8, [x8, 0x20]
│ 0x000f2cc8      691c00b0       adrp x9, section..data                ; 0x47f000
│ 0x000f2ccc      802640f9       ldr x0, [x20, 0x48]
│ 0x000f2cd0      371540f9       ldr x23, [x9, 0x28]
│ 0x000f2cd4      0901168b       add x9, x8, x22
│ 0x000f2cd8      e8430291       add x8, sp, 0x90
│ 0x000f2cdc      e1031f2a       mov w1, wzr
│ 0x000f2ce0      20013fd6       blr x9
│ 0x000f2ce4      e8b740b9       ldr w8, [arg_1c0hxb4]
│ 0x000f2ce8      1f110071       cmp w8, 4
│ 0x000f2cec      88030054       b.hi 0xf2d5c
| // true: 0x000f2d5c  false: 0x000f2cf0
│ ;-- switch:
│ 0x000f2cf0      891200f0       adrp x9, 0x345000                     ; switch table (3 cases) at 0x47f000
│ 0x000f2cf4      29113291       add x9, x9, 0xc84                     ; 0x345c84
│                                                                      ; case.0xf2cf0.1
│ 0x000f2cf8      2879a8b8       ldrsw x8, [x9, x8, lsl 2]
│ 0x000f2cfc      f602168b       add x22, x23, x22
│ 0x000f2d00      0801098b       add x8, x8, x9
│ 0x000f2d04      00011fd6       br x8
│ 0x000f2d08      e8030032       mov w8, 1
│ 0x000f2d0c      68a20439       strb w8, [x19, 0x128]
│ 0x000f2d10      802640f9       ldr x0, [x20, 0x48]
│ 0x000f2d14      c0023fd6       blr x22
│ 0x000f2d18      691c00b0       adrp x9, section..data                ; 0x47f000
│ 0x000f2d1c      a85a41f9       ldr x8, [x21, 0x2b0]
│ 0x000f2d20      291d40f9       ldr x9, [x9, 0x38]
│ 0x000f2d24      081ca04e       mov v8.16b, v0.16b
│ 0x000f2d28      2801088b       add x8, x9, x8
│ 0x000f2d2c      00013fd6       blr x8
│ 0x000f2d30      882640f9       ldr x8, [x20, 0x48]
│ 0x000f2d34      0900221e       scvtf s9, w0
│ 0x000f2d38      e00308aa       mov x0, x8
│ 0x000f2d3c      c0023fd6       blr x22
│ 0x000f2d40      2039211e       fsub s0, s9, s1
│ 0x000f2d44      682201bd       str s8, [x19, 0x120]
│ 0x000f2d48      602601bd       str s0, [x19, 0x124]
│ 0x000f2d4c      04000014       b 0xf2d5c
| // true: 0x000f2d5c
│ ; DATA XREFS from fcn.000f1024 @ 0xf2cb8(x), 0xf2cec(r), 0xf2d4c(r)
│ 0x000f2d5c      13b50094       bl fcn.001201a8                       ; 0x1201a8
│ 0x000f2d60      281740f9       ldr x8, [x25, 0x28]
│ ; DATA XREFS from fcn.000f31f4 @ 0xf3800(r), 0xf3804(r)
│ 0x000f2d64      a90357f8       ldur x9, [x29, -0x90]
│ 0x000f2d68      1f0109eb       cmp x8, x9
│ 0x000f2d6c      81100054       b.ne 0xf2f7c
| // true: 0x000f2f7c  false: 0x000f2d70
│ 0x000f2d70      fd7b5ba9       ldp x29, x30, [var_1b0h]
│ 0x000f2d74      f44f5aa9       ldp x20, x19, [var_1a0h]
│ 0x000f2d78      f65759a9       ldp x22, x21, [var_190h]              ; [0x4ee000:4]=0
│                                                                      ; section..bss
│                                                                      [22] -rw- section size 86480 named .bss
│ 0x000f2d7c      f85f58a9       ldp x24, x23, [var_180h]
│ 0x000f2d80      fa6757a9       ldp x26, x25, [var_170h]
│ 0x000f2d84      fc6f56a9       ldp x28, x27, [var_160h]              ; [0x4ee000:4]=0
│                                                                      ; section..bss
│                                                                      [22] -rw- section size 86480 named .bss
│ 0x000f2d88      e923556d       ldp d9, d8, [var_150h]
│ 0x000f2d8c      eb2b546d       ldp d11, d10, [var_140h]
│ 0x000f2d90      ed33536d       ldp d13, d12, [var_130h]
│ 0x000f2d94      ff030791       add sp, sp, 0x1c0
│ 0x000f2d98      c0035fd6       ret

│ ; CODE XREF from fcn.000f1024 @ 0xf2b3c(x)
│ 0x000f2d9c      796fff97       bl rsym._ZNSt6__ndk16chrono12system_clock3nowEv ; 0xceb80 ; "p\x1d"
│ 0x000f2da0      1f0015eb       cmp x0, x21
│ 0x000f2da4      4a4aff54       b.ge 0xf16ec
| // true: 0x000f16ec  false: 0x000f2da8
│ 0x000f2da8      e81f0090       adrp x8, section..bss                 ; 0x4ee000
│ 0x000f2dac      08a17039       ldrb w8, [x8, 0xc28]
│ 0x000f2db0      e849ff34       cbz w8, 0xf16ec
| // true: 0x000f16ec  false: 0x000f2db4
│ 0x000f2db4      e81f0090       adrp x8, section..bss                 ; 0x4ee000
│ 0x000f2db8      08413091       add x8, x8, 0xc10
│ 0x000f2dbc      eb1f0090       adrp x11, section..bss                ; 0x4ee000
│ 0x000f2dc0      6be12f91       add x11, x11, 0xbf8
│ 0x000f2dc4      0a014039       ldrb w10, [x8]
│ 0x000f2dc8      0d0540f9       ldr x13, [x8, 8]
│ 0x000f2dcc      6c014039       ldrb w12, [x11]
│ 0x000f2dd0      6e0540f9       ldr x14, [x11, 8]
│ 0x000f2dd4      497d0153       lsr w9, w10, 1
│ 0x000f2dd8      5f010072       tst w10, 1
│ 0x000f2ddc      8f7d0153       lsr w15, w12, 1
│ 0x000f2de0      22018d9a       csel x2, x9, x13, eq
│ 0x000f2de4      9f010072       tst w12, 1
│ 0x000f2de8      ed018e9a       csel x13, x15, x14, eq
│ 0x000f2dec      5f000deb       cmp x2, x13
│ 0x000f2df0      e147ff54       b.ne 0xf16ec
| // true: 0x000f16ec  false: 0x000f2df4
│ 0x000f2df4      0d0940f9       ldr x13, [x8, 0x10]
│ 0x000f2df8      6e0940f9       ldr x14, [x11, 0x10]
│ 0x000f2dfc      5f010072       tst w10, 1
│ 0x000f2e00      a015889a       csinc x0, x13, x8, ne
│ 0x000f2e04      9f010072       tst w12, 1
│ 0x000f2e08      c1158b9a       csinc x1, x14, x11, ne
│ 0x000f2e0c      aa010037       tbnz w10, 0, 0xf2e40
| // true: 0x000f2e40  false: 0x000f2e10
│ 0x000f2e10      e20100b4       cbz x2, 0xf2e4c
| // true: 0x000f2e4c  false: 0x000f2e14
│ 0x000f2e14      e90309cb       neg x9, x9
│ 0x000f2e18      08050091       add x8, x8, 1
| // true: 0x000f2e1c
│ ; DATA XREF from fcn.000f1024 @ 0xf2e38(r)
│ 0x000f2e1c      0a014039       ldrb w10, [x8]
│ 0x000f2e20      2b004039       ldrb w11, [x1]
│ 0x000f2e24      5f010b6b       cmp w10, w11
│ 0x000f2e28      2146ff54       b.ne 0xf16ec
| // true: 0x000f16ec  false: 0x000f2e2c
│ 0x000f2e2c      08050091       add x8, x8, 1
│ 0x000f2e30      290500b1       adds x9, x9, 1
│ 0x000f2e34      21040091       add x1, x1, 1
│ 0x000f2e38      21ffff54       b.ne 0xf2e1c
| // true: 0x000f2e1c  false: 0x000f2e3c
│ 0x000f2e3c      04000014       b 0xf2e4c
| // true: 0x000f2e4c
│ ; CODE XREF from fcn.000f1024 @ 0xf2e0c(x)
│ 0x000f2e40      620000b4       cbz x2, 0xf2e4c
| // true: 0x000f2e4c  false: 0x000f2e44
│ 0x000f2e44      3748ff97       bl sym.imp.memcmp                     ; int memcmp(const void *s1, const void *s2, size_t n)
│ 0x000f2e48      2045ff35       cbnz w0, 0xf16ec
| // true: 0x000f16ec  false: 0x000f2e4c
│ ; DATA XREFS from fcn.000f1024 @ 0xf2e10(r), 0xf2e3c(r), 0xf2e40(r)
│ 0x000f2e4c      e01f00d0       adrp x0, 0x4f0000
│ 0x000f2e50      e8030032       mov w8, 1
│ 0x000f2e54      e91f00d0       adrp x9, 0x4f0000
│ 0x000f2e58      00800091       add x0, x0, 0x20
│ 0x000f2e5c      e8421239       strb w8, [x23, 0x490]
│ 0x000f2e60      28511239       strb w8, [x9, 0x494]
│ 0x000f2e64      9de2ff97       bl fcn.000eb8d8                       ; 0xeb8d8
│ 0x000f2e68      36ffff17       b 0xf2b40
| // true: 0x000f2b40
│ ; DATA XREF from fcn.000f1024 @ 0xf10c8(r)
│ 0x000f2e6c      e01f00d0       adrp x0, 0x4f0000
│ 0x000f2e70      00201291       add x0, x0, 0x488
│ 0x000f2e74      2762ff97       bl rsym.__cxa_guard_acquire           ; 0xcb710
│ 0x000f2e78      a012ff34       cbz w0, 0xf10cc
| // true: 0x000f10cc  false: 0x000f2e7c
│ 0x000f2e7c      e11f00d0       adrp x1, 0x4f0000
│ 0x000f2e80      00ffffd0       adrp x0, 0xd4000
│ 0x000f2e84      621c00b0       adrp x2, section..data                ; 0x47f000
│ 0x000f2e88      21c01191       add x1, x1, 0x470
│ 0x000f2e8c      00503691       add x0, x0, 0xd94
│ 0x000f2e90      42000091       add x2, x2, 0                         ; 0x47f000
│                                                                      ; section..data
│                                                                      [21] -rw- section size 453504 named .data
│ 0x000f2e94      3f7c00a9       stp xzr, xzr, [x1]
│ 0x000f2e98      3f0800f9       str xzr, [x1, 0x10]
│ 0x000f2e9c      6547ff97       bl sym.imp.__cxa_atexit
│ 0x000f2ea0      e01f00d0       adrp x0, 0x4f0000
│ 0x000f2ea4      00201291       add x0, x0, 0x488
│ ; XREFS: DATA 0x00112d54  DATA 0x0011f9c4  
│ ; XREFS: DATA 0x0012b628  DATA 0x001460f0  
│ ; XREFS: DATA 0x00147754  DATA 0x00147b40  
│ ; XREFS: DATA 0x00149a50  DATA 0x0014aee8  
│ ; XREFS: DATA 0x0014aef4  DATA 0x0014aef8  
│ ; XREFS: DATA 0x0014aefc  DATA 0x0014b1d4  
│ ; XREFS: DATA 0x0014c948  
│ 0x000f2ea8      ee4eff97       bl rsym.__cxa_guard_release           ; 0xc6a60
│ 0x000f2eac      88f8ff17       b 0xf10cc
| // true: 0x000f10cc
│ ; DATA XREF from fcn.000f1024 @ 0xf29e0(r)
│ 0x000f2eb0      e01f00d0       adrp x0, 0x4f0000
│ 0x000f2eb4      00a02691       add x0, x0, 0x9a8
│ 0x000f2eb8      1662ff97       bl rsym.__cxa_guard_acquire           ; 0xcb710
│ 0x000f2ebc      40d9ff34       cbz w0, 0xf29e4
| // true: 0x000f29e4  false: 0x000f2ec0
│ 0x000f2ec0      881200d0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f2ec4      004d43fd       ldr d0, [x8, 0x698]
│ 0x000f2ec8      e11f00d0       adrp x1, 0x4f0000
│ 0x000f2ecc      493e8e52       mov w9, 0x71f2
│ 0x000f2ed0      600000b0       adrp x0, 0xff000
│ 0x000f2ed4      621c00b0       adrp x2, section..data                ; 0x47f000
│ 0x000f2ed8      21602691       add x1, x1, 0x998
│ 0x000f2edc      e8030032       mov w8, 1
│ 0x000f2ee0      e9fab772       movk w9, 0xbfd7, lsl 16
│ 0x000f2ee4      00102291       add x0, x0, 0x884
│ 0x000f2ee8      42000091       add x2, x2, 0                         ; 0x47f000
│                                                                      ; section..data
│                                                                      [21] -rw- section size 453504 named .data
│ 0x000f2eec      28300039       strb w8, [x1, 0xc]
│ 0x000f2ef0      200000fd       str d0, [x1]
│ 0x000f2ef4      290800b9       str w9, [x1, 8]
│ 0x000f2ef8      4e47ff97       bl sym.imp.__cxa_atexit
│ 0x000f2efc      e01f00d0       adrp x0, 0x4f0000
│ 0x000f2f00      00a02691       add x0, x0, 0x9a8
│ 0x000f2f04      d74eff97       bl rsym.__cxa_guard_release           ; 0xc6a60
│ 0x000f2f08      b7feff17       b 0xf29e4
| // true: 0x000f29e4
│ ; DATA XREF from fcn.000f1024 @ 0xf2aa8(r)
│ 0x000f2f0c      e01f00d0       adrp x0, 0x4f0000
│ 0x000f2f10      00202791       add x0, x0, 0x9c8
│ 0x000f2f14      ff61ff97       bl rsym.__cxa_guard_acquire           ; 0xcb710
│ 0x000f2f18      a0dcff34       cbz w0, 0xf2aac
| // true: 0x000f2aac  false: 0x000f2f1c
│ 0x000f2f1c      881200d0       adrp x8, case.0x1328c8.23             ; 0x344000
│ 0x000f2f20      899982d2       mov x9, 0x14cc
│ 0x000f2f24      005543fd       ldr d0, [x8, 0x6a8]
│ 0x000f2f28      0995b2f2       movk x9, 0x94a8, lsl 16
│ 0x000f2f2c      e11f00d0       adrp x1, 0x4f0000
│ 0x000f2f30      4960c9f2       movk x9, 0x4b02, lsl 32
│ 0x000f2f34      4a988252       mov w10, 0x14c2
│ 0x000f2f38      600000b0       adrp x0, 0xff000
│ 0x000f2f3c      621c00b0       adrp x2, section..data                ; 0x47f000
│ 0x000f2f40      21c02691       add x1, x1, 0x9b0
│ 0x000f2f44      a916fdf2       movk x9, 0xe8b5, lsl 48
│ 0x000f2f48      8ab7b272       movk w10, 0x95bc, lsl 16
│ 0x000f2f4c      a82d8052       mov w8, 0x16d
│ 0x000f2f50      00402291       add x0, x0, 0x890
│ 0x000f2f54      42000091       add x2, x2, 0                         ; 0x47f000
│                                                                      ; section..data
│                                                                      [21] -rw- section size 453504 named .data
│ 0x000f2f58      290400f9       str x9, [x1, 8]
│ 0x000f2f5c      2a1000b9       str w10, [x1, 0x10]
│ 0x000f2f60      200000fd       str d0, [x1]
│ 0x000f2f64      28280079       strh w8, [x1, 0x14]
│ 0x000f2f68      3247ff97       bl sym.imp.__cxa_atexit
│ 0x000f2f6c      e01f00d0       adrp x0, 0x4f0000
│ 0x000f2f70      00202791       add x0, x0, 0x9c8
│ 0x000f2f74      bb4eff97       bl rsym.__cxa_guard_release           ; 0xc6a60
│ 0x000f2f78      cdfeff17       b 0xf2aac
| // true: 0x000f2aac
│ ; CODE XREF from fcn.000f1024 @ 0xf2d6c(x)
│ 0x000f2f7c      e94bff97       bl sym.imp.__stack_chk_fail           ; void stack_chk_fail(void)

│ ;-- case 1:                                                          ; from 0x000f2cf0
│ ; DATA XREFS from fcn.000f1024 @ 0xf2cf0(x), 0xf2cf4(r)
└ 0x00345c84      84d0daff       invalid

