glabel func_8003B4BC
/* 03C0BC 8003B4BC 44852000 */  mtc1  $a1, $f4
/* 03C0C0 8003B4C0 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 03C0C4 8003B4C4 3C0F8000 */  lui   $t7, %hi(osTvType) # $t7, 0x8000
/* 03C0C8 8003B4C8 46802020 */  cvt.s.w $f0, $f4
/* 03C0CC 8003B4CC 8DEF0300 */  lw    $t7, %lo(osTvType)($t7)
/* 03C0D0 8003B4D0 AFB10020 */  sw    $s1, 0x20($sp)
/* 03C0D4 8003B4D4 00808825 */  move  $s1, $a0
/* 03C0D8 8003B4D8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 03C0DC 8003B4DC AFB0001C */  sw    $s0, 0x1c($sp)
/* 03C0E0 8003B4E0 AFA50054 */  sw    $a1, 0x54($sp)
/* 03C0E4 8003B4E4 15E00007 */  bnez  $t7, .L8003B504
/* 03C0E8 8003B4E8 46000086 */   mov.s $f2, $f0
/* 03C0EC 8003B4EC 3C01800E */  lui   $at, %hi(D_800E6164) # $at, 0x800e
/* 03C0F0 8003B4F0 C4296160 */  lwc1  $f9, %lo(D_800E6160)($at)
/* 03C0F4 8003B4F4 C4286164 */  lwc1  $f8, %lo(D_800E6164)($at)
/* 03C0F8 8003B4F8 460001A1 */  cvt.d.s $f6, $f0
/* 03C0FC 8003B4FC 46283282 */  mul.d $f10, $f6, $f8
/* 03C100 8003B500 462050A0 */  cvt.s.d $f2, $f10
.L8003B504:
/* 03C104 8003B504 3C18A000 */  lui   $t8, %hi(D_A0000284) # $t8, 0xa000
/* 03C108 8003B508 8F190284 */  lw    $t9, %lo(D_A0000284)($t8)
/* 03C10C 8003B50C 3C01240B */  lui   $at, (0x240B17D7 >> 16) # lui $at, 0x240b
/* 03C110 8003B510 342117D7 */  ori   $at, (0x240B17D7 & 0xFFFF) # ori $at, $at, 0x17d7
/* 03C114 8003B514 13210002 */  beq   $t9, $at, .L8003B520
/* 03C118 8003B518 00008025 */   move  $s0, $zero
/* 03C11C 8003B51C 24100001 */  li    $s0, 1
.L8003B520:
/* 03C120 8003B520 0C01BAA4 */  jal   get_settings
/* 03C124 8003B524 E7A2002C */   swc1  $f2, 0x2c($sp)
/* 03C128 8003B528 904B0049 */  lbu   $t3, 0x49($v0)
/* 03C12C 8003B52C 8E23003C */  lw    $v1, 0x3c($s1)
/* 03C130 8003B530 8C4A0004 */  lw    $t2, 4($v0)
/* 03C134 8003B534 000B6080 */  sll   $t4, $t3, 2
/* 03C138 8003B538 80680008 */  lb    $t0, 8($v1)
/* 03C13C 8003B53C 014C6821 */  addu  $t5, $t2, $t4
/* 03C140 8003B540 8DAE0000 */  lw    $t6, ($t5)
/* 03C144 8003B544 3C090001 */  lui   $t1, 1
/* 03C148 8003B548 01092804 */  sllv  $a1, $t1, $t0
/* 03C14C 8003B54C 01C57824 */  and   $t7, $t6, $a1
/* 03C150 8003B550 11E00013 */  beqz  $t7, .L8003B5A0
/* 03C154 8003B554 00000000 */   nop   
/* 03C158 8003B558 8E38007C */  lw    $t8, 0x7c($s1)
/* 03C15C 8003B55C 24190002 */  li    $t9, 2
/* 03C160 8003B560 1B00000B */  blez  $t8, .L8003B590
/* 03C164 8003B564 00000000 */   nop   
/* 03C168 8003B568 AE390074 */  sw    $t9, 0x74($s1)
/* 03C16C 8003B56C 8FA50054 */  lw    $a1, 0x54($sp)
/* 03C170 8003B570 0C02BF0F */  jal   func_800AFC3C
/* 03C174 8003B574 02202025 */   move  $a0, $s1
/* 03C178 8003B578 8E29007C */  lw    $t1, 0x7c($s1)
/* 03C17C 8003B57C 8FA80054 */  lw    $t0, 0x54($sp)
/* 03C180 8003B580 00000000 */  nop   
/* 03C184 8003B584 01285823 */  subu  $t3, $t1, $t0
/* 03C188 8003B588 1000008B */  b     .L8003B7B8
/* 03C18C 8003B58C AE2B007C */   sw    $t3, 0x7c($s1)
.L8003B590:
/* 03C190 8003B590 0C003FEE */  jal   func_8000FFB8
/* 03C194 8003B594 02202025 */   move  $a0, $s1
/* 03C198 8003B598 10000088 */  b     .L8003B7BC
/* 03C19C 8003B59C 8FBF0024 */   lw    $ra, 0x24($sp)
.L8003B5A0:
/* 03C1A0 8003B5A0 862A0006 */  lh    $t2, 6($s1)
/* 03C1A4 8003B5A4 8E2D0078 */  lw    $t5, 0x78($s1)
/* 03C1A8 8003B5A8 354C4000 */  ori   $t4, $t2, 0x4000
/* 03C1AC 8003B5AC 15A00082 */  bnez  $t5, .L8003B7B8
/* 03C1B0 8003B5B0 A62C0006 */   sh    $t4, 6($s1)
/* 03C1B4 8003B5B4 862E0006 */  lh    $t6, 6($s1)
/* 03C1B8 8003B5B8 92240039 */  lbu   $a0, 0x39($s1)
/* 03C1BC 8003B5BC 31CFBFFF */  andi  $t7, $t6, 0xbfff
/* 03C1C0 8003B5C0 A62F0006 */  sh    $t7, 6($s1)
/* 03C1C4 8003B5C4 8FA30054 */  lw    $v1, 0x54($sp)
/* 03C1C8 8003B5C8 241900FF */  li    $t9, 255
/* 03C1CC 8003B5CC 0003C040 */  sll   $t8, $v1, 1
/* 03C1D0 8003B5D0 03384823 */  subu  $t1, $t9, $t8
/* 03C1D4 8003B5D4 0089082A */  slt   $at, $a0, $t1
/* 03C1D8 8003B5D8 10200004 */  beqz  $at, .L8003B5EC
/* 03C1DC 8003B5DC 240B00FF */   li    $t3, 255
/* 03C1E0 8003B5E0 00984021 */  addu  $t0, $a0, $t8
/* 03C1E4 8003B5E4 10000002 */  b     .L8003B5F0
/* 03C1E8 8003B5E8 A2280039 */   sb    $t0, 0x39($s1)
.L8003B5EC:
/* 03C1EC 8003B5EC A22B0039 */  sb    $t3, 0x39($s1)
.L8003B5F0:
/* 03C1F0 8003B5F0 8E24004C */  lw    $a0, 0x4c($s1)
/* 03C1F4 8003B5F4 00000000 */  nop   
/* 03C1F8 8003B5F8 908A0013 */  lbu   $t2, 0x13($a0)
/* 03C1FC 8003B5FC 00000000 */  nop   
/* 03C200 8003B600 2941002D */  slti  $at, $t2, 0x2d
/* 03C204 8003B604 1020003C */  beqz  $at, .L8003B6F8
/* 03C208 8003B608 00000000 */   nop   
/* 03C20C 8003B60C 1600003A */  bnez  $s0, .L8003B6F8
/* 03C210 8003B610 00000000 */   nop   
/* 03C214 8003B614 8C830000 */  lw    $v1, ($a0)
/* 03C218 8003B618 00000000 */  nop   
/* 03C21C 8003B61C 10600036 */  beqz  $v1, .L8003B6F8
/* 03C220 8003B620 00000000 */   nop   
/* 03C224 8003B624 8C6C0040 */  lw    $t4, 0x40($v1)
/* 03C228 8003B628 24060001 */  li    $a2, 1
/* 03C22C 8003B62C 818D0054 */  lb    $t5, 0x54($t4)
/* 03C230 8003B630 00000000 */  nop   
/* 03C234 8003B634 14CD0030 */  bne   $a2, $t5, .L8003B6F8
/* 03C238 8003B638 00000000 */   nop   
/* 03C23C 8003B63C 8C640064 */  lw    $a0, 0x64($v1)
/* 03C240 8003B640 00000000 */  nop   
/* 03C244 8003B644 848E0000 */  lh    $t6, ($a0)
/* 03C248 8003B648 00000000 */  nop   
/* 03C24C 8003B64C 15C0002A */  bnez  $t6, .L8003B6F8
/* 03C250 8003B650 00000000 */   nop   
/* 03C254 8003B654 90580048 */  lbu   $t8, 0x48($v0)
/* 03C258 8003B658 8C4F0000 */  lw    $t7, ($v0)
/* 03C25C 8003B65C 0018C840 */  sll   $t9, $t8, 1
/* 03C260 8003B660 01F91821 */  addu  $v1, $t7, $t9
/* 03C264 8003B664 84690000 */  lh    $t1, ($v1)
/* 03C268 8003B668 00000000 */  nop   
/* 03C26C 8003B66C 25280001 */  addiu $t0, $t1, 1
/* 03C270 8003B670 A4680000 */  sh    $t0, ($v1)
/* 03C274 8003B674 904B0048 */  lbu   $t3, 0x48($v0)
/* 03C278 8003B678 00000000 */  nop   
/* 03C27C 8003B67C 11600007 */  beqz  $t3, .L8003B69C
/* 03C280 8003B680 00000000 */   nop   
/* 03C284 8003B684 8C430000 */  lw    $v1, ($v0)
/* 03C288 8003B688 00000000 */  nop   
/* 03C28C 8003B68C 846A0000 */  lh    $t2, ($v1)
/* 03C290 8003B690 00000000 */  nop   
/* 03C294 8003B694 254C0001 */  addiu $t4, $t2, 1
/* 03C298 8003B698 A46C0000 */  sh    $t4, ($v1)
.L8003B69C:
/* 03C29C 8003B69C 904E0049 */  lbu   $t6, 0x49($v0)
/* 03C2A0 8003B6A0 8C4D0004 */  lw    $t5, 4($v0)
/* 03C2A4 8003B6A4 000EC080 */  sll   $t8, $t6, 2
/* 03C2A8 8003B6A8 01B81821 */  addu  $v1, $t5, $t8
/* 03C2AC 8003B6AC 8C6F0000 */  lw    $t7, ($v1)
/* 03C2B0 8003B6B0 2404023D */  li    $a0, 573
/* 03C2B4 8003B6B4 01E5C825 */  or    $t9, $t7, $a1
/* 03C2B8 8003B6B8 AC790000 */  sw    $t9, ($v1)
/* 03C2BC 8003B6BC 8E270014 */  lw    $a3, 0x14($s1)
/* 03C2C0 8003B6C0 8E260010 */  lw    $a2, 0x10($s1)
/* 03C2C4 8003B6C4 8E25000C */  lw    $a1, 0xc($s1)
/* 03C2C8 8003B6C8 0C0007AA */  jal   func_80001EA8
/* 03C2CC 8003B6CC AFA00010 */   sw    $zero, 0x10($sp)
/* 03C2D0 8003B6D0 862B0006 */  lh    $t3, 6($s1)
/* 03C2D4 8003B6D4 24090010 */  li    $t1, 16
/* 03C2D8 8003B6D8 24080002 */  li    $t0, 2
/* 03C2DC 8003B6DC 356A4000 */  ori   $t2, $t3, 0x4000
/* 03C2E0 8003B6E0 AE29007C */  sw    $t1, 0x7c($s1)
/* 03C2E4 8003B6E4 AE280074 */  sw    $t0, 0x74($s1)
/* 03C2E8 8003B6E8 A62A0006 */  sh    $t2, 6($s1)
/* 03C2EC 8003B6EC 8FA50054 */  lw    $a1, 0x54($sp)
/* 03C2F0 8003B6F0 0C02BF0F */  jal   func_800AFC3C
/* 03C2F4 8003B6F4 02202025 */   move  $a0, $s1
.L8003B6F8:
/* 03C2F8 8003B6F8 44801000 */  mtc1  $zero, $f2
/* 03C2FC 8003B6FC 8E300064 */  lw    $s0, 0x64($s1)
/* 03C300 8003B700 A220003B */  sb    $zero, 0x3b($s1)
/* 03C304 8003B704 E6020014 */  swc1  $f2, 0x14($s0)
/* 03C308 8003B708 922C0039 */  lbu   $t4, 0x39($s1)
/* 03C30C 8003B70C 02202825 */  move  $a1, $s1
/* 03C310 8003B710 298100FF */  slti  $at, $t4, 0xff
/* 03C314 8003B714 10200003 */  beqz  $at, .L8003B724
/* 03C318 8003B718 02002025 */   move  $a0, $s0
/* 03C31C 8003B71C 10000004 */  b     .L8003B730
/* 03C320 8003B720 46001006 */   mov.s $f0, $f2
.L8003B724:
/* 03C324 8003B724 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 03C328 8003B728 44810000 */  mtc1  $at, $f0
/* 03C32C 8003B72C 00000000 */  nop   
.L8003B730:
/* 03C330 8003B730 920E000D */  lbu   $t6, 0xd($s0)
/* 03C334 8003B734 240100FF */  li    $at, 255
/* 03C338 8003B738 15C1001C */  bne   $t6, $at, .L8003B7AC
/* 03C33C 8003B73C 8FA6002C */   lw    $a2, 0x2c($sp)
/* 03C340 8003B740 C62C000C */  lwc1  $f12, 0xc($s1)
/* 03C344 8003B744 C62E0010 */  lwc1  $f14, 0x10($s1)
/* 03C348 8003B748 8E260014 */  lw    $a2, 0x14($s1)
/* 03C34C 8003B74C 0C007149 */  jal   func_8001C524
/* 03C350 8003B750 00003825 */   move  $a3, $zero
/* 03C354 8003B754 304400FF */  andi  $a0, $v0, 0xff
/* 03C358 8003B758 240100FF */  li    $at, 255
/* 03C35C 8003B75C 10810016 */  beq   $a0, $at, .L8003B7B8
/* 03C360 8003B760 A202000D */   sb    $v0, 0xd($s0)
/* 03C364 8003B764 2405FFFF */  li    $a1, -1
/* 03C368 8003B768 0C007312 */  jal   func_8001CC48
/* 03C36C 8003B76C 00003025 */   move  $a2, $zero
/* 03C370 8003B770 9205000D */  lbu   $a1, 0xd($s0)
/* 03C374 8003B774 A202000E */  sb    $v0, 0xe($s0)
/* 03C378 8003B778 304400FF */  andi  $a0, $v0, 0xff
/* 03C37C 8003B77C 0C007312 */  jal   func_8001CC48
/* 03C380 8003B780 00003025 */   move  $a2, $zero
/* 03C384 8003B784 9205000E */  lbu   $a1, 0xe($s0)
/* 03C388 8003B788 A202000F */  sb    $v0, 0xf($s0)
/* 03C38C 8003B78C 304400FF */  andi  $a0, $v0, 0xff
/* 03C390 8003B790 0C007312 */  jal   func_8001CC48
/* 03C394 8003B794 00003025 */   move  $a2, $zero
/* 03C398 8003B798 920D000D */  lbu   $t5, 0xd($s0)
/* 03C39C 8003B79C A2020010 */  sb    $v0, 0x10($s0)
/* 03C3A0 8003B7A0 10000005 */  b     .L8003B7B8
/* 03C3A4 8003B7A4 A20D000C */   sb    $t5, 0xc($s0)
/* 03C3A8 8003B7A8 8FA6002C */  lw    $a2, 0x2c($sp)
.L8003B7AC:
/* 03C3AC 8003B7AC 44070000 */  mfc1  $a3, $f0
/* 03C3B0 8003B7B0 0C0071B1 */  jal   func_8001C6C4
/* 03C3B4 8003B7B4 AFA00010 */   sw    $zero, 0x10($sp)
.L8003B7B8:
/* 03C3B8 8003B7B8 8FBF0024 */  lw    $ra, 0x24($sp)
.L8003B7BC:
/* 03C3BC 8003B7BC 8FB0001C */  lw    $s0, 0x1c($sp)
/* 03C3C0 8003B7C0 8FB10020 */  lw    $s1, 0x20($sp)
/* 03C3C4 8003B7C4 03E00008 */  jr    $ra
/* 03C3C8 8003B7C8 27BD0050 */   addiu $sp, $sp, 0x50

