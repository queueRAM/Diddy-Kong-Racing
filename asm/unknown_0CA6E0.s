.include "globals.inc"
.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # dont insert nops after branches
.set gp=64     # 64-bit instructions are used

glabel func_800C9AE0
/* 0CA6E0 800C9AE0 AFA40000 */  sw    $a0, ($sp)
/* 0CA6E4 800C9AE4 AFA60008 */  sw    $a2, 8($sp)
/* 0CA6E8 800C9AE8 03E00008 */  jr    $ra
/* 0CA6EC 800C9AEC A4A60016 */   sh    $a2, 0x16($a1)

/* 0CA6F0 800C9AF0 00000000 */  nop   
/* 0CA6F4 800C9AF4 00000000 */  nop   
/* 0CA6F8 800C9AF8 00000000 */  nop   
/* 0CA6FC 800C9AFC 00000000 */  nop   
/* 0CA700 800C9B00 00000000 */  nop   
/* 0CA704 800C9B04 00000000 */  nop   
/* 0CA708 800C9B08 00000000 */  nop   
/* 0CA70C 800C9B0C 00000000 */  nop   
/* 0CA710 800C9B10 00000000 */  nop   
/* 0CA714 800C9B14 00000000 */  nop   
/* 0CA718 800C9B18 00000000 */  nop   
/* 0CA71C 800C9B1C 00000000 */  nop   
/* 0CA720 800C9B20 00000000 */  nop   
/* 0CA724 800C9B24 00000000 */  nop   
/* 0CA728 800C9B28 00000000 */  nop   
/* 0CA72C 800C9B2C 00000000 */  nop   
