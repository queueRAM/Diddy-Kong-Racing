glabel func_8006EC18
/* 06F818 8006EC18 3C02800E */  lui   $v0, %hi(D_800DD37C) # $v0, 0x800e
/* 06F81C 8006EC1C 2442D37C */  addiu $v0, %lo(D_800DD37C) # addiu $v0, $v0, -0x2c84
/* 06F820 8006EC20 8C4E0000 */  lw    $t6, ($v0)
/* 06F824 8006EC24 2401F3FF */  li    $at, -3073
/* 06F828 8006EC28 30880003 */  andi  $t0, $a0, 3
/* 06F82C 8006EC2C 01C17824 */  and   $t7, $t6, $at
/* 06F830 8006EC30 35F90040 */  ori   $t9, $t7, 0x40
/* 06F834 8006EC34 00084A80 */  sll   $t1, $t0, 0xa
/* 06F838 8006EC38 AC4F0000 */  sw    $t7, ($v0)
/* 06F83C 8006EC3C 03295025 */  or    $t2, $t9, $t1
/* 06F840 8006EC40 03E00008 */  jr    $ra
/* 06F844 8006EC44 AC4A0000 */   sw    $t2, ($v0)
