.include "globals.inc"
.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # dont insert nops after branches
.set gp=64     # 64-bit instructions are used

glabel func_800C8F80
/* 0C9B80 800C8F80 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0C9B84 800C8F84 3C0E800E */  lui   $t6, %hi(D_800E3740) # $t6, 0x800e
/* 0C9B88 800C8F88 8DCE3740 */  lw    $t6, %lo(D_800E3740)($t6)
/* 0C9B8C 800C8F8C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0C9B90 800C8F90 AFA40028 */  sw    $a0, 0x28($sp)
/* 0C9B94 800C8F94 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0C9B98 800C8F98 AFA60030 */  sw    $a2, 0x30($sp)
/* 0C9B9C 800C8F9C AFA70034 */  sw    $a3, 0x34($sp)
/* 0C9BA0 800C8FA0 AFB10018 */  sw    $s1, 0x18($sp)
/* 0C9BA4 800C8FA4 15C00003 */  bnez  $t6, .L800C8FB4
/* 0C9BA8 800C8FA8 AFB00014 */   sw    $s0, 0x14($sp)
/* 0C9BAC 800C8FAC 10000032 */  b     .L800C9078
/* 0C9BB0 800C8FB0 2402FFFF */   li    $v0, -1
.L800C8FB4:
/* 0C9BB4 800C8FB4 8FAF0030 */  lw    $t7, 0x30($sp)
/* 0C9BB8 800C8FB8 15E00005 */  bnez  $t7, .L800C8FD0
/* 0C9BBC 800C8FBC 00000000 */   nop   
/* 0C9BC0 800C8FC0 8FB90028 */  lw    $t9, 0x28($sp)
/* 0C9BC4 800C8FC4 2418000B */  li    $t8, 11
/* 0C9BC8 800C8FC8 10000004 */  b     .L800C8FDC
/* 0C9BCC 800C8FCC A7380000 */   sh    $t8, ($t9)
.L800C8FD0:
/* 0C9BD0 800C8FD0 8FA90028 */  lw    $t1, 0x28($sp)
/* 0C9BD4 800C8FD4 2408000C */  li    $t0, 12
/* 0C9BD8 800C8FD8 A5280000 */  sh    $t0, ($t1)
.L800C8FDC:
/* 0C9BDC 800C8FDC 8FAA002C */  lw    $t2, 0x2c($sp)
/* 0C9BE0 800C8FE0 8FAB0028 */  lw    $t3, 0x28($sp)
/* 0C9BE4 800C8FE4 24010001 */  li    $at, 1
/* 0C9BE8 800C8FE8 A16A0002 */  sb    $t2, 2($t3)
/* 0C9BEC 800C8FEC 8FAD0028 */  lw    $t5, 0x28($sp)
/* 0C9BF0 800C8FF0 8FAC0040 */  lw    $t4, 0x40($sp)
/* 0C9BF4 800C8FF4 ADAC0004 */  sw    $t4, 4($t5)
/* 0C9BF8 800C8FF8 8FAF0028 */  lw    $t7, 0x28($sp)
/* 0C9BFC 800C8FFC 8FAE0038 */  lw    $t6, 0x38($sp)
/* 0C9C00 800C9000 ADEE0008 */  sw    $t6, 8($t7)
/* 0C9C04 800C9004 8FB90028 */  lw    $t9, 0x28($sp)
/* 0C9C08 800C9008 8FB80034 */  lw    $t8, 0x34($sp)
/* 0C9C0C 800C900C AF38000C */  sw    $t8, 0xc($t9)
/* 0C9C10 800C9010 8FA90028 */  lw    $t1, 0x28($sp)
/* 0C9C14 800C9014 8FA8003C */  lw    $t0, 0x3c($sp)
/* 0C9C18 800C9018 AD280010 */  sw    $t0, 0x10($t1)
/* 0C9C1C 800C901C 8FAA0028 */  lw    $t2, 0x28($sp)
/* 0C9C20 800C9020 AD400014 */  sw    $zero, 0x14($t2)
/* 0C9C24 800C9024 8FAB002C */  lw    $t3, 0x2c($sp)
/* 0C9C28 800C9028 1561000A */  bne   $t3, $at, .L800C9054
/* 0C9C2C 800C902C 00000000 */   nop   
/* 0C9C30 800C9030 0C034DFC */  jal   func_800D37F0
/* 0C9C34 800C9034 00000000 */   nop   
/* 0C9C38 800C9038 00408825 */  move  $s1, $v0
/* 0C9C3C 800C903C 02202025 */  move  $a0, $s1
/* 0C9C40 800C9040 8FA50028 */  lw    $a1, 0x28($sp)
/* 0C9C44 800C9044 0C034DA8 */  jal   func_800D36A0
/* 0C9C48 800C9048 00003025 */   move  $a2, $zero
/* 0C9C4C 800C904C 10000009 */  b     .L800C9074
/* 0C9C50 800C9050 00408025 */   move  $s0, $v0
.L800C9054:
/* 0C9C54 800C9054 0C034DFC */  jal   func_800D37F0
/* 0C9C58 800C9058 00000000 */   nop   
/* 0C9C5C 800C905C 00408825 */  move  $s1, $v0
/* 0C9C60 800C9060 02202025 */  move  $a0, $s1
/* 0C9C64 800C9064 8FA50028 */  lw    $a1, 0x28($sp)
/* 0C9C68 800C9068 0C03238C */  jal   func_800C8E30
/* 0C9C6C 800C906C 00003025 */   move  $a2, $zero
/* 0C9C70 800C9070 00408025 */  move  $s0, $v0
.L800C9074:
/* 0C9C74 800C9074 02001025 */  move  $v0, $s0
.L800C9078:
/* 0C9C78 800C9078 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0C9C7C 800C907C 8FB00014 */  lw    $s0, 0x14($sp)
/* 0C9C80 800C9080 8FB10018 */  lw    $s1, 0x18($sp)
/* 0C9C84 800C9084 03E00008 */  jr    $ra
/* 0C9C88 800C9088 27BD0028 */   addiu $sp, $sp, 0x28

/* 0C9C8C 800C908C 00000000 */  nop   
