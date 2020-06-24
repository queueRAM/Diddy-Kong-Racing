.include "globals.inc"
.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # dont insert nops after branches
.set gp=64     # 64-bit instructions are used

glabel func_800CD250
/* 0CDE50 800CD250 3C0EA410 */  lui   $t6, 0xa410
/* 0CDE54 800CD254 03E00008 */  jr    $ra
/* 0CDE58 800CD258 ADC4000C */   sw    $a0, 0xc($t6)

/* 0CDE5C 800CD25C 00000000 */  nop   
