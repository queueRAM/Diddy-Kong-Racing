glabel func_8007698C
/* 07758C 8007698C 90820000 */  lbu   $v0, ($a0)
/* 077590 80076990 00A01825 */  move  $v1, $a1
/* 077594 80076994 10400014 */  beqz  $v0, .L800769E8
/* 077598 80076998 00000000 */   nop   
/* 07759C 8007699C 10C00012 */  beqz  $a2, .L800769E8
/* 0775A0 800769A0 2408002D */   li    $t0, 45
/* 0775A4 800769A4 3C07800E */  lui   $a3, %hi(D_800DE444) # $a3, 0x800e
/* 0775A8 800769A8 24E7E444 */  addiu $a3, %lo(D_800DE444) # addiu $a3, $a3, -0x1bbc
/* 0775AC 800769AC 28410042 */  slti  $at, $v0, 0x42
.L800769B0:
/* 0775B0 800769B0 10200005 */  beqz  $at, .L800769C8
/* 0775B4 800769B4 00E27021 */   addu  $t6, $a3, $v0
/* 0775B8 800769B8 91CF0000 */  lbu   $t7, ($t6)
/* 0775BC 800769BC 24A50001 */  addiu $a1, $a1, 1
/* 0775C0 800769C0 10000003 */  b     .L800769D0
/* 0775C4 800769C4 A0AFFFFF */   sb    $t7, -1($a1)
.L800769C8:
/* 0775C8 800769C8 A0A80000 */  sb    $t0, ($a1)
/* 0775CC 800769CC 24A50001 */  addiu $a1, $a1, 1
.L800769D0:
/* 0775D0 800769D0 90820001 */  lbu   $v0, 1($a0)
/* 0775D4 800769D4 24840001 */  addiu $a0, $a0, 1
/* 0775D8 800769D8 10400003 */  beqz  $v0, .L800769E8
/* 0775DC 800769DC 24C6FFFF */   addiu $a2, $a2, -1
/* 0775E0 800769E0 14C0FFF3 */  bnez  $a2, .L800769B0
/* 0775E4 800769E4 28410042 */   slti  $at, $v0, 0x42
.L800769E8:
/* 0775E8 800769E8 10C00010 */  beqz  $a2, .L80076A2C
/* 0775EC 800769EC 30C40003 */   andi  $a0, $a2, 3
/* 0775F0 800769F0 00042023 */  negu  $a0, $a0
/* 0775F4 800769F4 10800006 */  beqz  $a0, .L80076A10
/* 0775F8 800769F8 00861021 */   addu  $v0, $a0, $a2
.L800769FC:
/* 0775FC 800769FC 24C6FFFF */  addiu $a2, $a2, -1
/* 077600 80076A00 A0A00000 */  sb    $zero, ($a1)
/* 077604 80076A04 1446FFFD */  bne   $v0, $a2, .L800769FC
/* 077608 80076A08 24A50001 */   addiu $a1, $a1, 1
/* 07760C 80076A0C 10C00007 */  beqz  $a2, .L80076A2C
.L80076A10:
/* 077610 80076A10 24C6FFFC */   addiu $a2, $a2, -4
/* 077614 80076A14 A0A00000 */  sb    $zero, ($a1)
/* 077618 80076A18 A0A00001 */  sb    $zero, 1($a1)
/* 07761C 80076A1C A0A00002 */  sb    $zero, 2($a1)
/* 077620 80076A20 A0A00003 */  sb    $zero, 3($a1)
/* 077624 80076A24 14C0FFFA */  bnez  $a2, .L80076A10
/* 077628 80076A28 24A50004 */   addiu $a1, $a1, 4
.L80076A2C:
/* 07762C 80076A2C A0A00000 */  sb    $zero, ($a1)
/* 077630 80076A30 03E00008 */  jr    $ra
/* 077634 80076A34 00601025 */   move  $v0, $v1
