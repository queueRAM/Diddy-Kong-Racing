glabel func_8006EB14
/* 06F714 8006EB14 3C028012 */  lui   $v0, %hi(D_801234F4) # $v0, 0x8012
/* 06F718 8006EB18 8C4234F4 */  lw    $v0, %lo(D_801234F4)($v0)
/* 06F71C 8006EB1C 03E00008 */  jr    $ra
/* 06F720 8006EB20 00000000 */   nop   

/* 06F724 8006EB24 3C02800E */  lui   $v0, %hi(D_800DD37C) # $v0, 0x800e
/* 06F728 8006EB28 2442D37C */  addiu $v0, %lo(D_800DD37C) # addiu $v0, $v0, -0x2c84
/* 06F72C 8006EB2C 8C4E0000 */  lw    $t6, ($v0)
/* 06F730 8006EB30 00000000 */  nop   
/* 06F734 8006EB34 35CF0001 */  ori   $t7, $t6, 1
/* 06F738 8006EB38 03E00008 */  jr    $ra
/* 06F73C 8006EB3C AC4F0000 */   sw    $t7, ($v0)

/* 06F740 8006EB40 3C02800E */  lui   $v0, %hi(D_800DD37C) # $v0, 0x800e
/* 06F744 8006EB44 2442D37C */  addiu $v0, %lo(D_800DD37C) # addiu $v0, $v0, -0x2c84
/* 06F748 8006EB48 8C4E0000 */  lw    $t6, ($v0)
/* 06F74C 8006EB4C 00000000 */  nop   
/* 06F750 8006EB50 35CF0002 */  ori   $t7, $t6, 2
/* 06F754 8006EB54 03E00008 */  jr    $ra
/* 06F758 8006EB58 AC4F0000 */   sw    $t7, ($v0)
