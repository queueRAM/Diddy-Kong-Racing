.late_rodata
glabel D_800E6200
.double 1.2
glabel D_800E6208
.float -10000.0
glabel D_800E620C
.float 0.6
glabel D_800E6210
.float 0.6
glabel D_800E6214
.float 0.075

.text
glabel func_8003F2E8
/* 03FEE8 8003F2E8 27BDFF90 */  addiu $sp, $sp, -0x70
/* 03FEEC 8003F2EC AFBF002C */  sw    $ra, 0x2c($sp)
/* 03FEF0 8003F2F0 AFB00028 */  sw    $s0, 0x28($sp)
/* 03FEF4 8003F2F4 AFA50074 */  sw    $a1, 0x74($sp)
/* 03FEF8 8003F2F8 8C8E0064 */  lw    $t6, 0x64($a0)
/* 03FEFC 8003F2FC 44852000 */  mtc1  $a1, $f4
/* 03FF00 8003F300 AFAE0040 */  sw    $t6, 0x40($sp)
/* 03FF04 8003F304 8DD80004 */  lw    $t8, 4($t6)
/* 03FF08 8003F308 3C0B8000 */  lui   $t3, %hi(osTvType) # $t3, 0x8000
/* 03FF0C 8003F30C 468020A0 */  cvt.s.w $f2, $f4
/* 03FF10 8003F310 8D6B0300 */  lw    $t3, %lo(osTvType)($t3)
/* 03FF14 8003F314 8F190064 */  lw    $t9, 0x64($t8)
/* 03FF18 8003F318 00808025 */  move  $s0, $a0
/* 03FF1C 8003F31C 46001006 */  mov.s $f0, $f2
/* 03FF20 8003F320 15600007 */  bnez  $t3, .L8003F340
/* 03FF24 8003F324 AFB90064 */   sw    $t9, 0x64($sp)
/* 03FF28 8003F328 3C01800E */  lui   $at, %hi(D_800E6200 + 4) # $at, 0x800e
/* 03FF2C 8003F32C C4296200 */  lwc1  $f9, %lo(D_800E6200)($at)
/* 03FF30 8003F330 C4286204 */  lwc1  $f8, %lo(D_800E6200 + 4)($at)
/* 03FF34 8003F334 460011A1 */  cvt.d.s $f6, $f2
/* 03FF38 8003F338 46283282 */  mul.d $f10, $f6, $f8
/* 03FF3C 8003F33C 46205020 */  cvt.s.d $f0, $f10
.L8003F340:
/* 03FF40 8003F340 26080078 */  addiu $t0, $s0, 0x78
/* 03FF44 8003F344 910C0004 */  lbu   $t4, 4($t0)
/* 03FF48 8003F348 00000000 */  nop   
/* 03FF4C 8003F34C 15800081 */  bnez  $t4, .L8003F554
/* 03FF50 8003F350 8FAA0040 */   lw    $t2, 0x40($sp)
/* 03FF54 8003F354 C612001C */  lwc1  $f18, 0x1c($s0)
/* 03FF58 8003F358 C610000C */  lwc1  $f16, 0xc($s0)
/* 03FF5C 8003F35C 46009102 */  mul.s $f4, $f18, $f0
/* 03FF60 8003F360 3C014110 */  li    $at, 0x41100000 # 9.000000
/* 03FF64 8003F364 2605000C */  addiu $a1, $s0, 0xc
/* 03FF68 8003F368 24040001 */  li    $a0, 1
/* 03FF6C 8003F36C 46048180 */  add.s $f6, $f16, $f4
/* 03FF70 8003F370 27A60058 */  addiu $a2, $sp, 0x58
/* 03FF74 8003F374 E7A60058 */  swc1  $f6, 0x58($sp)
/* 03FF78 8003F378 C60A0020 */  lwc1  $f10, 0x20($s0)
/* 03FF7C 8003F37C C6080010 */  lwc1  $f8, 0x10($s0)
/* 03FF80 8003F380 46005482 */  mul.s $f18, $f10, $f0
/* 03FF84 8003F384 2407FFFF */  li    $a3, -1
/* 03FF88 8003F388 46124400 */  add.s $f16, $f8, $f18
/* 03FF8C 8003F38C 44819000 */  mtc1  $at, $f18
/* 03FF90 8003F390 E7B0005C */  swc1  $f16, 0x5c($sp)
/* 03FF94 8003F394 C6060024 */  lwc1  $f6, 0x24($s0)
/* 03FF98 8003F398 C6040014 */  lwc1  $f4, 0x14($s0)
/* 03FF9C 8003F39C 46003282 */  mul.s $f10, $f6, $f0
/* 03FFA0 8003F3A0 E7A00050 */  swc1  $f0, 0x50($sp)
/* 03FFA4 8003F3A4 AFA80038 */  sw    $t0, 0x38($sp)
/* 03FFA8 8003F3A8 AFA50034 */  sw    $a1, 0x34($sp)
/* 03FFAC 8003F3AC 460A2200 */  add.s $f8, $f4, $f10
/* 03FFB0 8003F3B0 E7B20054 */  swc1  $f18, 0x54($sp)
/* 03FFB4 8003F3B4 0C00C44C */  jal   func_80031130
/* 03FFB8 8003F3B8 E7A80060 */   swc1  $f8, 0x60($sp)
/* 03FFBC 8003F3BC 240DFFFF */  li    $t5, -1
/* 03FFC0 8003F3C0 8FA40034 */  lw    $a0, 0x34($sp)
/* 03FFC4 8003F3C4 240E0001 */  li    $t6, 1
/* 03FFC8 8003F3C8 27AF004C */  addiu $t7, $sp, 0x4c
/* 03FFCC 8003F3CC AFA0004C */  sw    $zero, 0x4c($sp)
/* 03FFD0 8003F3D0 A3AD0047 */  sb    $t5, 0x47($sp)
/* 03FFD4 8003F3D4 AFAF0014 */  sw    $t7, 0x14($sp)
/* 03FFD8 8003F3D8 AFAE0010 */  sw    $t6, 0x10($sp)
/* 03FFDC 8003F3DC 27A50058 */  addiu $a1, $sp, 0x58
/* 03FFE0 8003F3E0 27A60054 */  addiu $a2, $sp, 0x54
/* 03FFE4 8003F3E4 0C00C580 */  jal   func_80031600
/* 03FFE8 8003F3E8 27A70047 */   addiu $a3, $sp, 0x47
/* 03FFEC 8003F3EC C7B00058 */  lwc1  $f16, 0x58($sp)
/* 03FFF0 8003F3F0 C606000C */  lwc1  $f6, 0xc($s0)
/* 03FFF4 8003F3F4 C7A00050 */  lwc1  $f0, 0x50($sp)
/* 03FFF8 8003F3F8 46068101 */  sub.s $f4, $f16, $f6
/* 03FFFC 8003F3FC 8FA80038 */  lw    $t0, 0x38($sp)
/* 040000 8003F400 46002283 */  div.s $f10, $f4, $f0
/* 040004 8003F404 C6120010 */  lwc1  $f18, 0x10($s0)
/* 040008 8003F408 240B0001 */  li    $t3, 1
/* 04000C 8003F40C 02002025 */  move  $a0, $s0
/* 040010 8003F410 27A50054 */  addiu $a1, $sp, 0x54
/* 040014 8003F414 00003025 */  move  $a2, $zero
/* 040018 8003F418 24070001 */  li    $a3, 1
/* 04001C 8003F41C E60A001C */  swc1  $f10, 0x1c($s0)
/* 040020 8003F420 C7A8005C */  lwc1  $f8, 0x5c($sp)
/* 040024 8003F424 C60A0014 */  lwc1  $f10, 0x14($s0)
/* 040028 8003F428 46124401 */  sub.s $f16, $f8, $f18
/* 04002C 8003F42C 00000000 */  nop   
/* 040030 8003F430 46008183 */  div.s $f6, $f16, $f0
/* 040034 8003F434 E6060020 */  swc1  $f6, 0x20($s0)
/* 040038 8003F438 C7A40060 */  lwc1  $f4, 0x60($sp)
/* 04003C 8003F43C 00000000 */  nop   
/* 040040 8003F440 460A2201 */  sub.s $f8, $f4, $f10
/* 040044 8003F444 00000000 */  nop   
/* 040048 8003F448 46004483 */  div.s $f18, $f8, $f0
/* 04004C 8003F44C E6120024 */  swc1  $f18, 0x24($s0)
/* 040050 8003F450 C7B00058 */  lwc1  $f16, 0x58($sp)
/* 040054 8003F454 00000000 */  nop   
/* 040058 8003F458 E610000C */  swc1  $f16, 0xc($s0)
/* 04005C 8003F45C C7A6005C */  lwc1  $f6, 0x5c($sp)
/* 040060 8003F460 00000000 */  nop   
/* 040064 8003F464 E6060010 */  swc1  $f6, 0x10($s0)
/* 040068 8003F468 C7A40060 */  lwc1  $f4, 0x60($sp)
/* 04006C 8003F46C 00000000 */  nop   
/* 040070 8003F470 E6040014 */  swc1  $f4, 0x14($s0)
/* 040074 8003F474 8FB8004C */  lw    $t8, 0x4c($sp)
/* 040078 8003F478 8FB90064 */  lw    $t9, 0x64($sp)
/* 04007C 8003F47C 17000005 */  bnez  $t8, .L8003F494
/* 040080 8003F480 00000000 */   nop   
/* 040084 8003F484 832A01D6 */  lb    $t2, 0x1d6($t9)
/* 040088 8003F488 24010002 */  li    $at, 2
/* 04008C 8003F48C 15410013 */  bne   $t2, $at, .L8003F4DC
/* 040090 8003F490 00000000 */   nop   
.L8003F494:
/* 040094 8003F494 44805000 */  mtc1  $zero, $f10
/* 040098 8003F498 44804000 */  mtc1  $zero, $f8
/* 04009C 8003F49C E60A001C */  swc1  $f10, 0x1c($s0)
/* 0400A0 8003F4A0 E6080024 */  swc1  $f8, 0x24($s0)
/* 0400A4 8003F4A4 A10B0004 */  sb    $t3, 4($t0)
/* 0400A8 8003F4A8 A1000005 */  sb    $zero, 5($t0)
/* 0400AC 8003F4AC A5000006 */  sh    $zero, 6($t0)
/* 0400B0 8003F4B0 8FAC0040 */  lw    $t4, 0x40($sp)
/* 0400B4 8003F4B4 2401000A */  li    $at, 10
/* 0400B8 8003F4B8 918D0018 */  lbu   $t5, 0x18($t4)
/* 0400BC 8003F4BC 00000000 */  nop   
/* 0400C0 8003F4C0 15A10006 */  bne   $t5, $at, .L8003F4DC
/* 0400C4 8003F4C4 3C014180 */   li    $at, 0x41800000 # 16.000000
/* 0400C8 8003F4C8 44818000 */  mtc1  $at, $f16
/* 0400CC 8003F4CC C6120010 */  lwc1  $f18, 0x10($s0)
/* 0400D0 8003F4D0 00000000 */  nop   
/* 0400D4 8003F4D4 46109180 */  add.s $f6, $f18, $f16
/* 0400D8 8003F4D8 E6060010 */  swc1  $f6, 0x10($s0)
.L8003F4DC:
/* 0400DC 8003F4DC 3C01800E */  lui   $at, %hi(D_800E6208) # $at, 0x800e
/* 0400E0 8003F4E0 C4246208 */  lwc1  $f4, %lo(D_800E6208)($at)
/* 0400E4 8003F4E4 AFA80038 */  sw    $t0, 0x38($sp)
/* 0400E8 8003F4E8 0C00AE6F */  jal   func_8002B9BC
/* 0400EC 8003F4EC E7A40054 */   swc1  $f4, 0x54($sp)
/* 0400F0 8003F4F0 8FA80038 */  lw    $t0, 0x38($sp)
/* 0400F4 8003F4F4 10400017 */  beqz  $v0, .L8003F554
/* 0400F8 8003F4F8 8FAA0040 */   lw    $t2, 0x40($sp)
/* 0400FC 8003F4FC C60A0010 */  lwc1  $f10, 0x10($s0)
/* 040100 8003F500 C7A80054 */  lwc1  $f8, 0x54($sp)
/* 040104 8003F504 240E0001 */  li    $t6, 1
/* 040108 8003F508 4608503C */  c.lt.s $f10, $f8
/* 04010C 8003F50C 240F0001 */  li    $t7, 1
/* 040110 8003F510 45000010 */  bc1f  .L8003F554
/* 040114 8003F514 8FAA0040 */   lw    $t2, 0x40($sp)
/* 040118 8003F518 A10E0004 */  sb    $t6, 4($t0)
/* 04011C 8003F51C A10F0005 */  sb    $t7, 5($t0)
/* 040120 8003F520 A5000006 */  sh    $zero, 6($t0)
/* 040124 8003F524 8FB80040 */  lw    $t8, 0x40($sp)
/* 040128 8003F528 2401000A */  li    $at, 10
/* 04012C 8003F52C 93190018 */  lbu   $t9, 0x18($t8)
/* 040130 8003F530 00000000 */  nop   
/* 040134 8003F534 17210006 */  bne   $t9, $at, .L8003F550
/* 040138 8003F538 3C014180 */   li    $at, 0x41800000 # 16.000000
/* 04013C 8003F53C 44818000 */  mtc1  $at, $f16
/* 040140 8003F540 C6120010 */  lwc1  $f18, 0x10($s0)
/* 040144 8003F544 00000000 */  nop   
/* 040148 8003F548 46109180 */  add.s $f6, $f18, $f16
/* 04014C 8003F54C E6060010 */  swc1  $f6, 0x10($s0)
.L8003F550:
/* 040150 8003F550 8FAA0040 */  lw    $t2, 0x40($sp)
.L8003F554:
/* 040154 8003F554 24010003 */  li    $at, 3
/* 040158 8003F558 914B0018 */  lbu   $t3, 0x18($t2)
/* 04015C 8003F55C 00000000 */  nop   
/* 040160 8003F560 1561003F */  bne   $t3, $at, .L8003F660
/* 040164 8003F564 8FAD0040 */   lw    $t5, 0x40($sp)
/* 040168 8003F568 91020004 */  lbu   $v0, 4($t0)
/* 04016C 8003F56C 24010001 */  li    $at, 1
/* 040170 8003F570 1040003B */  beqz  $v0, .L8003F660
/* 040174 8003F574 8FAD0040 */   lw    $t5, 0x40($sp)
/* 040178 8003F578 1441000D */  bne   $v0, $at, .L8003F5B0
/* 04017C 8003F57C 00000000 */   nop   
/* 040180 8003F580 850C0006 */  lh    $t4, 6($t0)
/* 040184 8003F584 8FAD0074 */  lw    $t5, 0x74($sp)
/* 040188 8003F588 2418000C */  li    $t8, 12
/* 04018C 8003F58C 018D7021 */  addu  $t6, $t4, $t5
/* 040190 8003F590 A50E0006 */  sh    $t6, 6($t0)
/* 040194 8003F594 850F0006 */  lh    $t7, 6($t0)
/* 040198 8003F598 00000000 */  nop   
/* 04019C 8003F59C 29E1000D */  slti  $at, $t7, 0xd
/* 0401A0 8003F5A0 14200012 */  bnez  $at, .L8003F5EC
/* 0401A4 8003F5A4 8FAE0064 */   lw    $t6, 0x64($sp)
/* 0401A8 8003F5A8 1000000F */  b     .L8003F5E8
/* 0401AC 8003F5AC A5180006 */   sh    $t8, 6($t0)
.L8003F5B0:
/* 0401B0 8003F5B0 85190006 */  lh    $t9, 6($t0)
/* 0401B4 8003F5B4 8FAA0074 */  lw    $t2, 0x74($sp)
/* 0401B8 8003F5B8 240D0001 */  li    $t5, 1
/* 0401BC 8003F5BC 032A5823 */  subu  $t3, $t9, $t2
/* 0401C0 8003F5C0 A50B0006 */  sh    $t3, 6($t0)
/* 0401C4 8003F5C4 850C0006 */  lh    $t4, 6($t0)
/* 0401C8 8003F5C8 02002025 */  move  $a0, $s0
/* 0401CC 8003F5CC 1D800007 */  bgtz  $t4, .L8003F5EC
/* 0401D0 8003F5D0 8FAE0064 */   lw    $t6, 0x64($sp)
/* 0401D4 8003F5D4 A50D0006 */  sh    $t5, 6($t0)
/* 0401D8 8003F5D8 0C003FEE */  jal   gParticlePtrList_addObject
/* 0401DC 8003F5DC AFA80038 */   sw    $t0, 0x38($sp)
/* 0401E0 8003F5E0 8FA80038 */  lw    $t0, 0x38($sp)
/* 0401E4 8003F5E4 00000000 */  nop   
.L8003F5E8:
/* 0401E8 8003F5E8 8FAE0064 */  lw    $t6, 0x64($sp)
.L8003F5EC:
/* 0401EC 8003F5EC 24010002 */  li    $at, 2
/* 0401F0 8003F5F0 81CF01D6 */  lb    $t7, 0x1d6($t6)
/* 0401F4 8003F5F4 00000000 */  nop   
/* 0401F8 8003F5F8 11E10019 */  beq   $t7, $at, .L8003F660
/* 0401FC 8003F5FC 8FAD0040 */   lw    $t5, 0x40($sp)
/* 040200 8003F600 91180005 */  lbu   $t8, 5($t0)
/* 040204 8003F604 85020006 */  lh    $v0, 6($t0)
/* 040208 8003F608 13000009 */  beqz  $t8, .L8003F630
/* 04020C 8003F60C 00000000 */   nop   
/* 040210 8003F610 44822000 */  mtc1  $v0, $f4
/* 040214 8003F614 3C01800E */  lui   $at, %hi(D_800E620C) # $at, 0x800e
/* 040218 8003F618 468022A0 */  cvt.s.w $f10, $f4
/* 04021C 8003F61C C428620C */  lwc1  $f8, %lo(D_800E620C)($at)
/* 040220 8003F620 8E190058 */  lw    $t9, 0x58($s0)
/* 040224 8003F624 46085482 */  mul.s $f18, $f10, $f8
/* 040228 8003F628 10000008 */  b     .L8003F64C
/* 04022C 8003F62C E7320000 */   swc1  $f18, ($t9)
.L8003F630:
/* 040230 8003F630 44828000 */  mtc1  $v0, $f16
/* 040234 8003F634 3C01800E */  lui   $at, %hi(D_800E6210) # $at, 0x800e
/* 040238 8003F638 468081A0 */  cvt.s.w $f6, $f16
/* 04023C 8003F63C C4246210 */  lwc1  $f4, %lo(D_800E6210)($at)
/* 040240 8003F640 8E0A0050 */  lw    $t2, 0x50($s0)
/* 040244 8003F644 46043282 */  mul.s $f10, $f6, $f4
/* 040248 8003F648 E54A0000 */  swc1  $f10, ($t2)
.L8003F64C:
/* 04024C 8003F64C 860B0006 */  lh    $t3, 6($s0)
/* 040250 8003F650 00000000 */  nop   
/* 040254 8003F654 356C1000 */  ori   $t4, $t3, 0x1000
/* 040258 8003F658 A60C0006 */  sh    $t4, 6($s0)
/* 04025C 8003F65C 8FAD0040 */  lw    $t5, 0x40($sp)
.L8003F660:
/* 040260 8003F660 2401000A */  li    $at, 10
/* 040264 8003F664 91AE0018 */  lbu   $t6, 0x18($t5)
/* 040268 8003F668 00000000 */  nop   
/* 04026C 8003F66C 15C10076 */  bne   $t6, $at, .L8003F848
/* 040270 8003F670 00000000 */   nop   
/* 040274 8003F674 8DAF0000 */  lw    $t7, ($t5)
/* 040278 8003F678 00000000 */  nop   
/* 04027C 8003F67C 11E00013 */  beqz  $t7, .L8003F6CC
/* 040280 8003F680 00000000 */   nop   
/* 040284 8003F684 44800000 */  mtc1  $zero, $f0
/* 040288 8003F688 00000000 */  nop   
/* 04028C 8003F68C E600000C */  swc1  $f0, 0xc($s0)
/* 040290 8003F690 E6000010 */  swc1  $f0, 0x10($s0)
/* 040294 8003F694 E6000014 */  swc1  $f0, 0x14($s0)
/* 040298 8003F698 0C004558 */  jal   func_80011560
/* 04029C 8003F69C AFA80038 */   sw    $t0, 0x38($sp)
/* 0402A0 8003F6A0 8FB80040 */  lw    $t8, 0x40($sp)
/* 0402A4 8003F6A4 02002025 */  move  $a0, $s0
/* 0402A8 8003F6A8 8F020000 */  lw    $v0, ($t8)
/* 0402AC 8003F6AC 00000000 */  nop   
/* 0402B0 8003F6B0 8C45000C */  lw    $a1, 0xc($v0)
/* 0402B4 8003F6B4 8C460010 */  lw    $a2, 0x10($v0)
/* 0402B8 8003F6B8 8C470014 */  lw    $a3, 0x14($v0)
/* 0402BC 8003F6BC 0C00455C */  jal   move_object
/* 0402C0 8003F6C0 00000000 */   nop   
/* 0402C4 8003F6C4 8FA80038 */  lw    $t0, 0x38($sp)
/* 0402C8 8003F6C8 00000000 */  nop   
.L8003F6CC:
/* 0402CC 8003F6CC 91020004 */  lbu   $v0, 4($t0)
/* 0402D0 8003F6D0 24010001 */  li    $at, 1
/* 0402D4 8003F6D4 10410003 */  beq   $v0, $at, .L8003F6E4
/* 0402D8 8003F6D8 24010002 */   li    $at, 2
/* 0402DC 8003F6DC 1441000C */  bne   $v0, $at, .L8003F710
/* 0402E0 8003F6E0 00000000 */   nop   
.L8003F6E4:
/* 0402E4 8003F6E4 85190006 */  lh    $t9, 6($t0)
/* 0402E8 8003F6E8 8FAA0074 */  lw    $t2, 0x74($sp)
/* 0402EC 8003F6EC 240E0014 */  li    $t6, 20
/* 0402F0 8003F6F0 032A5821 */  addu  $t3, $t9, $t2
/* 0402F4 8003F6F4 A50B0006 */  sh    $t3, 6($t0)
/* 0402F8 8003F6F8 850C0006 */  lh    $t4, 6($t0)
/* 0402FC 8003F6FC 00000000 */  nop   
/* 040300 8003F700 29810015 */  slti  $at, $t4, 0x15
/* 040304 8003F704 14200002 */  bnez  $at, .L8003F710
/* 040308 8003F708 00000000 */   nop   
/* 04030C 8003F70C A50E0006 */  sh    $t6, 6($t0)
.L8003F710:
/* 040310 8003F710 910D0004 */  lbu   $t5, 4($t0)
/* 040314 8003F714 24010002 */  li    $at, 2
/* 040318 8003F718 15A10020 */  bne   $t5, $at, .L8003F79C
/* 04031C 8003F71C 00000000 */   nop   
/* 040320 8003F720 910F0005 */  lbu   $t7, 5($t0)
/* 040324 8003F724 8FB80074 */  lw    $t8, 0x74($sp)
/* 040328 8003F728 240B0003 */  li    $t3, 3
/* 04032C 8003F72C 01F8C821 */  addu  $t9, $t7, $t8
/* 040330 8003F730 332A00FF */  andi  $t2, $t9, 0xff
/* 040334 8003F734 29410079 */  slti  $at, $t2, 0x79
/* 040338 8003F738 14200018 */  bnez  $at, .L8003F79C
/* 04033C 8003F73C A1190005 */   sb    $t9, 5($t0)
/* 040340 8003F740 A10B0004 */  sb    $t3, 4($t0)
/* 040344 8003F744 8FAC0040 */  lw    $t4, 0x40($sp)
/* 040348 8003F748 00000000 */  nop   
/* 04034C 8003F74C 8D84001C */  lw    $a0, 0x1c($t4)
/* 040350 8003F750 00000000 */  nop   
/* 040354 8003F754 10800006 */  beqz  $a0, .L8003F770
/* 040358 8003F758 00000000 */   nop   
/* 04035C 8003F75C 0C0025BE */  jal   func_800096F8
/* 040360 8003F760 AFA80038 */   sw    $t0, 0x38($sp)
/* 040364 8003F764 8FAE0040 */  lw    $t6, 0x40($sp)
/* 040368 8003F768 8FA80038 */  lw    $t0, 0x38($sp)
/* 04036C 8003F76C ADC0001C */  sw    $zero, 0x1c($t6)
.L8003F770:
/* 040370 8003F770 8E05000C */  lw    $a1, 0xc($s0)
/* 040374 8003F774 8E060010 */  lw    $a2, 0x10($s0)
/* 040378 8003F778 8E070014 */  lw    $a3, 0x14($s0)
/* 04037C 8003F77C 240D0004 */  li    $t5, 4
/* 040380 8003F780 AFAD0010 */  sw    $t5, 0x10($sp)
/* 040384 8003F784 AFA80038 */  sw    $t0, 0x38($sp)
/* 040388 8003F788 AFA00014 */  sw    $zero, 0x14($sp)
/* 04038C 8003F78C 0C002556 */  jal   play_sound_at_position
/* 040390 8003F790 24040155 */   li    $a0, 341
/* 040394 8003F794 8FA80038 */  lw    $t0, 0x38($sp)
/* 040398 8003F798 00000000 */  nop   
.L8003F79C:
/* 04039C 8003F79C 910F0004 */  lbu   $t7, 4($t0)
/* 0403A0 8003F7A0 24010003 */  li    $at, 3
/* 0403A4 8003F7A4 15E10018 */  bne   $t7, $at, .L8003F808
/* 0403A8 8003F7A8 24180001 */   li    $t8, 1
/* 0403AC 8003F7AC AE180074 */  sw    $t8, 0x74($s0)
/* 0403B0 8003F7B0 8FA50074 */  lw    $a1, 0x74($sp)
/* 0403B4 8003F7B4 AFA80038 */  sw    $t0, 0x38($sp)
/* 0403B8 8003F7B8 0C02BF0F */  jal   func_800AFC3C
/* 0403BC 8003F7BC 02002025 */   move  $a0, $s0
/* 0403C0 8003F7C0 86190006 */  lh    $t9, 6($s0)
/* 0403C4 8003F7C4 8FA80038 */  lw    $t0, 0x38($sp)
/* 0403C8 8003F7C8 372A4000 */  ori   $t2, $t9, 0x4000
/* 0403CC 8003F7CC A60A0006 */  sh    $t2, 6($s0)
/* 0403D0 8003F7D0 8FAC0074 */  lw    $t4, 0x74($sp)
/* 0403D4 8003F7D4 850B0006 */  lh    $t3, 6($t0)
/* 0403D8 8003F7D8 240F0001 */  li    $t7, 1
/* 0403DC 8003F7DC 016C7023 */  subu  $t6, $t3, $t4
/* 0403E0 8003F7E0 A50E0006 */  sh    $t6, 6($t0)
/* 0403E4 8003F7E4 850D0006 */  lh    $t5, 6($t0)
/* 0403E8 8003F7E8 02002025 */  move  $a0, $s0
/* 0403EC 8003F7EC 1DA00006 */  bgtz  $t5, .L8003F808
/* 0403F0 8003F7F0 00000000 */   nop   
/* 0403F4 8003F7F4 A50F0006 */  sh    $t7, 6($t0)
/* 0403F8 8003F7F8 0C003FEE */  jal   gParticlePtrList_addObject
/* 0403FC 8003F7FC AFA80038 */   sw    $t0, 0x38($sp)
/* 040400 8003F800 8FA80038 */  lw    $t0, 0x38($sp)
/* 040404 8003F804 00000000 */  nop   
.L8003F808:
/* 040408 8003F808 91180004 */  lbu   $t8, 4($t0)
/* 04040C 8003F80C 00000000 */  nop   
/* 040410 8003F810 13000009 */  beqz  $t8, .L8003F838
/* 040414 8003F814 8FAB0074 */   lw    $t3, 0x74($sp)
/* 040418 8003F818 85190006 */  lh    $t9, 6($t0)
/* 04041C 8003F81C 3C01800E */  lui   $at, %hi(D_800E6214) # $at, 0x800e
/* 040420 8003F820 44994000 */  mtc1  $t9, $f8
/* 040424 8003F824 C4306214 */  lwc1  $f16, %lo(D_800E6214)($at)
/* 040428 8003F828 468044A0 */  cvt.s.w $f18, $f8
/* 04042C 8003F82C 46109182 */  mul.s $f6, $f18, $f16
/* 040430 8003F830 E6060008 */  swc1  $f6, 8($s0)
/* 040434 8003F834 8FAB0074 */  lw    $t3, 0x74($sp)
.L8003F838:
/* 040438 8003F838 860A0018 */  lh    $t2, 0x18($s0)
/* 04043C 8003F83C 000B6100 */  sll   $t4, $t3, 4
/* 040440 8003F840 014C7021 */  addu  $t6, $t2, $t4
/* 040444 8003F844 A60E0018 */  sh    $t6, 0x18($s0)
.L8003F848:
/* 040448 8003F848 910D0004 */  lbu   $t5, 4($t0)
/* 04044C 8003F84C 8FAF0064 */  lw    $t7, 0x64($sp)
/* 040450 8003F850 29A10002 */  slti  $at, $t5, 2
/* 040454 8003F854 102000F8 */  beqz  $at, .L8003FC38
/* 040458 8003F858 8FBF002C */   lw    $ra, 0x2c($sp)
/* 04045C 8003F85C 81F801D6 */  lb    $t8, 0x1d6($t7)
/* 040460 8003F860 24010002 */  li    $at, 2
/* 040464 8003F864 13010015 */  beq   $t8, $at, .L8003F8BC
/* 040468 8003F868 2405003C */   li    $a1, 60
/* 04046C 8003F86C 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 040470 8003F870 44816000 */  mtc1  $at, $f12
/* 040474 8003F874 C6040020 */  lwc1  $f4, 0x20($s0)
/* 040478 8003F878 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 04047C 8003F87C 44814800 */  mtc1  $at, $f9
/* 040480 8003F880 44804000 */  mtc1  $zero, $f8
/* 040484 8003F884 C600001C */  lwc1  $f0, 0x1c($s0)
/* 040488 8003F888 C6020024 */  lwc1  $f2, 0x24($s0)
/* 04048C 8003F88C 460022A1 */  cvt.d.s $f10, $f4
/* 040490 8003F890 46285481 */  sub.d $f18, $f10, $f8
/* 040494 8003F894 24050022 */  li    $a1, 34
/* 040498 8003F898 460C0183 */  div.s $f6, $f0, $f12
/* 04049C 8003F89C 46209420 */  cvt.s.d $f16, $f18
/* 0404A0 8003F8A0 E6100020 */  swc1  $f16, 0x20($s0)
/* 0404A4 8003F8A4 460C1283 */  div.s $f10, $f2, $f12
/* 0404A8 8003F8A8 46060101 */  sub.s $f4, $f0, $f6
/* 0404AC 8003F8AC E604001C */  swc1  $f4, 0x1c($s0)
/* 0404B0 8003F8B0 460A1201 */  sub.s $f8, $f2, $f10
/* 0404B4 8003F8B4 10000009 */  b     .L8003F8DC
/* 0404B8 8003F8B8 E6080024 */   swc1  $f8, 0x24($s0)
.L8003F8BC:
/* 0404BC 8003F8BC 44809000 */  mtc1  $zero, $f18
/* 0404C0 8003F8C0 86190018 */  lh    $t9, 0x18($s0)
/* 0404C4 8003F8C4 E6120020 */  swc1  $f18, 0x20($s0)
/* 0404C8 8003F8C8 8FAB0074 */  lw    $t3, 0x74($sp)
/* 0404CC 8003F8CC 00000000 */  nop   
/* 0404D0 8003F8D0 000B50C0 */  sll   $t2, $t3, 3
/* 0404D4 8003F8D4 032A6021 */  addu  $t4, $t9, $t2
/* 0404D8 8003F8D8 A60C0018 */  sh    $t4, 0x18($s0)
.L8003F8DC:
/* 0404DC 8003F8DC 8FAE0040 */  lw    $t6, 0x40($sp)
/* 0404E0 8003F8E0 2401000A */  li    $at, 10
/* 0404E4 8003F8E4 91C20018 */  lbu   $v0, 0x18($t6)
/* 0404E8 8003F8E8 8FAF0040 */  lw    $t7, 0x40($sp)
/* 0404EC 8003F8EC 10410004 */  beq   $v0, $at, .L8003F900
/* 0404F0 8003F8F0 00056843 */   sra   $t5, $a1, 1
/* 0404F4 8003F8F4 24010003 */  li    $at, 3
/* 0404F8 8003F8F8 14410002 */  bne   $v0, $at, .L8003F904
/* 0404FC 8003F8FC 00000000 */   nop   
.L8003F900:
/* 040500 8003F900 00AD2821 */  addu  $a1, $a1, $t5
.L8003F904:
/* 040504 8003F904 8E02004C */  lw    $v0, 0x4c($s0)
/* 040508 8003F908 00000000 */  nop   
/* 04050C 8003F90C 8C440000 */  lw    $a0, ($v0)
/* 040510 8003F910 00000000 */  nop   
/* 040514 8003F914 10800094 */  beqz  $a0, .L8003FB68
/* 040518 8003F918 00000000 */   nop   
/* 04051C 8003F91C 8DF80004 */  lw    $t8, 4($t7)
/* 040520 8003F920 00000000 */  nop   
/* 040524 8003F924 1498000D */  bne   $a0, $t8, .L8003F95C
/* 040528 8003F928 240401C2 */   li    $a0, 450
/* 04052C 8003F92C AFA50048 */  sw    $a1, 0x48($sp)
/* 040530 8003F930 0C00322D */  jal   normalise_time
/* 040534 8003F934 AFA80038 */   sw    $t0, 0x38($sp)
/* 040538 8003F938 8FA80038 */  lw    $t0, 0x38($sp)
/* 04053C 8003F93C 8FA50048 */  lw    $a1, 0x48($sp)
/* 040540 8003F940 8D0B0000 */  lw    $t3, ($t0)
/* 040544 8003F944 00000000 */  nop   
/* 040548 8003F948 0162082A */  slt   $at, $t3, $v0
/* 04054C 8003F94C 10200086 */  beqz  $at, .L8003FB68
/* 040550 8003F950 00000000 */   nop   
/* 040554 8003F954 8E02004C */  lw    $v0, 0x4c($s0)
/* 040558 8003F958 00000000 */  nop   
.L8003F95C:
/* 04055C 8003F95C 90590013 */  lbu   $t9, 0x13($v0)
/* 040560 8003F960 00000000 */  nop   
/* 040564 8003F964 0325082A */  slt   $at, $t9, $a1
/* 040568 8003F968 1020007F */  beqz  $at, .L8003FB68
/* 04056C 8003F96C 00000000 */   nop   
/* 040570 8003F970 8C430000 */  lw    $v1, ($v0)
/* 040574 8003F974 24010001 */  li    $at, 1
/* 040578 8003F978 8C6A0040 */  lw    $t2, 0x40($v1)
/* 04057C 8003F97C 00000000 */  nop   
/* 040580 8003F980 814C0054 */  lb    $t4, 0x54($t2)
/* 040584 8003F984 00000000 */  nop   
/* 040588 8003F988 15810077 */  bne   $t4, $at, .L8003FB68
/* 04058C 8003F98C 00000000 */   nop   
/* 040590 8003F990 8C690064 */  lw    $t1, 0x64($v1)
/* 040594 8003F994 240E0001 */  li    $t6, 1
/* 040598 8003F998 A12E0187 */  sb    $t6, 0x187($t1)
/* 04059C 8003F99C 8FAD0040 */  lw    $t5, 0x40($sp)
/* 0405A0 8003F9A0 24010002 */  li    $at, 2
/* 0405A4 8003F9A4 91A20018 */  lbu   $v0, 0x18($t5)
/* 0405A8 8003F9A8 2407002C */  li    $a3, 44
/* 0405AC 8003F9AC 14410011 */  bne   $v0, $at, .L8003F9F4
/* 0405B0 8003F9B0 240F0011 */   li    $t7, 17
/* 0405B4 8003F9B4 C60C000C */  lwc1  $f12, 0xc($s0)
/* 0405B8 8003F9B8 C60E0010 */  lwc1  $f14, 0x10($s0)
/* 0405BC 8003F9BC 8E060014 */  lw    $a2, 0x14($s0)
/* 0405C0 8003F9C0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0405C4 8003F9C4 44818000 */  mtc1  $at, $f16
/* 0405C8 8003F9C8 24180001 */  li    $t8, 1
/* 0405CC 8003F9CC AFB80018 */  sw    $t8, 0x18($sp)
/* 0405D0 8003F9D0 AFA90068 */  sw    $t1, 0x68($sp)
/* 0405D4 8003F9D4 AFA80038 */  sw    $t0, 0x38($sp)
/* 0405D8 8003F9D8 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0405DC 8003F9DC 0C00FF11 */  jal   func_8003FC44
/* 0405E0 8003F9E0 E7B00014 */   swc1  $f16, 0x14($sp)
/* 0405E4 8003F9E4 8FA80038 */  lw    $t0, 0x38($sp)
/* 0405E8 8003F9E8 8FA90068 */  lw    $t1, 0x68($sp)
/* 0405EC 8003F9EC 10000035 */  b     .L8003FAC4
/* 0405F0 8003F9F0 812C01D8 */   lb    $t4, 0x1d8($t1)
.L8003F9F4:
/* 0405F4 8003F9F4 2401000A */  li    $at, 10
/* 0405F8 8003F9F8 1441002C */  bne   $v0, $at, .L8003FAAC
/* 0405FC 8003F9FC 24010003 */   li    $at, 3
/* 040600 8003FA00 852B018E */  lh    $t3, 0x18e($t1)
/* 040604 8003FA04 8FAE0040 */  lw    $t6, 0x40($sp)
/* 040608 8003FA08 19600014 */  blez  $t3, .L8003FA5C
/* 04060C 8003FA0C 24040152 */   li    $a0, 338
/* 040610 8003FA10 81390189 */  lb    $t9, 0x189($t1)
/* 040614 8003FA14 240A0003 */  li    $t2, 3
/* 040618 8003FA18 2B210003 */  slti  $at, $t9, 3
/* 04061C 8003FA1C 1420000F */  bnez  $at, .L8003FA5C
/* 040620 8003FA20 240C0004 */   li    $t4, 4
/* 040624 8003FA24 A10A0004 */  sb    $t2, 4($t0)
/* 040628 8003FA28 8E070014 */  lw    $a3, 0x14($s0)
/* 04062C 8003FA2C 8E060010 */  lw    $a2, 0x10($s0)
/* 040630 8003FA30 8E05000C */  lw    $a1, 0xc($s0)
/* 040634 8003FA34 AFA90068 */  sw    $t1, 0x68($sp)
/* 040638 8003FA38 AFA80038 */  sw    $t0, 0x38($sp)
/* 04063C 8003FA3C AFA00014 */  sw    $zero, 0x14($sp)
/* 040640 8003FA40 AFAC0010 */  sw    $t4, 0x10($sp)
/* 040644 8003FA44 0C002556 */  jal   play_sound_at_position
/* 040648 8003FA48 24040155 */   li    $a0, 341
/* 04064C 8003FA4C 8FA80038 */  lw    $t0, 0x38($sp)
/* 040650 8003FA50 8FA90068 */  lw    $t1, 0x68($sp)
/* 040654 8003FA54 1000001B */  b     .L8003FAC4
/* 040658 8003FA58 812C01D8 */   lb    $t4, 0x1d8($t1)
.L8003FA5C:
/* 04065C 8003FA5C ADC30000 */  sw    $v1, ($t6)
/* 040660 8003FA60 8C670014 */  lw    $a3, 0x14($v1)
/* 040664 8003FA64 8C660010 */  lw    $a2, 0x10($v1)
/* 040668 8003FA68 8C65000C */  lw    $a1, 0xc($v1)
/* 04066C 8003FA6C 240D0004 */  li    $t5, 4
/* 040670 8003FA70 25CF001C */  addiu $t7, $t6, 0x1c
/* 040674 8003FA74 AFAF0014 */  sw    $t7, 0x14($sp)
/* 040678 8003FA78 AFAD0010 */  sw    $t5, 0x10($sp)
/* 04067C 8003FA7C AFA90068 */  sw    $t1, 0x68($sp)
/* 040680 8003FA80 0C002556 */  jal   play_sound_at_position
/* 040684 8003FA84 AFA80038 */   sw    $t0, 0x38($sp)
/* 040688 8003FA88 8FA80038 */  lw    $t0, 0x38($sp)
/* 04068C 8003FA8C 8FA90068 */  lw    $t1, 0x68($sp)
/* 040690 8003FA90 24180006 */  li    $t8, 6
/* 040694 8003FA94 240B0002 */  li    $t3, 2
/* 040698 8003FA98 A1380187 */  sb    $t8, 0x187($t1)
/* 04069C 8003FA9C A10B0004 */  sb    $t3, 4($t0)
/* 0406A0 8003FAA0 10000007 */  b     .L8003FAC0
/* 0406A4 8003FAA4 A1000005 */   sb    $zero, 5($t0)
/* 0406A8 8003FAA8 24010003 */  li    $at, 3
.L8003FAAC:
/* 0406AC 8003FAAC 14410004 */  bne   $v0, $at, .L8003FAC0
/* 0406B0 8003FAB0 24190002 */   li    $t9, 2
/* 0406B4 8003FAB4 A1390187 */  sb    $t9, 0x187($t1)
/* 0406B8 8003FAB8 240A0002 */  li    $t2, 2
/* 0406BC 8003FABC A10A0004 */  sb    $t2, 4($t0)
.L8003FAC0:
/* 0406C0 8003FAC0 812C01D8 */  lb    $t4, 0x1d8($t1)
.L8003FAC4:
/* 0406C4 8003FAC4 2405000D */  li    $a1, 13
/* 0406C8 8003FAC8 15800009 */  bnez  $t4, .L8003FAF0
/* 0406CC 8003FACC 8FAD0040 */   lw    $t5, 0x40($sp)
/* 0406D0 8003FAD0 85240000 */  lh    $a0, ($t1)
/* 0406D4 8003FAD4 AFA90068 */  sw    $t1, 0x68($sp)
/* 0406D8 8003FAD8 0C01C8D2 */  jal   func_80072348
/* 0406DC 8003FADC AFA80038 */   sw    $t0, 0x38($sp)
/* 0406E0 8003FAE0 8FA80038 */  lw    $t0, 0x38($sp)
/* 0406E4 8003FAE4 8FA90068 */  lw    $t1, 0x68($sp)
/* 0406E8 8003FAE8 00000000 */  nop   
/* 0406EC 8003FAEC 8FAD0040 */  lw    $t5, 0x40($sp)
.L8003FAF0:
/* 0406F0 8003FAF0 2402FFFF */  li    $v0, -1
/* 0406F4 8003FAF4 8DAE0004 */  lw    $t6, 4($t5)
/* 0406F8 8003FAF8 00000000 */  nop   
/* 0406FC 8003FAFC 8DCF0064 */  lw    $t7, 0x64($t6)
/* 040700 8003FB00 00000000 */  nop   
/* 040704 8003FB04 AFAF0064 */  sw    $t7, 0x64($sp)
/* 040708 8003FB08 85380000 */  lh    $t8, ($t1)
/* 04070C 8003FB0C 8FB90064 */  lw    $t9, 0x64($sp)
/* 040710 8003FB10 14580005 */  bne   $v0, $t8, .L8003FB28
/* 040714 8003FB14 00000000 */   nop   
/* 040718 8003FB18 85EB0000 */  lh    $t3, ($t7)
/* 04071C 8003FB1C 00000000 */  nop   
/* 040720 8003FB20 104B0006 */  beq   $v0, $t3, .L8003FB3C
/* 040724 8003FB24 8FAD0040 */   lw    $t5, 0x40($sp)
.L8003FB28:
/* 040728 8003FB28 932A01EF */  lbu   $t2, 0x1ef($t9)
/* 04072C 8003FB2C 00000000 */  nop   
/* 040730 8003FB30 354C0002 */  ori   $t4, $t2, 2
/* 040734 8003FB34 A32C01EF */  sb    $t4, 0x1ef($t9)
/* 040738 8003FB38 8FAD0040 */  lw    $t5, 0x40($sp)
.L8003FB3C:
/* 04073C 8003FB3C 24010003 */  li    $at, 3
/* 040740 8003FB40 91A20018 */  lbu   $v0, 0x18($t5)
/* 040744 8003FB44 00000000 */  nop   
/* 040748 8003FB48 10410007 */  beq   $v0, $at, .L8003FB68
/* 04074C 8003FB4C 2401000A */   li    $at, 10
/* 040750 8003FB50 10410005 */  beq   $v0, $at, .L8003FB68
/* 040754 8003FB54 00000000 */   nop   
/* 040758 8003FB58 0C003FEE */  jal   gParticlePtrList_addObject
/* 04075C 8003FB5C 02002025 */   move  $a0, $s0
/* 040760 8003FB60 10000035 */  b     .L8003FC38
/* 040764 8003FB64 8FBF002C */   lw    $ra, 0x2c($sp)
.L8003FB68:
/* 040768 8003FB68 8D0E0000 */  lw    $t6, ($t0)
/* 04076C 8003FB6C 8FB80074 */  lw    $t8, 0x74($sp)
/* 040770 8003FB70 910B0004 */  lbu   $t3, 4($t0)
/* 040774 8003FB74 01D87823 */  subu  $t7, $t6, $t8
/* 040778 8003FB78 29610002 */  slti  $at, $t3, 2
/* 04077C 8003FB7C 1020002D */  beqz  $at, .L8003FC34
/* 040780 8003FB80 AD0F0000 */   sw    $t7, ($t0)
/* 040784 8003FB84 2404FAD8 */  li    $a0, -1320
/* 040788 8003FB88 0C00322D */  jal   normalise_time
/* 04078C 8003FB8C AFA80038 */   sw    $t0, 0x38($sp)
/* 040790 8003FB90 8FA80038 */  lw    $t0, 0x38($sp)
/* 040794 8003FB94 8FAC0040 */  lw    $t4, 0x40($sp)
/* 040798 8003FB98 8D0A0000 */  lw    $t2, ($t0)
/* 04079C 8003FB9C 00000000 */  nop   
/* 0407A0 8003FBA0 0142082A */  slt   $at, $t2, $v0
/* 0407A4 8003FBA4 10200024 */  beqz  $at, .L8003FC38
/* 0407A8 8003FBA8 8FBF002C */   lw    $ra, 0x2c($sp)
/* 0407AC 8003FBAC 91820018 */  lbu   $v0, 0x18($t4)
/* 0407B0 8003FBB0 24010003 */  li    $at, 3
/* 0407B4 8003FBB4 14410003 */  bne   $v0, $at, .L8003FBC4
/* 0407B8 8003FBB8 24190002 */   li    $t9, 2
/* 0407BC 8003FBBC 1000001D */  b     .L8003FC34
/* 0407C0 8003FBC0 A1190004 */   sb    $t9, 4($t0)
.L8003FBC4:
/* 0407C4 8003FBC4 2401000A */  li    $at, 10
/* 0407C8 8003FBC8 1441000D */  bne   $v0, $at, .L8003FC00
/* 0407CC 8003FBCC 2407002C */   li    $a3, 44
/* 0407D0 8003FBD0 240D0003 */  li    $t5, 3
/* 0407D4 8003FBD4 A10D0004 */  sb    $t5, 4($t0)
/* 0407D8 8003FBD8 8E070014 */  lw    $a3, 0x14($s0)
/* 0407DC 8003FBDC 8E060010 */  lw    $a2, 0x10($s0)
/* 0407E0 8003FBE0 8E05000C */  lw    $a1, 0xc($s0)
/* 0407E4 8003FBE4 240E0004 */  li    $t6, 4
/* 0407E8 8003FBE8 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0407EC 8003FBEC AFA00014 */  sw    $zero, 0x14($sp)
/* 0407F0 8003FBF0 0C002556 */  jal   play_sound_at_position
/* 0407F4 8003FBF4 24040155 */   li    $a0, 341
/* 0407F8 8003FBF8 1000000F */  b     .L8003FC38
/* 0407FC 8003FBFC 8FBF002C */   lw    $ra, 0x2c($sp)
.L8003FC00:
/* 040800 8003FC00 C60C000C */  lwc1  $f12, 0xc($s0)
/* 040804 8003FC04 C60E0010 */  lwc1  $f14, 0x10($s0)
/* 040808 8003FC08 8E060014 */  lw    $a2, 0x14($s0)
/* 04080C 8003FC0C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 040810 8003FC10 44813000 */  mtc1  $at, $f6
/* 040814 8003FC14 24180011 */  li    $t8, 17
/* 040818 8003FC18 240F0001 */  li    $t7, 1
/* 04081C 8003FC1C AFAF0018 */  sw    $t7, 0x18($sp)
/* 040820 8003FC20 AFB80010 */  sw    $t8, 0x10($sp)
/* 040824 8003FC24 0C00FF11 */  jal   func_8003FC44
/* 040828 8003FC28 E7A60014 */   swc1  $f6, 0x14($sp)
/* 04082C 8003FC2C 0C003FEE */  jal   gParticlePtrList_addObject
/* 040830 8003FC30 02002025 */   move  $a0, $s0
.L8003FC34:
/* 040834 8003FC34 8FBF002C */  lw    $ra, 0x2c($sp)
.L8003FC38:
/* 040838 8003FC38 8FB00028 */  lw    $s0, 0x28($sp)
/* 04083C 8003FC3C 03E00008 */  jr    $ra
/* 040840 8003FC40 27BD0070 */   addiu $sp, $sp, 0x70

