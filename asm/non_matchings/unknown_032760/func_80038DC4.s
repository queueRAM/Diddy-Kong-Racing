glabel func_80038DC4
/* 0399C4 80038DC4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0399C8 80038DC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0399CC 80038DCC AFA5001C */  sw    $a1, 0x1c($sp)
/* 0399D0 80038DD0 8C8E0078 */  lw    $t6, 0x78($a0)
/* 0399D4 80038DD4 00803025 */  move  $a2, $a0
/* 0399D8 80038DD8 11C00015 */  beqz  $t6, .L80038E30
/* 0399DC 80038DDC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0399E0 80038DE0 8C8F004C */  lw    $t7, 0x4c($a0)
/* 0399E4 80038DE4 8C82003C */  lw    $v0, 0x3c($a0)
/* 0399E8 80038DE8 91F80013 */  lbu   $t8, 0x13($t7)
/* 0399EC 80038DEC 00000000 */  nop   
/* 0399F0 80038DF0 2B010078 */  slti  $at, $t8, 0x78
/* 0399F4 80038DF4 1020000E */  beqz  $at, .L80038E30
/* 0399F8 80038DF8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0399FC 80038DFC 80440008 */  lb    $a0, 8($v0)
/* 039A00 80038E00 0C01BCCE */  jal   func_8006F338
/* 039A04 80038E04 AFA60018 */   sw    $a2, 0x18($sp)
/* 039A08 80038E08 8FA60018 */  lw    $a2, 0x18($sp)
/* 039A0C 80038E0C 24040030 */  li    $a0, 48
/* 039A10 80038E10 00002825 */  move  $a1, $zero
/* 039A14 80038E14 0C000741 */  jal   func_80001D04
/* 039A18 80038E18 ACC00078 */   sw    $zero, 0x78($a2)
/* 039A1C 80038E1C 2404012A */  li    $a0, 298
/* 039A20 80038E20 00002825 */  move  $a1, $zero
/* 039A24 80038E24 0C0003F7 */  jal   func_80000FDC
/* 039A28 80038E28 3C063F80 */   lui   $a2, 0x3f80
/* 039A2C 80038E2C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80038E30:
/* 039A30 80038E30 27BD0018 */  addiu $sp, $sp, 0x18
/* 039A34 80038E34 03E00008 */  jr    $ra
/* 039A38 80038E38 00000000 */   nop   
