glabel func_80011264
/* 011E64 80011264 848E0050 */  lh    $t6, 0x50($a0)
/* 011E68 80011268 00000000 */  nop   
/* 011E6C 8001126C 19C0003B */  blez  $t6, .L8001135C
/* 011E70 80011270 00000000 */   nop   
/* 011E74 80011274 8CA20064 */  lw    $v0, 0x64($a1)
/* 011E78 80011278 240A000A */  li    $t2, 10
/* 011E7C 8001127C 90430010 */  lbu   $v1, 0x10($v0)
/* 011E80 80011280 8C880038 */  lw    $t0, 0x38($a0)
/* 011E84 80011284 006A001A */  div   $zero, $v1, $t2
/* 011E88 80011288 15400002 */  bnez  $t2, .L80011294
/* 011E8C 8001128C 00000000 */   nop   
/* 011E90 80011290 0007000D */  break 7
.L80011294:
/* 011E94 80011294 2401FFFF */  li    $at, -1
/* 011E98 80011298 15410004 */  bne   $t2, $at, .L800112AC
/* 011E9C 8001129C 3C018000 */   lui   $at, 0x8000
/* 011EA0 800112A0 14610002 */  bne   $v1, $at, .L800112AC
/* 011EA4 800112A4 00000000 */   nop   
/* 011EA8 800112A8 0006000D */  break 6
.L800112AC:
/* 011EAC 800112AC 84890028 */  lh    $t1, 0x28($a0)
/* 011EB0 800112B0 00003825 */  move  $a3, $zero
/* 011EB4 800112B4 3C0A0001 */  lui   $t2, 1
/* 011EB8 800112B8 240B00FF */  li    $t3, 255
/* 011EBC 800112BC 01001025 */  move  $v0, $t0
/* 011EC0 800112C0 00003012 */  mflo  $a2
/* 011EC4 800112C4 24C6FFFF */  addiu $a2, $a2, -1
/* 011EC8 800112C8 00001810 */  mfhi  $v1
/* 011ECC 800112CC 00067880 */  sll   $t7, $a2, 2
/* 011ED0 800112D0 0003C080 */  sll   $t8, $v1, 2
/* 011ED4 800112D4 01E03025 */  move  $a2, $t7
/* 011ED8 800112D8 19200020 */  blez  $t1, .L8001135C
/* 011EDC 800112DC 03001825 */   move  $v1, $t8
.L800112E0:
/* 011EE0 800112E0 8C590008 */  lw    $t9, 8($v0)
/* 011EE4 800112E4 24E70001 */  addiu $a3, $a3, 1
/* 011EE8 800112E8 032A6024 */  and   $t4, $t9, $t2
/* 011EEC 800112EC 11800019 */  beqz  $t4, .L80011354
/* 011EF0 800112F0 00E9082A */   slt   $at, $a3, $t1
/* 011EF4 800112F4 90450000 */  lbu   $a1, ($v0)
/* 011EF8 800112F8 00000000 */  nop   
/* 011EFC 800112FC 11650015 */  beq   $t3, $a1, .L80011354
/* 011F00 80011300 00E9082A */   slt   $at, $a3, $t1
/* 011F04 80011304 8C8D0000 */  lw    $t5, ($a0)
/* 011F08 80011308 000570C0 */  sll   $t6, $a1, 3
/* 011F0C 8001130C 01AE7821 */  addu  $t7, $t5, $t6
/* 011F10 80011310 8DE80000 */  lw    $t0, ($t7)
/* 011F14 80011314 00000000 */  nop   
/* 011F18 80011318 95180012 */  lhu   $t8, 0x12($t0)
/* 011F1C 8001131C 00000000 */  nop   
/* 011F20 80011320 2B010901 */  slti  $at, $t8, 0x901
/* 011F24 80011324 14200005 */  bnez  $at, .L8001133C
/* 011F28 80011328 00000000 */   nop   
/* 011F2C 8001132C A0430007 */  sb    $v1, 7($v0)
/* 011F30 80011330 84890028 */  lh    $t1, 0x28($a0)
/* 011F34 80011334 10000007 */  b     .L80011354
/* 011F38 80011338 00E9082A */   slt   $at, $a3, $t1
.L8001133C:
/* 011F3C 8001133C 04C00005 */  bltz  $a2, .L80011354
/* 011F40 80011340 00E9082A */   slt   $at, $a3, $t1
/* 011F44 80011344 A0460007 */  sb    $a2, 7($v0)
/* 011F48 80011348 84890028 */  lh    $t1, 0x28($a0)
/* 011F4C 8001134C 00000000 */  nop   
/* 011F50 80011350 00E9082A */  slt   $at, $a3, $t1
.L80011354:
/* 011F54 80011354 1420FFE2 */  bnez  $at, .L800112E0
/* 011F58 80011358 2442000C */   addiu $v0, $v0, 0xc
.L8001135C:
/* 011F5C 8001135C 03E00008 */  jr    $ra
/* 011F60 80011360 00000000 */   nop   

/* 011F64 80011364 03E00008 */  jr    $ra
/* 011F68 80011368 AFA40000 */   sw    $a0, ($sp)

/* 011F6C 8001136C 3C0E8012 */  lui   $t6, %hi(D_8011ADAC) # $t6, 0x8012
/* 011F70 80011370 8DCEADAC */  lw    $t6, %lo(D_8011ADAC)($t6)
/* 011F74 80011374 24020001 */  li    $v0, 1
/* 011F78 80011378 11C00003 */  beqz  $t6, .L80011388
/* 011F7C 8001137C 00000000 */   nop   
/* 011F80 80011380 03E00008 */  jr    $ra
/* 011F84 80011384 00001025 */   move  $v0, $zero

.L80011388:
/* 011F88 80011388 03E00008 */  jr    $ra
/* 011F8C 8001138C 00000000 */   nop   
