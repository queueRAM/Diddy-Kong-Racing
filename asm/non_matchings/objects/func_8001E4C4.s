glabel func_8001E4C4
/* 01F0C4 8001E4C4 3C088012 */  lui   $t0, %hi(gObjectCount) # $t0, 0x8012
/* 01F0C8 8001E4C8 2508AE5C */  addiu $t0, %lo(gObjectCount) # addiu $t0, $t0, -0x51a4
/* 01F0CC 8001E4CC 8D030000 */  lw    $v1, ($t0)
/* 01F0D0 8001E4D0 00001025 */  move  $v0, $zero
/* 01F0D4 8001E4D4 18600013 */  blez  $v1, .L8001E524
/* 01F0D8 8001E4D8 00002025 */   move  $a0, $zero
/* 01F0DC 8001E4DC 3C098012 */  lui   $t1, %hi(gObjPtrList) # $t1, 0x8012
/* 01F0E0 8001E4E0 2529AE58 */  addiu $t1, %lo(gObjPtrList) # addiu $t1, $t1, -0x51a8
/* 01F0E4 8001E4E4 2406DFFF */  li    $a2, -8193
.L8001E4E8:
/* 01F0E8 8001E4E8 8D2E0000 */  lw    $t6, ($t1)
/* 01F0EC 8001E4EC 24420001 */  addiu $v0, $v0, 1
/* 01F0F0 8001E4F0 01C47821 */  addu  $t7, $t6, $a0
/* 01F0F4 8001E4F4 8DE50000 */  lw    $a1, ($t7)
/* 01F0F8 8001E4F8 24840004 */  addiu $a0, $a0, 4
/* 01F0FC 8001E4FC 84B80006 */  lh    $t8, 6($a1)
/* 01F100 8001E500 00000000 */  nop   
/* 01F104 8001E504 0306C824 */  and   $t9, $t8, $a2
/* 01F108 8001E508 A4B90006 */  sh    $t9, 6($a1)
/* 01F10C 8001E50C 8D030000 */  lw    $v1, ($t0)
/* 01F110 8001E510 00000000 */  nop   
/* 01F114 8001E514 0043082A */  slt   $at, $v0, $v1
/* 01F118 8001E518 1420FFF3 */  bnez  $at, .L8001E4E8
/* 01F11C 8001E51C 00000000 */   nop   
/* 01F120 8001E520 00001025 */  move  $v0, $zero
.L8001E524:
/* 01F124 8001E524 3C098012 */  lui   $t1, %hi(gObjPtrList) # $t1, 0x8012
/* 01F128 8001E528 1860002C */  blez  $v1, .L8001E5DC
/* 01F12C 8001E52C 2529AE58 */   addiu $t1, %lo(gObjPtrList) # addiu $t1, $t1, -0x51a8
/* 01F130 8001E530 3C0B8012 */  lui   $t3, %hi(D_8011AE7A) # $t3, 0x8012
/* 01F134 8001E534 256BAE7A */  addiu $t3, %lo(D_8011AE7A) # addiu $t3, $t3, -0x5186
/* 01F138 8001E538 00002025 */  move  $a0, $zero
/* 01F13C 8001E53C 240C0014 */  li    $t4, 20
/* 01F140 8001E540 240A0031 */  li    $t2, 49
.L8001E544:
/* 01F144 8001E544 8D2D0000 */  lw    $t5, ($t1)
/* 01F148 8001E548 00000000 */  nop   
/* 01F14C 8001E54C 01A47021 */  addu  $t6, $t5, $a0
/* 01F150 8001E550 8DC50000 */  lw    $a1, ($t6)
/* 01F154 8001E554 00000000 */  nop   
/* 01F158 8001E558 10A0001A */  beqz  $a1, .L8001E5C4
/* 01F15C 8001E55C 00000000 */   nop   
/* 01F160 8001E560 84A30006 */  lh    $v1, 6($a1)
/* 01F164 8001E564 00000000 */  nop   
/* 01F168 8001E568 306F8000 */  andi  $t7, $v1, 0x8000
/* 01F16C 8001E56C 15E00015 */  bnez  $t7, .L8001E5C4
/* 01F170 8001E570 00000000 */   nop   
/* 01F174 8001E574 84B80048 */  lh    $t8, 0x48($a1)
/* 01F178 8001E578 00000000 */  nop   
/* 01F17C 8001E57C 15580011 */  bne   $t2, $t8, .L8001E5C4
/* 01F180 8001E580 00000000 */   nop   
/* 01F184 8001E584 8CA6003C */  lw    $a2, 0x3c($a1)
/* 01F188 8001E588 85790000 */  lh    $t9, ($t3)
/* 01F18C 8001E58C 80C70021 */  lb    $a3, 0x21($a2)
/* 01F190 8001E590 00000000 */  nop   
/* 01F194 8001E594 1327000B */  beq   $t9, $a3, .L8001E5C4
/* 01F198 8001E598 00000000 */   nop   
/* 01F19C 8001E59C 11870009 */  beq   $t4, $a3, .L8001E5C4
/* 01F1A0 8001E5A0 00000000 */   nop   
/* 01F1A4 8001E5A4 8CA60064 */  lw    $a2, 0x64($a1)
/* 01F1A8 8001E5A8 346D2000 */  ori   $t5, $v1, 0x2000
/* 01F1AC 8001E5AC 10C00005 */  beqz  $a2, .L8001E5C4
/* 01F1B0 8001E5B0 A4AD0006 */   sh    $t5, 6($a1)
/* 01F1B4 8001E5B4 84CE0006 */  lh    $t6, 6($a2)
/* 01F1B8 8001E5B8 00000000 */  nop   
/* 01F1BC 8001E5BC 35CF2000 */  ori   $t7, $t6, 0x2000
/* 01F1C0 8001E5C0 A4CF0006 */  sh    $t7, 6($a2)
.L8001E5C4:
/* 01F1C4 8001E5C4 8D030000 */  lw    $v1, ($t0)
/* 01F1C8 8001E5C8 24420001 */  addiu $v0, $v0, 1
/* 01F1CC 8001E5CC 0043082A */  slt   $at, $v0, $v1
/* 01F1D0 8001E5D0 1420FFDC */  bnez  $at, .L8001E544
/* 01F1D4 8001E5D4 24840004 */   addiu $a0, $a0, 4
/* 01F1D8 8001E5D8 00001025 */  move  $v0, $zero
.L8001E5DC:
/* 01F1DC 8001E5DC 2466FFFF */  addiu $a2, $v1, -1
/* 01F1E0 8001E5E0 04C0003D */  bltz  $a2, .L8001E6D8
/* 01F1E4 8001E5E4 00C03825 */   move  $a3, $a2
/* 01F1E8 8001E5E8 00E2082A */  slt   $at, $a3, $v0
.L8001E5EC:
/* 01F1EC 8001E5EC 14200014 */  bnez  $at, .L8001E640
/* 01F1F0 8001E5F0 00001825 */   move  $v1, $zero
/* 01F1F4 8001E5F4 8D380000 */  lw    $t8, ($t1)
/* 01F1F8 8001E5F8 0002C880 */  sll   $t9, $v0, 2
/* 01F1FC 8001E5FC 03192021 */  addu  $a0, $t8, $t9
.L8001E600:
/* 01F200 8001E600 8C8D0000 */  lw    $t5, ($a0)
/* 01F204 8001E604 00000000 */  nop   
/* 01F208 8001E608 85AE0006 */  lh    $t6, 6($t5)
/* 01F20C 8001E60C 00000000 */  nop   
/* 01F210 8001E610 31CF2000 */  andi  $t7, $t6, 0x2000
/* 01F214 8001E614 11E00004 */  beqz  $t7, .L8001E628
/* 01F218 8001E618 00000000 */   nop   
/* 01F21C 8001E61C 24420001 */  addiu $v0, $v0, 1
/* 01F220 8001E620 10000002 */  b     .L8001E62C
/* 01F224 8001E624 24840004 */   addiu $a0, $a0, 4
.L8001E628:
/* 01F228 8001E628 2403FFFF */  li    $v1, -1
.L8001E62C:
/* 01F22C 8001E62C 00E2082A */  slt   $at, $a3, $v0
/* 01F230 8001E630 14200003 */  bnez  $at, .L8001E640
/* 01F234 8001E634 00000000 */   nop   
/* 01F238 8001E638 1060FFF1 */  beqz  $v1, .L8001E600
/* 01F23C 8001E63C 00000000 */   nop   
.L8001E640:
/* 01F240 8001E640 04C00013 */  bltz  $a2, .L8001E690
/* 01F244 8001E644 00001825 */   move  $v1, $zero
/* 01F248 8001E648 8D380000 */  lw    $t8, ($t1)
/* 01F24C 8001E64C 0006C880 */  sll   $t9, $a2, 2
/* 01F250 8001E650 03192021 */  addu  $a0, $t8, $t9
.L8001E654:
/* 01F254 8001E654 8C8D0000 */  lw    $t5, ($a0)
/* 01F258 8001E658 00000000 */  nop   
/* 01F25C 8001E65C 85AE0006 */  lh    $t6, 6($t5)
/* 01F260 8001E660 00000000 */  nop   
/* 01F264 8001E664 31CF2000 */  andi  $t7, $t6, 0x2000
/* 01F268 8001E668 11E00003 */  beqz  $t7, .L8001E678
/* 01F26C 8001E66C 00000000 */   nop   
/* 01F270 8001E670 10000003 */  b     .L8001E680
/* 01F274 8001E674 2403FFFF */   li    $v1, -1
.L8001E678:
/* 01F278 8001E678 24C6FFFF */  addiu $a2, $a2, -1
/* 01F27C 8001E67C 2484FFFC */  addiu $a0, $a0, -4
.L8001E680:
/* 01F280 8001E680 04C00004 */  bltz  $a2, .L8001E694
/* 01F284 8001E684 0046082A */   slt   $at, $v0, $a2
/* 01F288 8001E688 1060FFF2 */  beqz  $v1, .L8001E654
/* 01F28C 8001E68C 00000000 */   nop   
.L8001E690:
/* 01F290 8001E690 0046082A */  slt   $at, $v0, $a2
.L8001E694:
/* 01F294 8001E694 1020000D */  beqz  $at, .L8001E6CC
/* 01F298 8001E698 0002C080 */   sll   $t8, $v0, 2
/* 01F29C 8001E69C 8D230000 */  lw    $v1, ($t1)
/* 01F2A0 8001E6A0 00064080 */  sll   $t0, $a2, 2
/* 01F2A4 8001E6A4 0068C821 */  addu  $t9, $v1, $t0
/* 01F2A8 8001E6A8 8F2D0000 */  lw    $t5, ($t9)
/* 01F2AC 8001E6AC 00782021 */  addu  $a0, $v1, $t8
/* 01F2B0 8001E6B0 8C850000 */  lw    $a1, ($a0)
/* 01F2B4 8001E6B4 AC8D0000 */  sw    $t5, ($a0)
/* 01F2B8 8001E6B8 8D2E0000 */  lw    $t6, ($t1)
/* 01F2BC 8001E6BC 24420001 */  addiu $v0, $v0, 1
/* 01F2C0 8001E6C0 01C87821 */  addu  $t7, $t6, $t0
/* 01F2C4 8001E6C4 24C6FFFF */  addiu $a2, $a2, -1
/* 01F2C8 8001E6C8 ADE50000 */  sw    $a1, ($t7)
.L8001E6CC:
/* 01F2CC 8001E6CC 00C2082A */  slt   $at, $a2, $v0
/* 01F2D0 8001E6D0 1020FFC6 */  beqz  $at, .L8001E5EC
/* 01F2D4 8001E6D4 00E2082A */   slt   $at, $a3, $v0
.L8001E6D8:
/* 01F2D8 8001E6D8 3C018012 */  lui   $at, %hi(D_8011AE60) # $at, 0x8012
/* 01F2DC 8001E6DC AC22AE60 */  sw    $v0, %lo(D_8011AE60)($at)
/* 01F2E0 8001E6E0 3C018012 */  lui   $at, %hi(D_8011AE7C) # $at, 0x8012
/* 01F2E4 8001E6E4 03E00008 */  jr    $ra
/* 01F2E8 8001E6E8 A420AE7C */   sh    $zero, %lo(D_8011AE7C)($at)

