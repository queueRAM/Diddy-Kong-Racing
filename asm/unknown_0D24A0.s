.include "globals.inc"
.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # dont insert nops after branches
.set gp=64     # 64-bit instructions are used

glabel func_800D18A0
/* 0D24A0 800D18A0 3C088000 */  lui   $t0, %hi(D_80000010) # $t0, 0x8000
/* 0D24A4 800D18A4 240A2000 */  li    $t2, 8192
/* 0D24A8 800D18A8 010A4821 */  addu  $t1, $t0, $t2
/* 0D24AC 800D18AC 2529FFF0 */  addiu $t1, $t1, -0x10
.L800D18B0:
/* 0D24B0 800D18B0 BD010000 */  cache 1, ($t0)
/* 0D24B4 800D18B4 0109082B */  sltu  $at, $t0, $t1
/* 0D24B8 800D18B8 1420FFFD */  bnez  $at, .L800D18B0
/* 0D24BC 800D18BC 25080010 */   addiu $t0, %lo(D_80000010) # addiu $t0, $t0, 0x10
/* 0D24C0 800D18C0 03E00008 */  jr    $ra
/* 0D24C4 800D18C4 00000000 */   nop   

/* 0D24C8 800D18C8 00000000 */  nop   
/* 0D24CC 800D18CC 00000000 */  nop   
