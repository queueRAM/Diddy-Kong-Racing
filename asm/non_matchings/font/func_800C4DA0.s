glabel func_800C4DA0
/* 0C59A0 800C4DA0 14800003 */  bnez  $a0, .L800C4DB0
/* 0C59A4 800C4DA4 3C188013 */   lui   $t8, %hi(gFonts) # $t8, 0x8013
/* 0C59A8 800C4DA8 03E00008 */  jr    $ra
/* 0C59AC 800C4DAC 00001025 */   move  $v0, $zero

.L800C4DB0:
/* 0C59B0 800C4DB0 04C10006 */  bgez  $a2, .L800C4DCC
/* 0C59B4 800C4DB4 00A01825 */   move  $v1, $a1
/* 0C59B8 800C4DB8 3C0E8013 */  lui   $t6, %hi(gDialogueBoxBackground) # $t6, 0x8013
/* 0C59BC 800C4DBC 8DCEA7E8 */  lw    $t6, %lo(gDialogueBoxBackground)($t6)
/* 0C59C0 800C4DC0 00000000 */  nop   
/* 0C59C4 800C4DC4 91C6001D */  lbu   $a2, 0x1d($t6)
/* 0C59C8 800C4DC8 00000000 */  nop   
.L800C4DCC:
/* 0C59CC 800C4DCC 8F18A7E4 */  lw    $t8, %lo(gFonts)($t8)
/* 0C59D0 800C4DD0 90990000 */  lbu   $t9, ($a0)
/* 0C59D4 800C4DD4 00067A80 */  sll   $t7, $a2, 0xa
/* 0C59D8 800C4DD8 1320003D */  beqz  $t9, .L800C4ED0
/* 0C59DC 800C4DDC 01F81021 */   addu  $v0, $t7, $t8
/* 0C59E0 800C4DE0 3C0A8013 */  lui   $t2, %hi(D_8012A7F0) # $t2, 0x8013
/* 0C59E4 800C4DE4 8D4AA7F0 */  lw    $t2, %lo(D_8012A7F0)($t2)
/* 0C59E8 800C4DE8 90880000 */  lbu   $t0, ($a0)
/* 0C59EC 800C4DEC 00803825 */  move  $a3, $a0
/* 0C59F0 800C4DF0 240C00FF */  li    $t4, 255
/* 0C59F4 800C4DF4 240B0009 */  li    $t3, 9
/* 0C59F8 800C4DF8 310600FF */  andi  $a2, $t0, 0xff
.L800C4DFC:
/* 0C59FC 800C4DFC 28C10021 */  slti  $at, $a2, 0x21
/* 0C5A00 800C4E00 00602025 */  move  $a0, $v1
/* 0C5A04 800C4E04 14200004 */  bnez  $at, .L800C4E18
/* 0C5A08 800C4E08 00C04825 */   move  $t1, $a2
/* 0C5A0C 800C4E0C 28C10080 */  slti  $at, $a2, 0x80
/* 0C5A10 800C4E10 14200017 */  bnez  $at, .L800C4E70
/* 0C5A14 800C4E14 2526FFE0 */   addiu $a2, $t1, -0x20
.L800C4E18:
/* 0C5A18 800C4E18 15690012 */  bne   $t3, $t1, .L800C4E64
/* 0C5A1C 800C4E1C 00000000 */   nop   
/* 0C5A20 800C4E20 94460026 */  lhu   $a2, 0x26($v0)
/* 0C5A24 800C4E24 00000000 */  nop   
/* 0C5A28 800C4E28 0066001A */  div   $zero, $v1, $a2
/* 0C5A2C 800C4E2C 00666821 */  addu  $t5, $v1, $a2
/* 0C5A30 800C4E30 14C00002 */  bnez  $a2, .L800C4E3C
/* 0C5A34 800C4E34 00000000 */   nop   
/* 0C5A38 800C4E38 0007000D */  break 7
.L800C4E3C:
/* 0C5A3C 800C4E3C 2401FFFF */  li    $at, -1
/* 0C5A40 800C4E40 14C10004 */  bne   $a2, $at, .L800C4E54
/* 0C5A44 800C4E44 3C018000 */   lui   $at, 0x8000
/* 0C5A48 800C4E48 14610002 */  bne   $v1, $at, .L800C4E54
/* 0C5A4C 800C4E4C 00000000 */   nop   
/* 0C5A50 800C4E50 0006000D */  break 6
.L800C4E54:
/* 0C5A54 800C4E54 00007010 */  mfhi  $t6
/* 0C5A58 800C4E58 01AE1823 */  subu  $v1, $t5, $t6
/* 0C5A5C 800C4E5C 10000013 */  b     .L800C4EAC
/* 0C5A60 800C4E60 00000000 */   nop   
.L800C4E64:
/* 0C5A64 800C4E64 944F0024 */  lhu   $t7, 0x24($v0)
/* 0C5A68 800C4E68 10000010 */  b     .L800C4EAC
/* 0C5A6C 800C4E6C 006F1821 */   addu  $v1, $v1, $t7
.L800C4E70:
/* 0C5A70 800C4E70 30D800FF */  andi  $t8, $a2, 0xff
/* 0C5A74 800C4E74 0018C8C0 */  sll   $t9, $t8, 3
/* 0C5A78 800C4E78 00594021 */  addu  $t0, $v0, $t9
/* 0C5A7C 800C4E7C 910D0100 */  lbu   $t5, 0x100($t0)
/* 0C5A80 800C4E80 00000000 */  nop   
/* 0C5A84 800C4E84 118D0009 */  beq   $t4, $t5, .L800C4EAC
/* 0C5A88 800C4E88 00000000 */   nop   
/* 0C5A8C 800C4E8C 94460020 */  lhu   $a2, 0x20($v0)
/* 0C5A90 800C4E90 00000000 */  nop   
/* 0C5A94 800C4E94 14C00004 */  bnez  $a2, .L800C4EA8
/* 0C5A98 800C4E98 00000000 */   nop   
/* 0C5A9C 800C4E9C 910E0101 */  lbu   $t6, 0x101($t0)
/* 0C5AA0 800C4EA0 10000002 */  b     .L800C4EAC
/* 0C5AA4 800C4EA4 006E1821 */   addu  $v1, $v1, $t6
.L800C4EA8:
/* 0C5AA8 800C4EA8 00661821 */  addu  $v1, $v1, $a2
.L800C4EAC:
/* 0C5AAC 800C4EAC 11400004 */  beqz  $t2, .L800C4EC0
/* 0C5AB0 800C4EB0 00000000 */   nop   
/* 0C5AB4 800C4EB4 10640002 */  beq   $v1, $a0, .L800C4EC0
/* 0C5AB8 800C4EB8 00000000 */   nop   
/* 0C5ABC 800C4EBC 2463FFFF */  addiu $v1, $v1, -1
.L800C4EC0:
/* 0C5AC0 800C4EC0 90E80001 */  lbu   $t0, 1($a3)
/* 0C5AC4 800C4EC4 24E70001 */  addiu $a3, $a3, 1
/* 0C5AC8 800C4EC8 1500FFCC */  bnez  $t0, .L800C4DFC
/* 0C5ACC 800C4ECC 310600FF */   andi  $a2, $t0, 0xff
.L800C4ED0:
/* 0C5AD0 800C4ED0 00651023 */  subu  $v0, $v1, $a1
/* 0C5AD4 800C4ED4 03E00008 */  jr    $ra
/* 0C5AD8 800C4ED8 00000000 */   nop   

