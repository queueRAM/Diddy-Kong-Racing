glabel D_8006C330
/* 06CF30 8006C330 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 06CF34 8006C334 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06CF38 8006C338 0C01B0F8 */  jal   func_8006C3E0
/* 06CF3C 8006C33C AFA40018 */   sw    $a0, 0x18($sp)
/* 06CF40 8006C340 3C04800E */  lui   $a0, %hi(D_800DD37C) # $a0, 0x800e
/* 06CF44 8006C344 8C84D37C */  lw    $a0, %lo(D_800DD37C)($a0)
/* 06CF48 8006C348 0C01A871 */  jal   func_8006A1C4
/* 06CF4C 8006C34C 00002825 */   move  $a1, $zero
/* 06CF50 8006C350 3C01800E */  lui   $at, %hi(D_800DD37C) # $at, 0x800e
/* 06CF54 8006C354 AC22D37C */  sw    $v0, %lo(D_800DD37C)($at)
/* 06CF58 8006C358 3C018012 */  lui   $at, %hi(D_80123520) # $at, 0x8012
/* 06CF5C 8006C35C AC203520 */  sw    $zero, %lo(D_80123520)($at)
/* 06CF60 8006C360 3C018012 */  lui   $at, %hi(D_801234EC) # $at, 0x8012
/* 06CF64 8006C364 240EFFFF */  li    $t6, -1
/* 06CF68 8006C368 AC2E34EC */  sw    $t6, %lo(D_801234EC)($at)
.L8006C36C:
/* 06CF6C 8006C36C 0C01BAB0 */  jal   func_8006EAC0
/* 06CF70 8006C370 00000000 */   nop   
/* 06CF74 8006C374 1040000E */  beqz  $v0, .L8006C3B0
/* 06CF78 8006C378 00000000 */   nop   
/* 06CF7C 8006C37C 0C01C9C2 */  jal   func_80072708
/* 06CF80 8006C380 00000000 */   nop   
/* 06CF84 8006C384 0C000A9D */  jal   func_80002A74
/* 06CF88 8006C388 00000000 */   nop   
/* 06CF8C 8006C38C 0C031CEF */  jal   func_800C73BC
/* 06CF90 8006C390 00000000 */   nop   
/* 06CF94 8006C394 3C0400AA */  lui   $a0, (0x00AAAA82 >> 16) # lui $a0, 0xaa
/* 06CF98 8006C398 0C033490 */  jal   __osSpSetStatus
/* 06CF9C 8006C39C 3484AA82 */   ori   $a0, (0x00AAAA82 & 0xFFFF) # ori $a0, $a0, 0xaa82
/* 06CFA0 8006C3A0 0C033494 */  jal   func_800CD250
/* 06CFA4 8006C3A4 240401D6 */   li    $a0, 470
.L8006C3A8:
/* 06CFA8 8006C3A8 1000FFFF */  b     .L8006C3A8
/* 06CFAC 8006C3AC 00000000 */   nop   
.L8006C3B0:
/* 06CFB0 8006C3B0 0C01B183 */  jal   func_8006C60C
/* 06CFB4 8006C3B4 00000000 */   nop   
/* 06CFB8 8006C3B8 0C01978C */  jal   func_80065E30
/* 06CFBC 8006C3BC 00000000 */   nop   
/* 06CFC0 8006C3C0 1000FFEA */  b     .L8006C36C
/* 06CFC4 8006C3C4 00000000 */   nop   
/* 06CFC8 8006C3C8 00000000 */  nop   
/* 06CFCC 8006C3CC 00000000 */  nop   
/* 06CFD0 8006C3D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06CFD4 8006C3D4 27BD0018 */  addiu $sp, $sp, 0x18
/* 06CFD8 8006C3D8 03E00008 */  jr    $ra
/* 06CFDC 8006C3DC 00000000 */   nop   

