glabel func_8003D534
/* 03E134 8003D534 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03E138 8003D538 AFBF0014 */  sw    $ra, 0x14($sp)
/* 03E13C 8003D53C AFA5001C */  sw    $a1, 0x1c($sp)
/* 03E140 8003D540 8C8F004C */  lw    $t7, 0x4c($a0)
/* 03E144 8003D544 240E0002 */  li    $t6, 2
/* 03E148 8003D548 A5EE0014 */  sh    $t6, 0x14($t7)
/* 03E14C 8003D54C 8C98004C */  lw    $t8, 0x4c($a0)
/* 03E150 8003D550 2419001E */  li    $t9, 30
/* 03E154 8003D554 A3000011 */  sb    $zero, 0x11($t8)
/* 03E158 8003D558 8C88004C */  lw    $t0, 0x4c($a0)
/* 03E15C 8003D55C 24090014 */  li    $t1, 20
/* 03E160 8003D560 A1190010 */  sb    $t9, 0x10($t0)
/* 03E164 8003D564 240A0010 */  li    $t2, 16
/* 03E168 8003D568 A489007C */  sh    $t1, 0x7c($a0)
/* 03E16C 8003D56C A48A007E */  sh    $t2, 0x7e($a0)
/* 03E170 8003D570 0C0270C3 */  jal   func_8009C30C
/* 03E174 8003D574 AFA40018 */   sw    $a0, 0x18($sp)
/* 03E178 8003D578 8FA40018 */  lw    $a0, 0x18($sp)
/* 03E17C 8003D57C 304B1000 */  andi  $t3, $v0, 0x1000
/* 03E180 8003D580 11600004 */  beqz  $t3, .L8003D594
/* 03E184 8003D584 8FBF0014 */   lw    $ra, 0x14($sp)
/* 03E188 8003D588 0C003FEE */  jal   func_8000FFB8
/* 03E18C 8003D58C 00000000 */   nop   
/* 03E190 8003D590 8FBF0014 */  lw    $ra, 0x14($sp)
.L8003D594:
/* 03E194 8003D594 27BD0018 */  addiu $sp, $sp, 0x18
/* 03E198 8003D598 03E00008 */  jr    $ra
/* 03E19C 8003D59C 00000000 */   nop   
