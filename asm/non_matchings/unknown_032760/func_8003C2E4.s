glabel func_8003C2E4
/* 03CEE4 8003C2E4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 03CEE8 8003C2E8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 03CEEC 8003C2EC AFB10020 */  sw    $s1, 0x20($sp)
/* 03CEF0 8003C2F0 AFB0001C */  sw    $s0, 0x1c($sp)
/* 03CEF4 8003C2F4 AFA50034 */  sw    $a1, 0x34($sp)
/* 03CEF8 8003C2F8 8C900064 */  lw    $s0, 0x64($a0)
/* 03CEFC 8003C2FC 0C01BAA4 */  jal   get_settings
/* 03CF00 8003C300 00808825 */   move  $s1, $a0
/* 03CF04 8003C304 AFA2002C */  sw    $v0, 0x2c($sp)
/* 03CF08 8003C308 920E000F */  lbu   $t6, 0xf($s0)
/* 03CF0C 8003C30C 00000000 */  nop   
/* 03CF10 8003C310 15C00007 */  bnez  $t6, .L8003C330
/* 03CF14 8003C314 00000000 */   nop   
/* 03CF18 8003C318 904F0016 */  lbu   $t7, 0x16($v0)
/* 03CF1C 8003C31C 3C18800E */  lui   $t8, %hi(D_800DCA94) # $t8, 0x800e
/* 03CF20 8003C320 030FC021 */  addu  $t8, $t8, $t7
/* 03CF24 8003C324 8318CA94 */  lb    $t8, %lo(D_800DCA94)($t8)
/* 03CF28 8003C328 10000007 */  b     .L8003C348
/* 03CF2C 8003C32C A238003A */   sb    $t8, 0x3a($s1)
.L8003C330:
/* 03CF30 8003C330 90590016 */  lbu   $t9, 0x16($v0)
/* 03CF34 8003C334 3C08800E */  lui   $t0, %hi(D_800DCA9C) # $t0, 0x800e
/* 03CF38 8003C338 01194021 */  addu  $t0, $t0, $t9
/* 03CF3C 8003C33C 8108CA9C */  lb    $t0, %lo(D_800DCA9C)($t0)
/* 03CF40 8003C340 00000000 */  nop   
/* 03CF44 8003C344 A228003A */  sb    $t0, 0x3a($s1)
.L8003C348:
/* 03CF48 8003C348 8E23004C */  lw    $v1, 0x4c($s1)
/* 03CF4C 8003C34C 920A0012 */  lbu   $t2, 0x12($s0)
/* 03CF50 8003C350 90690013 */  lbu   $t1, 0x13($v1)
/* 03CF54 8003C354 00000000 */  nop   
/* 03CF58 8003C358 012A082A */  slt   $at, $t1, $t2
/* 03CF5C 8003C35C 10200043 */  beqz  $at, .L8003C46C
/* 03CF60 8003C360 00000000 */   nop   
/* 03CF64 8003C364 904B0016 */  lbu   $t3, 0x16($v0)
/* 03CF68 8003C368 00000000 */  nop   
/* 03CF6C 8003C36C 29610004 */  slti  $at, $t3, 4
/* 03CF70 8003C370 14200008 */  bnez  $at, .L8003C394
/* 03CF74 8003C374 00000000 */   nop   
/* 03CF78 8003C378 8C4C0000 */  lw    $t4, ($v0)
/* 03CF7C 8003C37C 00000000 */  nop   
/* 03CF80 8003C380 858D0000 */  lh    $t5, ($t4)
/* 03CF84 8003C384 00000000 */  nop   
/* 03CF88 8003C388 29A1002F */  slti  $at, $t5, 0x2f
/* 03CF8C 8003C38C 10200037 */  beqz  $at, .L8003C46C
/* 03CF90 8003C390 00000000 */   nop   
.L8003C394:
/* 03CF94 8003C394 8C620000 */  lw    $v0, ($v1)
/* 03CF98 8003C398 00000000 */  nop   
/* 03CF9C 8003C39C 10400033 */  beqz  $v0, .L8003C46C
/* 03CFA0 8003C3A0 00000000 */   nop   
/* 03CFA4 8003C3A4 8C4E0040 */  lw    $t6, 0x40($v0)
/* 03CFA8 8003C3A8 24010001 */  li    $at, 1
/* 03CFAC 8003C3AC 81CF0054 */  lb    $t7, 0x54($t6)
/* 03CFB0 8003C3B0 00000000 */  nop   
/* 03CFB4 8003C3B4 15E1002D */  bne   $t7, $at, .L8003C46C
/* 03CFB8 8003C3B8 00000000 */   nop   
/* 03CFBC 8003C3BC 8C430064 */  lw    $v1, 0x64($v0)
/* 03CFC0 8003C3C0 2404FFFF */  li    $a0, -1
/* 03CFC4 8003C3C4 84780000 */  lh    $t8, ($v1)
/* 03CFC8 8003C3C8 00000000 */  nop   
/* 03CFCC 8003C3CC 10980022 */  beq   $a0, $t8, .L8003C458
/* 03CFD0 8003C3D0 00000000 */   nop   
/* 03CFD4 8003C3D4 8E39005C */  lw    $t9, 0x5c($s1)
/* 03CFD8 8003C3D8 00000000 */  nop   
/* 03CFDC 8003C3DC 8F280100 */  lw    $t0, 0x100($t9)
/* 03CFE0 8003C3E0 00000000 */  nop   
/* 03CFE4 8003C3E4 1448001C */  bne   $v0, $t0, .L8003C458
/* 03CFE8 8003C3E8 00000000 */   nop   
/* 03CFEC 8003C3EC 82090013 */  lb    $t1, 0x13($s0)
/* 03CFF0 8003C3F0 00000000 */  nop   
/* 03CFF4 8003C3F4 10890017 */  beq   $a0, $t1, .L8003C454
/* 03CFF8 8003C3F8 240D012C */   li    $t5, 300
/* 03CFFC 8003C3FC 0C030D00 */  jal   func_800C3400
/* 03D000 8003C400 00000000 */   nop   
/* 03D004 8003C404 14400013 */  bnez  $v0, .L8003C454
/* 03D008 8003C408 240D012C */   li    $t5, 300
/* 03D00C 8003C40C 860A000C */  lh    $t2, 0xc($s0)
/* 03D010 8003C410 00000000 */  nop   
/* 03D014 8003C414 1540000F */  bnez  $t2, .L8003C454
/* 03D018 8003C418 240D012C */   li    $t5, 300
/* 03D01C 8003C41C 0C000326 */  jal   func_80000C98
/* 03D020 8003C420 2404FFF8 */   li    $a0, -8
/* 03D024 8003C424 240B008C */  li    $t3, 140
/* 03D028 8003C428 AE0B0008 */  sw    $t3, 8($s0)
/* 03D02C 8003C42C 0C00030E */  jal   func_80000C38
/* 03D030 8003C430 24040010 */   li    $a0, 16
/* 03D034 8003C434 0C0006F0 */  jal   func_80001BC0
/* 03D038 8003C438 24040011 */   li    $a0, 17
/* 03D03C 8003C43C 82040013 */  lb    $a0, 0x13($s0)
/* 03D040 8003C440 00000000 */  nop   
/* 03D044 8003C444 308C00FF */  andi  $t4, $a0, 0xff
/* 03D048 8003C448 0C030C7B */  jal   func_800C31EC
/* 03D04C 8003C44C 01802025 */   move  $a0, $t4
/* 03D050 8003C450 240D012C */  li    $t5, 300
.L8003C454:
/* 03D054 8003C454 A60D000C */  sh    $t5, 0xc($s0)
.L8003C458:
/* 03D058 8003C458 0C030D00 */  jal   func_800C3400
/* 03D05C 8003C45C 00000000 */   nop   
/* 03D060 8003C460 10400002 */  beqz  $v0, .L8003C46C
/* 03D064 8003C464 240E012C */   li    $t6, 300
/* 03D068 8003C468 A60E000C */  sh    $t6, 0xc($s0)
.L8003C46C:
/* 03D06C 8003C46C 8E0F0008 */  lw    $t7, 8($s0)
/* 03D070 8003C470 00000000 */  nop   
/* 03D074 8003C474 11E00011 */  beqz  $t7, .L8003C4BC
/* 03D078 8003C478 00000000 */   nop   
/* 03D07C 8003C47C 0C000702 */  jal   func_80001C08
/* 03D080 8003C480 00000000 */   nop   
/* 03D084 8003C484 1440000D */  bnez  $v0, .L8003C4BC
/* 03D088 8003C488 00000000 */   nop   
/* 03D08C 8003C48C 8FA30034 */  lw    $v1, 0x34($sp)
/* 03D090 8003C490 8E020008 */  lw    $v0, 8($s0)
/* 03D094 8003C494 24040008 */  li    $a0, 8
/* 03D098 8003C498 0062082A */  slt   $at, $v1, $v0
/* 03D09C 8003C49C 10200003 */  beqz  $at, .L8003C4AC
/* 03D0A0 8003C4A0 0043C023 */   subu  $t8, $v0, $v1
/* 03D0A4 8003C4A4 10000005 */  b     .L8003C4BC
/* 03D0A8 8003C4A8 AE180008 */   sw    $t8, 8($s0)
.L8003C4AC:
/* 03D0AC 8003C4AC 0C000326 */  jal   func_80000C98
/* 03D0B0 8003C4B0 AE000008 */   sw    $zero, 8($s0)
/* 03D0B4 8003C4B4 0C00030E */  jal   func_80000C38
/* 03D0B8 8003C4B8 24040006 */   li    $a0, 6
.L8003C4BC:
/* 03D0BC 8003C4BC 8602000C */  lh    $v0, 0xc($s0)
/* 03D0C0 8003C4C0 8FA30034 */  lw    $v1, 0x34($sp)
/* 03D0C4 8003C4C4 18400003 */  blez  $v0, .L8003C4D4
/* 03D0C8 8003C4C8 0043C823 */   subu  $t9, $v0, $v1
/* 03D0CC 8003C4CC 10000002 */  b     .L8003C4D8
/* 03D0D0 8003C4D0 A619000C */   sh    $t9, 0xc($s0)
.L8003C4D4:
/* 03D0D4 8003C4D4 A600000C */  sh    $zero, 0xc($s0)
.L8003C4D8:
/* 03D0D8 8003C4D8 8FA8002C */  lw    $t0, 0x2c($sp)
/* 03D0DC 8003C4DC 24040001 */  li    $a0, 1
/* 03D0E0 8003C4E0 91090016 */  lbu   $t1, 0x16($t0)
/* 03D0E4 8003C4E4 00000000 */  nop   
/* 03D0E8 8003C4E8 29210004 */  slti  $at, $t1, 4
/* 03D0EC 8003C4EC 14200016 */  bnez  $at, .L8003C548
/* 03D0F0 8003C4F0 00000000 */   nop   
/* 03D0F4 8003C4F4 8E2A004C */  lw    $t2, 0x4c($s1)
/* 03D0F8 8003C4F8 920C0012 */  lbu   $t4, 0x12($s0)
/* 03D0FC 8003C4FC 914B0013 */  lbu   $t3, 0x13($t2)
/* 03D100 8003C500 00000000 */  nop   
/* 03D104 8003C504 016C082A */  slt   $at, $t3, $t4
/* 03D108 8003C508 1020000F */  beqz  $at, .L8003C548
/* 03D10C 8003C50C 00000000 */   nop   
/* 03D110 8003C510 8D0D0000 */  lw    $t5, ($t0)
/* 03D114 8003C514 00000000 */  nop   
/* 03D118 8003C518 85AE0000 */  lh    $t6, ($t5)
/* 03D11C 8003C51C 00000000 */  nop   
/* 03D120 8003C520 29C1002F */  slti  $at, $t6, 0x2f
/* 03D124 8003C524 14200008 */  bnez  $at, .L8003C548
/* 03D128 8003C528 00000000 */   nop   
/* 03D12C 8003C52C 86230000 */  lh    $v1, ($s1)
/* 03D130 8003C530 8E2F007C */  lw    $t7, 0x7c($s1)
/* 03D134 8003C534 00000000 */  nop   
/* 03D138 8003C538 006F1023 */  subu  $v0, $v1, $t7
/* 03D13C 8003C53C 0002C400 */  sll   $t8, $v0, 0x10
/* 03D140 8003C540 10000007 */  b     .L8003C560
/* 03D144 8003C544 00181403 */   sra   $v0, $t8, 0x10
.L8003C548:
/* 03D148 8003C548 86230000 */  lh    $v1, ($s1)
/* 03D14C 8003C54C 8E290078 */  lw    $t1, 0x78($s1)
/* 03D150 8003C550 00000000 */  nop   
/* 03D154 8003C554 00691023 */  subu  $v0, $v1, $t1
/* 03D158 8003C558 00025400 */  sll   $t2, $v0, 0x10
/* 03D15C 8003C55C 000A1403 */  sra   $v0, $t2, 0x10
.L8003C560:
/* 03D160 8003C560 000260C3 */  sra   $t4, $v0, 3
/* 03D164 8003C564 000C4400 */  sll   $t0, $t4, 0x10
/* 03D168 8003C568 00081403 */  sra   $v0, $t0, 0x10
/* 03D16C 8003C56C 28410201 */  slti  $at, $v0, 0x201
/* 03D170 8003C570 14200003 */  bnez  $at, .L8003C580
/* 03D174 8003C574 2841FE00 */   slti  $at, $v0, -0x200
/* 03D178 8003C578 24020200 */  li    $v0, 512
/* 03D17C 8003C57C 2841FE00 */  slti  $at, $v0, -0x200
.L8003C580:
/* 03D180 8003C580 10200003 */  beqz  $at, .L8003C590
/* 03D184 8003C584 00627023 */   subu  $t6, $v1, $v0
/* 03D188 8003C588 2402FE00 */  li    $v0, -512
/* 03D18C 8003C58C 00627023 */  subu  $t6, $v1, $v0
.L8003C590:
/* 03D190 8003C590 14400002 */  bnez  $v0, .L8003C59C
/* 03D194 8003C594 A62E0000 */   sh    $t6, ($s1)
/* 03D198 8003C598 00002025 */  move  $a0, $zero
.L8003C59C:
/* 03D19C 8003C59C 1080000E */  beqz  $a0, .L8003C5D8
/* 03D1A0 8003C5A0 00000000 */   nop   
/* 03D1A4 8003C5A4 8E0F0004 */  lw    $t7, 4($s0)
/* 03D1A8 8003C5A8 24040222 */  li    $a0, 546
/* 03D1AC 8003C5AC 15E00011 */  bnez  $t7, .L8003C5F4
/* 03D1B0 8003C5B0 24180001 */   li    $t8, 1
/* 03D1B4 8003C5B4 8E25000C */  lw    $a1, 0xc($s1)
/* 03D1B8 8003C5B8 8E260010 */  lw    $a2, 0x10($s1)
/* 03D1BC 8003C5BC 8E270014 */  lw    $a3, 0x14($s1)
/* 03D1C0 8003C5C0 26190004 */  addiu $t9, $s0, 4
/* 03D1C4 8003C5C4 AFB90014 */  sw    $t9, 0x14($sp)
/* 03D1C8 8003C5C8 0C002556 */  jal   func_80009558
/* 03D1CC 8003C5CC AFB80010 */   sw    $t8, 0x10($sp)
/* 03D1D0 8003C5D0 10000009 */  b     .L8003C5F8
/* 03D1D4 8003C5D4 8E2A004C */   lw    $t2, 0x4c($s1)
.L8003C5D8:
/* 03D1D8 8003C5D8 8E020004 */  lw    $v0, 4($s0)
/* 03D1DC 8003C5DC 00000000 */  nop   
/* 03D1E0 8003C5E0 10400004 */  beqz  $v0, .L8003C5F4
/* 03D1E4 8003C5E4 00000000 */   nop   
/* 03D1E8 8003C5E8 0C0025BE */  jal   func_800096F8
/* 03D1EC 8003C5EC 00402025 */   move  $a0, $v0
/* 03D1F0 8003C5F0 AE000004 */  sw    $zero, 4($s0)
.L8003C5F4:
/* 03D1F4 8003C5F4 8E2A004C */  lw    $t2, 0x4c($s1)
.L8003C5F8:
/* 03D1F8 8003C5F8 240900FF */  li    $t1, 255
/* 03D1FC 8003C5FC A1490013 */  sb    $t1, 0x13($t2)
/* 03D200 8003C600 8E2B004C */  lw    $t3, 0x4c($s1)
/* 03D204 8003C604 00000000 */  nop   
/* 03D208 8003C608 AD600000 */  sw    $zero, ($t3)
/* 03D20C 8003C60C 8E23004C */  lw    $v1, 0x4c($s1)
/* 03D210 8003C610 00000000 */  nop   
/* 03D214 8003C614 846C0014 */  lh    $t4, 0x14($v1)
/* 03D218 8003C618 00000000 */  nop   
/* 03D21C 8003C61C 3188FFF7 */  andi  $t0, $t4, 0xfff7
/* 03D220 8003C620 A4680014 */  sh    $t0, 0x14($v1)
/* 03D224 8003C624 8E2D005C */  lw    $t5, 0x5c($s1)
/* 03D228 8003C628 00000000 */  nop   
/* 03D22C 8003C62C ADA00100 */  sw    $zero, 0x100($t5)
/* 03D230 8003C630 8FBF0024 */  lw    $ra, 0x24($sp)
/* 03D234 8003C634 8FB10020 */  lw    $s1, 0x20($sp)
/* 03D238 8003C638 8FB0001C */  lw    $s0, 0x1c($sp)
/* 03D23C 8003C63C 03E00008 */  jr    $ra
/* 03D240 8003C640 27BD0030 */   addiu $sp, $sp, 0x30

