.include "globals.inc"
.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # dont insert nops after branches
.set gp=64     # 64-bit instructions are used

glabel func_800C77F0
/* 0C83F0 800C77F0 8FAE0010 */  lw    $t6, 0x10($sp)
/* 0C83F4 800C77F4 AFA40000 */  sw    $a0, ($sp)
/* 0C83F8 800C77F8 AFA50004 */  sw    $a1, 4($sp)
/* 0C83FC 800C77FC 00EE0019 */  multu $a3, $t6
/* 0C8400 800C7800 8CD90008 */  lw    $t9, 8($a2)
/* 0C8404 800C7804 8CD80000 */  lw    $t8, ($a2)
/* 0C8408 800C7808 8CC40004 */  lw    $a0, 4($a2)
/* 0C840C 800C780C 2401FFF0 */  li    $at, -16
/* 0C8410 800C7810 03194021 */  addu  $t0, $t8, $t9
/* 0C8414 800C7814 00001825 */  move  $v1, $zero
/* 0C8418 800C7818 00001012 */  mflo  $v0
/* 0C841C 800C781C 2442000F */  addiu $v0, $v0, 0xf
/* 0C8420 800C7820 00417824 */  and   $t7, $v0, $at
/* 0C8424 800C7824 008F4821 */  addu  $t1, $a0, $t7
/* 0C8428 800C7828 0109082B */  sltu  $at, $t0, $t1
/* 0C842C 800C782C 14200003 */  bnez  $at, .L800C783C
/* 0C8430 800C7830 008F5021 */   addu  $t2, $a0, $t7
/* 0C8434 800C7834 00801825 */  move  $v1, $a0
/* 0C8438 800C7838 ACCA0004 */  sw    $t2, 4($a2)
.L800C783C:
/* 0C843C 800C783C 03E00008 */  jr    $ra
/* 0C8440 800C7840 00601025 */   move  $v0, $v1

/* 0C8444 800C7844 00000000 */  nop   
/* 0C8448 800C7848 00000000 */  nop   
/* 0C844C 800C784C 00000000 */  nop   
