.late_rodata
glabel D_800E6A10
.double 0.3
glabel D_800E6A18
.double -0.1
glabel D_800E6A20
.double 0.1
glabel D_800E6A28
.double 700.0

.text
glabel func_8005C364
/* 05CF64 8005C364 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 05CF68 8005C368 AFA40058 */  sw    $a0, 0x58($sp)
/* 05CF6C 8005C36C AFBF002C */  sw    $ra, 0x2c($sp)
/* 05CF70 8005C370 AFB10028 */  sw    $s1, 0x28($sp)
/* 05CF74 8005C374 AFB00024 */  sw    $s0, 0x24($sp)
/* 05CF78 8005C378 3C04800E */  lui   $a0, %hi(D_800DCDE0) # $a0, 0x800e
/* 05CF7C 8005C37C 00E08025 */  move  $s0, $a3
/* 05CF80 8005C380 00C08825 */  move  $s1, $a2
/* 05CF84 8005C384 E7B50018 */  swc1  $f21, 0x18($sp)
/* 05CF88 8005C388 E7B4001C */  swc1  $f20, 0x1c($sp)
/* 05CF8C 8005C38C AFA5005C */  sw    $a1, 0x5c($sp)
/* 05CF90 8005C390 0C01729E */  jal   func_8005CA78
/* 05CF94 8005C394 2484CDE0 */   addiu $a0, %lo(D_800DCDE0) # addiu $a0, $a0, -0x3220
/* 05CF98 8005C398 8FA2006C */  lw    $v0, 0x6c($sp)
/* 05CF9C 8005C39C 8FA50068 */  lw    $a1, 0x68($sp)
/* 05CFA0 8005C3A0 8C4E0000 */  lw    $t6, ($v0)
/* 05CFA4 8005C3A4 2403FFEF */  li    $v1, -17
/* 05CFA8 8005C3A8 01C37824 */  and   $t7, $t6, $v1
/* 05CFAC 8005C3AC AC4F0000 */  sw    $t7, ($v0)
/* 05CFB0 8005C3B0 8CB80000 */  lw    $t8, ($a1)
/* 05CFB4 8005C3B4 24010001 */  li    $at, 1
/* 05CFB8 8005C3B8 0303C824 */  and   $t9, $t8, $v1
/* 05CFBC 8005C3BC ACB90000 */  sw    $t9, ($a1)
/* 05CFC0 8005C3C0 822A003B */  lb    $t2, 0x3b($s1)
/* 05CFC4 8005C3C4 00000000 */  nop   
/* 05CFC8 8005C3C8 A7AA0056 */  sh    $t2, 0x56($sp)
/* 05CFCC 8005C3CC 862B0018 */  lh    $t3, 0x18($s1)
/* 05CFD0 8005C3D0 00000000 */  nop   
/* 05CFD4 8005C3D4 A7AB0054 */  sh    $t3, 0x54($sp)
/* 05CFD8 8005C3D8 860C016A */  lh    $t4, 0x16a($s0)
/* 05CFDC 8005C3DC 00000000 */  nop   
/* 05CFE0 8005C3E0 A7AC0052 */  sh    $t4, 0x52($sp)
/* 05CFE4 8005C3E4 820D01D8 */  lb    $t5, 0x1d8($s0)
/* 05CFE8 8005C3E8 00000000 */  nop   
/* 05CFEC 8005C3EC 15A10008 */  bne   $t5, $at, .L8005C410
/* 05CFF0 8005C3F0 8FA90070 */   lw    $t1, 0x70($sp)
/* 05CFF4 8005C3F4 0C008500 */  jal   func_80021400
/* 05CFF8 8005C3F8 24040082 */   li    $a0, 130
/* 05CFFC 8005C3FC 820E01D8 */  lb    $t6, 0x1d8($s0)
/* 05D000 8005C400 8FA50068 */  lw    $a1, 0x68($sp)
/* 05D004 8005C404 25CF0001 */  addiu $t7, $t6, 1
/* 05D008 8005C408 A20F01D8 */  sb    $t7, 0x1d8($s0)
/* 05D00C 8005C40C 8FA90070 */  lw    $t1, 0x70($sp)
.L8005C410:
/* 05D010 8005C410 86180000 */  lh    $t8, ($s0)
/* 05D014 8005C414 8D220000 */  lw    $v0, ($t1)
/* 05D018 8005C418 2408FFFF */  li    $t0, -1
/* 05D01C 8005C41C 1518001D */  bne   $t0, $t8, .L8005C494
/* 05D020 8005C420 00401825 */   move  $v1, $v0
/* 05D024 8005C424 24010064 */  li    $at, 100
/* 05D028 8005C428 1041001A */  beq   $v0, $at, .L8005C494
/* 05D02C 8005C42C 2459FFF1 */   addiu $t9, $v0, -0xf
/* 05D030 8005C430 07210016 */  bgez  $t9, .L8005C48C
/* 05D034 8005C434 AD390000 */   sw    $t9, ($t1)
/* 05D038 8005C438 3C0B8012 */  lui   $t3, %hi(D_8011D5CC) # $t3, 0x8012
/* 05D03C 8005C43C 816BD5CC */  lb    $t3, %lo(D_8011D5CC)($t3)
/* 05D040 8005C440 00002025 */  move  $a0, $zero
/* 05D044 8005C444 15600009 */  bnez  $t3, .L8005C46C
/* 05D048 8005C448 240D0001 */   li    $t5, 1
/* 05D04C 8005C44C 0C0172C1 */  jal   func_8005CB04
/* 05D050 8005C450 AFA20040 */   sw    $v0, 0x40($sp)
/* 05D054 8005C454 8FA30040 */  lw    $v1, 0x40($sp)
/* 05D058 8005C458 8FA50068 */  lw    $a1, 0x68($sp)
/* 05D05C 8005C45C 8FA90070 */  lw    $t1, 0x70($sp)
/* 05D060 8005C460 240C0005 */  li    $t4, 5
/* 05D064 8005C464 A20C01D3 */  sb    $t4, 0x1d3($s0)
/* 05D068 8005C468 240D0001 */  li    $t5, 1
.L8005C46C:
/* 05D06C 8005C46C 3C018012 */  lui   $at, %hi(D_8011D5CC) # $at, 0x8012
/* 05D070 8005C470 A02DD5CC */  sb    $t5, %lo(D_8011D5CC)($at)
/* 05D074 8005C474 AD200000 */  sw    $zero, ($t1)
/* 05D078 8005C478 8CAE0000 */  lw    $t6, ($a1)
/* 05D07C 8005C47C 00000000 */  nop   
/* 05D080 8005C480 35CF8000 */  ori   $t7, $t6, 0x8000
/* 05D084 8005C484 10000003 */  b     .L8005C494
/* 05D088 8005C488 ACAF0000 */   sw    $t7, ($a1)
.L8005C48C:
/* 05D08C 8005C48C 3C018012 */  lui   $at, %hi(D_8011D5CC) # $at, 0x8012
/* 05D090 8005C490 A020D5CC */  sb    $zero, %lo(D_8011D5CC)($at)
.L8005C494:
/* 05D094 8005C494 8FA40058 */  lw    $a0, 0x58($sp)
/* 05D098 8005C498 8FA5005C */  lw    $a1, 0x5c($sp)
/* 05D09C 8005C49C 02203025 */  move  $a2, $s1
/* 05D0A0 8005C4A0 02003825 */  move  $a3, $s0
/* 05D0A4 8005C4A4 0C013DFD */  jal   func_8004F7F4
/* 05D0A8 8005C4A8 AFA30040 */   sw    $v1, 0x40($sp)
/* 05D0AC 8005C4AC 8FA30040 */  lw    $v1, 0x40($sp)
/* 05D0B0 8005C4B0 8FA90070 */  lw    $t1, 0x70($sp)
/* 05D0B4 8005C4B4 44808000 */  mtc1  $zero, $f16
/* 05D0B8 8005C4B8 AD230000 */  sw    $v1, ($t1)
/* 05D0BC 8005C4BC E6100030 */  swc1  $f16, 0x30($s0)
/* 05D0C0 8005C4C0 87B80052 */  lh    $t8, 0x52($sp)
/* 05D0C4 8005C4C4 2408FFFF */  li    $t0, -1
/* 05D0C8 8005C4C8 A618016A */  sh    $t8, 0x16a($s0)
/* 05D0CC 8005C4CC 87B90056 */  lh    $t9, 0x56($sp)
/* 05D0D0 8005C4D0 00000000 */  nop   
/* 05D0D4 8005C4D4 A239003B */  sb    $t9, 0x3b($s1)
/* 05D0D8 8005C4D8 87AA0054 */  lh    $t2, 0x54($sp)
/* 05D0DC 8005C4DC 00000000 */  nop   
/* 05D0E0 8005C4E0 A62A0018 */  sh    $t2, 0x18($s1)
/* 05D0E4 8005C4E4 820B0187 */  lb    $t3, 0x187($s0)
/* 05D0E8 8005C4E8 00000000 */  nop   
/* 05D0EC 8005C4EC 11600022 */  beqz  $t3, .L8005C578
/* 05D0F0 8005C4F0 00000000 */   nop   
/* 05D0F4 8005C4F4 8223003B */  lb    $v1, 0x3b($s1)
/* 05D0F8 8005C4F8 24050003 */  li    $a1, 3
/* 05D0FC 8005C4FC 10A3001E */  beq   $a1, $v1, .L8005C578
/* 05D100 8005C500 3C01401E */   li    $at, 0x401E0000 # 2.468750
/* 05D104 8005C504 A20301CD */  sb    $v1, 0x1cd($s0)
/* 05D108 8005C508 C6240020 */  lwc1  $f4, 0x20($s1)
/* 05D10C 8005C50C 44814800 */  mtc1  $at, $f9
/* 05D110 8005C510 44804000 */  mtc1  $zero, $f8
/* 05D114 8005C514 460021A1 */  cvt.d.s $f6, $f4
/* 05D118 8005C518 46283280 */  add.d $f10, $f6, $f8
/* 05D11C 8005C51C A225003B */  sb    $a1, 0x3b($s1)
/* 05D120 8005C520 462054A0 */  cvt.s.d $f18, $f10
/* 05D124 8005C524 24040001 */  li    $a0, 1
/* 05D128 8005C528 0C0172C1 */  jal   func_8005CB04
/* 05D12C 8005C52C E6320020 */   swc1  $f18, 0x20($s1)
/* 05D130 8005C530 24040011 */  li    $a0, 17
/* 05D134 8005C534 0C000741 */  jal   func_80001D04
/* 05D138 8005C538 00002825 */   move  $a1, $zero
/* 05D13C 8005C53C 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 05D140 8005C540 44816000 */  mtc1  $at, $f12
/* 05D144 8005C544 0C01A7CA */  jal   func_80069F28
/* 05D148 8005C548 00000000 */   nop   
/* 05D14C 8005C54C 3C01800E */  lui   $at, %hi(D_800E6A14) # $at, 0x800e
/* 05D150 8005C550 C604002C */  lwc1  $f4, 0x2c($s0)
/* 05D154 8005C554 C4296A10 */  lwc1  $f9, %lo(D_800E6A10)($at)
/* 05D158 8005C558 C4286A14 */  lwc1  $f8, %lo(D_800E6A14)($at)
/* 05D15C 8005C55C 460021A1 */  cvt.d.s $f6, $f4
/* 05D160 8005C560 46283282 */  mul.d $f10, $f6, $f8
/* 05D164 8005C564 44808000 */  mtc1  $zero, $f16
/* 05D168 8005C568 2408FFFF */  li    $t0, -1
/* 05D16C 8005C56C E610000C */  swc1  $f16, 0xc($s0)
/* 05D170 8005C570 462054A0 */  cvt.s.d $f18, $f10
/* 05D174 8005C574 E612002C */  swc1  $f18, 0x2c($s0)
.L8005C578:
/* 05D178 8005C578 8E0C0148 */  lw    $t4, 0x148($s0)
/* 05D17C 8005C57C 24050003 */  li    $a1, 3
/* 05D180 8005C580 11800011 */  beqz  $t4, .L8005C5C8
/* 05D184 8005C584 A2000187 */   sb    $zero, 0x187($s0)
/* 05D188 8005C588 C620001C */  lwc1  $f0, 0x1c($s1)
/* 05D18C 8005C58C C6220024 */  lwc1  $f2, 0x24($s1)
/* 05D190 8005C590 46000502 */  mul.s $f20, $f0, $f0
/* 05D194 8005C594 00000000 */  nop   
/* 05D198 8005C598 46021382 */  mul.s $f14, $f2, $f2
/* 05D19C 8005C59C 00000000 */  nop   
/* 05D1A0 8005C5A0 4614A102 */  mul.s $f4, $f20, $f20
/* 05D1A4 8005C5A4 00000000 */  nop   
/* 05D1A8 8005C5A8 460E7182 */  mul.s $f6, $f14, $f14
/* 05D1AC 8005C5AC 0C0326B4 */  jal   sqrtf
/* 05D1B0 8005C5B0 46062300 */   add.s $f12, $f4, $f6
/* 05D1B4 8005C5B4 46000207 */  neg.s $f8, $f0
/* 05D1B8 8005C5B8 44808000 */  mtc1  $zero, $f16
/* 05D1BC 8005C5BC E608002C */  swc1  $f8, 0x2c($s0)
/* 05D1C0 8005C5C0 2408FFFF */  li    $t0, -1
/* 05D1C4 8005C5C4 24050003 */  li    $a1, 3
.L8005C5C8:
/* 05D1C8 8005C5C8 8E2D0068 */  lw    $t5, 0x68($s1)
/* 05D1CC 8005C5CC 8223003B */  lb    $v1, 0x3b($s1)
/* 05D1D0 8005C5D0 8DA20000 */  lw    $v0, ($t5)
/* 05D1D4 8005C5D4 000378C0 */  sll   $t7, $v1, 3
/* 05D1D8 8005C5D8 8C440000 */  lw    $a0, ($v0)
/* 05D1DC 8005C5DC 00000000 */  nop   
/* 05D1E0 8005C5E0 8C8E0044 */  lw    $t6, 0x44($a0)
/* 05D1E4 8005C5E4 00000000 */  nop   
/* 05D1E8 8005C5E8 01CFC021 */  addu  $t8, $t6, $t7
/* 05D1EC 8005C5EC 8F190004 */  lw    $t9, 4($t8)
/* 05D1F0 8005C5F0 00000000 */  nop   
/* 05D1F4 8005C5F4 00195100 */  sll   $t2, $t9, 4
/* 05D1F8 8005C5F8 254BFFEF */  addiu $t3, $t2, -0x11
/* 05D1FC 8005C5FC 448B5000 */  mtc1  $t3, $f10
/* 05D200 8005C600 10A3003B */  beq   $a1, $v1, .L8005C6F0
/* 05D204 8005C604 46805520 */   cvt.s.w $f20, $f10
/* 05D208 8005C608 C612002C */  lwc1  $f18, 0x2c($s0)
/* 05D20C 8005C60C 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 05D210 8005C610 44812800 */  mtc1  $at, $f5
/* 05D214 8005C614 44802000 */  mtc1  $zero, $f4
/* 05D218 8005C618 46009021 */  cvt.d.s $f0, $f18
/* 05D21C 8005C61C 4624003C */  c.lt.d $f0, $f4
/* 05D220 8005C620 240C0001 */  li    $t4, 1
/* 05D224 8005C624 45000010 */  bc1f  .L8005C668
/* 05D228 8005C628 3C01800E */   lui   $at, %hi(D_800E6A1C) # $at, 0x800e
/* 05D22C 8005C62C A22C003B */  sb    $t4, 0x3b($s1)
/* 05D230 8005C630 C7A8005C */  lwc1  $f8, 0x5c($sp)
/* 05D234 8005C634 C606002C */  lwc1  $f6, 0x2c($s0)
/* 05D238 8005C638 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 05D23C 8005C63C 46083282 */  mul.s $f10, $f6, $f8
/* 05D240 8005C640 44812800 */  mtc1  $at, $f5
/* 05D244 8005C644 44802000 */  mtc1  $zero, $f4
/* 05D248 8005C648 C608000C */  lwc1  $f8, 0xc($s0)
/* 05D24C 8005C64C 460054A1 */  cvt.d.s $f18, $f10
/* 05D250 8005C650 46249182 */  mul.d $f6, $f18, $f4
/* 05D254 8005C654 460042A1 */  cvt.d.s $f10, $f8
/* 05D258 8005C658 46265481 */  sub.d $f18, $f10, $f6
/* 05D25C 8005C65C 46209120 */  cvt.s.d $f4, $f18
/* 05D260 8005C660 1000002B */  b     .L8005C710
/* 05D264 8005C664 E604000C */   swc1  $f4, 0xc($s0)
.L8005C668:
/* 05D268 8005C668 C4296A18 */  lwc1  $f9, %lo(D_800E6A18)($at)
/* 05D26C 8005C66C C4286A1C */  lwc1  $f8, %lo(D_800E6A1C)($at)
/* 05D270 8005C670 3C01800E */  lui   $at, %hi(D_800E6A24) # $at, 0x800e
/* 05D274 8005C674 4628003C */  c.lt.d $f0, $f8
/* 05D278 8005C678 240D0002 */  li    $t5, 2
/* 05D27C 8005C67C 45010008 */  bc1t  .L8005C6A0
/* 05D280 8005C680 00000000 */   nop   
/* 05D284 8005C684 C42B6A20 */  lwc1  $f11, %lo(D_800E6A20)($at)
/* 05D288 8005C688 C42A6A24 */  lwc1  $f10, %lo(D_800E6A24)($at)
/* 05D28C 8005C68C 00000000 */  nop   
/* 05D290 8005C690 4620503C */  c.lt.d $f10, $f0
/* 05D294 8005C694 00000000 */  nop   
/* 05D298 8005C698 4500000C */  bc1f  .L8005C6CC
/* 05D29C 8005C69C 00000000 */   nop   
.L8005C6A0:
/* 05D2A0 8005C6A0 A22D003B */  sb    $t5, 0x3b($s1)
/* 05D2A4 8005C6A4 C7B2005C */  lwc1  $f18, 0x5c($sp)
/* 05D2A8 8005C6A8 C606002C */  lwc1  $f6, 0x2c($s0)
/* 05D2AC 8005C6AC 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 05D2B0 8005C6B0 46123102 */  mul.s $f4, $f6, $f18
/* 05D2B4 8005C6B4 44814000 */  mtc1  $at, $f8
/* 05D2B8 8005C6B8 C606000C */  lwc1  $f6, 0xc($s0)
/* 05D2BC 8005C6BC 46082282 */  mul.s $f10, $f4, $f8
/* 05D2C0 8005C6C0 460A3481 */  sub.s $f18, $f6, $f10
/* 05D2C4 8005C6C4 10000012 */  b     .L8005C710
/* 05D2C8 8005C6C8 E612000C */   swc1  $f18, 0xc($s0)
.L8005C6CC:
/* 05D2CC 8005C6CC A220003B */  sb    $zero, 0x3b($s1)
/* 05D2D0 8005C6D0 C604000C */  lwc1  $f4, 0xc($s0)
/* 05D2D4 8005C6D4 C7A6005C */  lwc1  $f6, 0x5c($sp)
/* 05D2D8 8005C6D8 46002221 */  cvt.d.s $f8, $f4
/* 05D2DC 8005C6DC 460032A1 */  cvt.d.s $f10, $f6
/* 05D2E0 8005C6E0 462A4480 */  add.d $f18, $f8, $f10
/* 05D2E4 8005C6E4 46209120 */  cvt.s.d $f4, $f18
/* 05D2E8 8005C6E8 10000009 */  b     .L8005C710
/* 05D2EC 8005C6EC E604000C */   swc1  $f4, 0xc($s0)
.L8005C6F0:
/* 05D2F0 8005C6F0 C7A6005C */  lwc1  $f6, 0x5c($sp)
/* 05D2F4 8005C6F4 C608000C */  lwc1  $f8, 0xc($s0)
/* 05D2F8 8005C6F8 46003021 */  cvt.d.s $f0, $f6
/* 05D2FC 8005C6FC 46200480 */  add.d $f18, $f0, $f0
/* 05D300 8005C700 460042A1 */  cvt.d.s $f10, $f8
/* 05D304 8005C704 46325100 */  add.d $f4, $f10, $f18
/* 05D308 8005C708 462021A0 */  cvt.s.d $f6, $f4
/* 05D30C 8005C70C E606000C */  swc1  $f6, 0xc($s0)
.L8005C710:
/* 05D310 8005C710 C600000C */  lwc1  $f0, 0xc($s0)
/* 05D314 8005C714 00000000 */  nop   
/* 05D318 8005C718 4610003C */  c.lt.s $f0, $f16
/* 05D31C 8005C71C 00000000 */  nop   
/* 05D320 8005C720 4500000A */  bc1f  .L8005C74C
/* 05D324 8005C724 00000000 */   nop   
.L8005C728:
/* 05D328 8005C728 46140200 */  add.s $f8, $f0, $f20
/* 05D32C 8005C72C E608000C */  swc1  $f8, 0xc($s0)
/* 05D330 8005C730 A4480010 */  sh    $t0, 0x10($v0)
/* 05D334 8005C734 C600000C */  lwc1  $f0, 0xc($s0)
/* 05D338 8005C738 00000000 */  nop   
/* 05D33C 8005C73C 4610003C */  c.lt.s $f0, $f16
/* 05D340 8005C740 00000000 */  nop   
/* 05D344 8005C744 4501FFF8 */  bc1t  .L8005C728
/* 05D348 8005C748 00000000 */   nop   
.L8005C74C:
/* 05D34C 8005C74C 4600A03C */  c.lt.s $f20, $f0
/* 05D350 8005C750 00000000 */  nop   
/* 05D354 8005C754 4500000A */  bc1f  .L8005C780
/* 05D358 8005C758 00000000 */   nop   
.L8005C75C:
/* 05D35C 8005C75C 46140281 */  sub.s $f10, $f0, $f20
/* 05D360 8005C760 E60A000C */  swc1  $f10, 0xc($s0)
/* 05D364 8005C764 A4480010 */  sh    $t0, 0x10($v0)
/* 05D368 8005C768 C600000C */  lwc1  $f0, 0xc($s0)
/* 05D36C 8005C76C 00000000 */  nop   
/* 05D370 8005C770 4600A03C */  c.lt.s $f20, $f0
/* 05D374 8005C774 00000000 */  nop   
/* 05D378 8005C778 4501FFF8 */  bc1t  .L8005C75C
/* 05D37C 8005C77C 00000000 */   nop   
.L8005C780:
/* 05D380 8005C780 844E0010 */  lh    $t6, 0x10($v0)
/* 05D384 8005C784 00000000 */  nop   
/* 05D388 8005C788 150E000A */  bne   $t0, $t6, .L8005C7B4
/* 05D38C 8005C78C 00000000 */   nop   
/* 05D390 8005C790 822F003B */  lb    $t7, 0x3b($s1)
/* 05D394 8005C794 00000000 */  nop   
/* 05D398 8005C798 14AF0006 */  bne   $a1, $t7, .L8005C7B4
/* 05D39C 8005C79C 00000000 */   nop   
/* 05D3A0 8005C7A0 921801CD */  lbu   $t8, 0x1cd($s0)
/* 05D3A4 8005C7A4 00000000 */  nop   
/* 05D3A8 8005C7A8 A238003B */  sb    $t8, 0x3b($s1)
/* 05D3AC 8005C7AC C600000C */  lwc1  $f0, 0xc($s0)
/* 05D3B0 8005C7B0 00000000 */  nop   
.L8005C7B4:
/* 05D3B4 8005C7B4 444AF800 */  cfc1  $t2, $31
/* 05D3B8 8005C7B8 86390018 */  lh    $t9, 0x18($s1)
/* 05D3BC 8005C7BC 35410003 */  ori   $at, $t2, 3
/* 05D3C0 8005C7C0 38210002 */  xori  $at, $at, 2
/* 05D3C4 8005C7C4 44C1F800 */  ctc1  $at, $31
/* 05D3C8 8005C7C8 A7B90054 */  sh    $t9, 0x54($sp)
/* 05D3CC 8005C7CC 460004A4 */  cvt.w.s $f18, $f0
/* 05D3D0 8005C7D0 822C003B */  lb    $t4, 0x3b($s1)
/* 05D3D4 8005C7D4 440B9000 */  mfc1  $t3, $f18
/* 05D3D8 8005C7D8 24010001 */  li    $at, 1
/* 05D3DC 8005C7DC 44CAF800 */  ctc1  $t2, $31
/* 05D3E0 8005C7E0 AE200074 */  sw    $zero, 0x74($s1)
/* 05D3E4 8005C7E4 1581000C */  bne   $t4, $at, .L8005C818
/* 05D3E8 8005C7E8 A62B0018 */   sh    $t3, 0x18($s1)
/* 05D3EC 8005C7EC 87A60054 */  lh    $a2, 0x54($sp)
/* 05D3F0 8005C7F0 240D00AD */  li    $t5, 173
/* 05D3F4 8005C7F4 AFAD0010 */  sw    $t5, 0x10($sp)
/* 05D3F8 8005C7F8 02202025 */  move  $a0, $s1
/* 05D3FC 8005C7FC 24050002 */  li    $a1, 2
/* 05D400 8005C800 0C0044F3 */  jal   func_800113CC
/* 05D404 8005C804 240700AC */   li    $a3, 172
/* 05D408 8005C808 8E2E0074 */  lw    $t6, 0x74($s1)
/* 05D40C 8005C80C 00000000 */  nop   
/* 05D410 8005C810 35CF0003 */  ori   $t7, $t6, 3
/* 05D414 8005C814 AE2F0074 */  sw    $t7, 0x74($s1)
.L8005C818:
/* 05D418 8005C818 8FA50058 */  lw    $a1, 0x58($sp)
/* 05D41C 8005C81C 0C02BF0F */  jal   func_800AFC3C
/* 05D420 8005C820 02202025 */   move  $a0, $s1
/* 05D424 8005C824 02202025 */  move  $a0, $s1
/* 05D428 8005C828 02002825 */  move  $a1, $s0
/* 05D42C 8005C82C 0C017412 */  jal   func_8005D048
/* 05D430 8005C830 24060078 */   li    $a2, 120
/* 05D434 8005C834 8222003B */  lb    $v0, 0x3b($s1)
/* 05D438 8005C838 24010001 */  li    $at, 1
/* 05D43C 8005C83C 10410006 */  beq   $v0, $at, .L8005C858
/* 05D440 8005C840 00002025 */   move  $a0, $zero
/* 05D444 8005C844 24010002 */  li    $at, 2
/* 05D448 8005C848 10410005 */  beq   $v0, $at, .L8005C860
/* 05D44C 8005C84C 24050100 */   li    $a1, 256
/* 05D450 8005C850 10000003 */  b     .L8005C860
/* 05D454 8005C854 24051500 */   li    $a1, 5376
.L8005C858:
/* 05D458 8005C858 10000001 */  b     .L8005C860
/* 05D45C 8005C85C 24052500 */   li    $a1, 9472
.L8005C860:
/* 05D460 8005C860 0C006EB2 */  jal   getPlayerStruct
/* 05D464 8005C864 AFA50038 */   sw    $a1, 0x38($sp)
/* 05D468 8005C868 AFA20030 */  sw    $v0, 0x30($sp)
/* 05D46C 8005C86C C626000C */  lwc1  $f6, 0xc($s1)
/* 05D470 8005C870 C444000C */  lwc1  $f4, 0xc($v0)
/* 05D474 8005C874 C62A0014 */  lwc1  $f10, 0x14($s1)
/* 05D478 8005C878 46062501 */  sub.s $f20, $f4, $f6
/* 05D47C 8005C87C C4480014 */  lwc1  $f8, 0x14($v0)
/* 05D480 8005C880 4614A482 */  mul.s $f18, $f20, $f20
/* 05D484 8005C884 460A4381 */  sub.s $f14, $f8, $f10
/* 05D488 8005C888 E7AE0048 */  swc1  $f14, 0x48($sp)
/* 05D48C 8005C88C 460E7102 */  mul.s $f4, $f14, $f14
/* 05D490 8005C890 0C0326B4 */  jal   sqrtf
/* 05D494 8005C894 46049300 */   add.s $f12, $f18, $f4
/* 05D498 8005C898 3C01800E */  lui   $at, %hi(D_800E6A2C) # $at, 0x800e
/* 05D49C 8005C89C C4296A28 */  lwc1  $f9, %lo(D_800E6A28)($at)
/* 05D4A0 8005C8A0 C4286A2C */  lwc1  $f8, %lo(D_800E6A2C)($at)
/* 05D4A4 8005C8A4 460001A1 */  cvt.d.s $f6, $f0
/* 05D4A8 8005C8A8 4628303C */  c.lt.d $f6, $f8
/* 05D4AC 8005C8AC 8FA50038 */  lw    $a1, 0x38($sp)
/* 05D4B0 8005C8B0 C7AE0048 */  lwc1  $f14, 0x48($sp)
/* 05D4B4 8005C8B4 4500001E */  bc1f  .L8005C930
/* 05D4B8 8005C8B8 00000000 */   nop   
/* 05D4BC 8005C8BC 4600A306 */  mov.s $f12, $f20
/* 05D4C0 8005C8C0 0C01C1D4 */  jal   func_80070750
/* 05D4C4 8005C8C4 AFA50038 */   sw    $a1, 0x38($sp)
/* 05D4C8 8005C8C8 86380000 */  lh    $t8, ($s1)
/* 05D4CC 8005C8CC 34018000 */  li    $at, 32768
/* 05D4D0 8005C8D0 3319FFFF */  andi  $t9, $t8, 0xffff
/* 05D4D4 8005C8D4 00591823 */  subu  $v1, $v0, $t9
/* 05D4D8 8005C8D8 00611821 */  addu  $v1, $v1, $at
/* 05D4DC 8005C8DC 8FA50038 */  lw    $a1, 0x38($sp)
/* 05D4E0 8005C8E0 34018001 */  li    $at, 32769
/* 05D4E4 8005C8E4 0061082A */  slt   $at, $v1, $at
/* 05D4E8 8005C8E8 14200004 */  bnez  $at, .L8005C8FC
/* 05D4EC 8005C8EC 00051023 */   negu  $v0, $a1
/* 05D4F0 8005C8F0 3C01FFFF */  lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 05D4F4 8005C8F4 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 05D4F8 8005C8F8 00611821 */  addu  $v1, $v1, $at
.L8005C8FC:
/* 05D4FC 8005C8FC 28618000 */  slti  $at, $v1, -0x8000
/* 05D500 8005C900 10200002 */  beqz  $at, .L8005C90C
/* 05D504 8005C904 3401FFFF */   li    $at, 65535
/* 05D508 8005C908 00611821 */  addu  $v1, $v1, $at
.L8005C90C:
/* 05D50C 8005C90C 00A3082A */  slt   $at, $a1, $v1
/* 05D510 8005C910 10200003 */  beqz  $at, .L8005C920
/* 05D514 8005C914 0062082A */   slt   $at, $v1, $v0
/* 05D518 8005C918 00A01825 */  move  $v1, $a1
/* 05D51C 8005C91C 0062082A */  slt   $at, $v1, $v0
.L8005C920:
/* 05D520 8005C920 10200002 */  beqz  $at, .L8005C92C
/* 05D524 8005C924 00000000 */   nop   
/* 05D528 8005C928 00401825 */  move  $v1, $v0
.L8005C92C:
/* 05D52C 8005C92C A603016C */  sh    $v1, 0x16c($s0)
.L8005C930:
/* 05D530 8005C930 822A003B */  lb    $t2, 0x3b($s1)
/* 05D534 8005C934 24010001 */  li    $at, 1
/* 05D538 8005C938 1541000B */  bne   $t2, $at, .L8005C968
/* 05D53C 8005C93C 3C028012 */   lui   $v0, %hi(D_8011D5C0) # $v0, 0x8012
/* 05D540 8005C940 820B01E7 */  lb    $t3, 0x1e7($s0)
/* 05D544 8005C944 00000000 */  nop   
/* 05D548 8005C948 316C001F */  andi  $t4, $t3, 0x1f
/* 05D54C 8005C94C 2981000A */  slti  $at, $t4, 0xa
/* 05D550 8005C950 10200006 */  beqz  $at, .L8005C96C
/* 05D554 8005C954 8FA30030 */   lw    $v1, 0x30($sp)
/* 05D558 8005C958 860D016C */  lh    $t5, 0x16c($s0)
/* 05D55C 8005C95C 00000000 */  nop   
/* 05D560 8005C960 000D7043 */  sra   $t6, $t5, 1
/* 05D564 8005C964 A60E016C */  sh    $t6, 0x16c($s0)
.L8005C968:
/* 05D568 8005C968 8FA30030 */  lw    $v1, 0x30($sp)
.L8005C96C:
/* 05D56C 8005C96C 2442D5C0 */  addiu $v0, %lo(D_8011D5C0) # addiu $v0, $v0, -0x2a40
/* 05D570 8005C970 C4420000 */  lwc1  $f2, ($v0)
/* 05D574 8005C974 C4600010 */  lwc1  $f0, 0x10($v1)
/* 05D578 8005C978 44809000 */  mtc1  $zero, $f18
/* 05D57C 8005C97C 4600103C */  c.lt.s $f2, $f0
/* 05D580 8005C980 8C700064 */  lw    $s0, 0x64($v1)
/* 05D584 8005C984 45000005 */  bc1f  .L8005C99C
/* 05D588 8005C988 3C014079 */   li    $at, 0x40790000 # 3.890625
/* 05D58C 8005C98C E4400000 */  swc1  $f0, ($v0)
/* 05D590 8005C990 C4600010 */  lwc1  $f0, 0x10($v1)
/* 05D594 8005C994 C4420000 */  lwc1  $f2, ($v0)
/* 05D598 8005C998 00000000 */  nop   
.L8005C99C:
/* 05D59C 8005C99C 44819800 */  mtc1  $at, $f19
/* 05D5A0 8005C9A0 460002A1 */  cvt.d.s $f10, $f0
/* 05D5A4 8005C9A4 46325100 */  add.d $f4, $f10, $f18
/* 05D5A8 8005C9A8 460011A1 */  cvt.d.s $f6, $f2
/* 05D5AC 8005C9AC 4626203C */  c.lt.d $f4, $f6
/* 05D5B0 8005C9B0 00000000 */  nop   
/* 05D5B4 8005C9B4 4500000F */  bc1f  .L8005C9F4
/* 05D5B8 8005C9B8 00000000 */   nop   
/* 05D5BC 8005C9BC 0C030063 */  jal   func_800C018C
/* 05D5C0 8005C9C0 00000000 */   nop   
/* 05D5C4 8005C9C4 14400007 */  bnez  $v0, .L8005C9E4
/* 05D5C8 8005C9C8 00000000 */   nop   
/* 05D5CC 8005C9CC 0C027B20 */  jal   is_in_two_player_adventure
/* 05D5D0 8005C9D0 00000000 */   nop   
/* 05D5D4 8005C9D4 10400003 */  beqz  $v0, .L8005C9E4
/* 05D5D8 8005C9D8 00000000 */   nop   
/* 05D5DC 8005C9DC 0C01BCE6 */  jal   func_8006F398
/* 05D5E0 8005C9E0 00000000 */   nop   
.L8005C9E4:
/* 05D5E4 8005C9E4 0C01BC50 */  jal   func_8006F140
/* 05D5E8 8005C9E8 24040001 */   li    $a0, 1
/* 05D5EC 8005C9EC 8FA30030 */  lw    $v1, 0x30($sp)
/* 05D5F0 8005C9F0 00000000 */  nop   
.L8005C9F4:
/* 05D5F4 8005C9F4 8C62004C */  lw    $v0, 0x4c($v1)
/* 05D5F8 8005C9F8 3C058012 */  lui   $a1, %hi(D_8011D5C4) # $a1, 0x8012
/* 05D5FC 8005C9FC 8C4F0000 */  lw    $t7, ($v0)
/* 05D600 8005CA00 24A5D5C4 */  addiu $a1, %lo(D_8011D5C4) # addiu $a1, $a1, -0x2a3c
/* 05D604 8005CA04 162F000B */  bne   $s1, $t7, .L8005CA34
/* 05D608 8005CA08 00000000 */   nop   
/* 05D60C 8005CA0C 84580014 */  lh    $t8, 0x14($v0)
/* 05D610 8005CA10 00000000 */  nop   
/* 05D614 8005CA14 33190008 */  andi  $t9, $t8, 8
/* 05D618 8005CA18 13200006 */  beqz  $t9, .L8005CA34
/* 05D61C 8005CA1C 00000000 */   nop   
/* 05D620 8005CA20 822A003B */  lb    $t2, 0x3b($s1)
/* 05D624 8005CA24 24010001 */  li    $at, 1
/* 05D628 8005CA28 15410002 */  bne   $t2, $at, .L8005CA34
/* 05D62C 8005CA2C 240B0004 */   li    $t3, 4
/* 05D630 8005CA30 A20B0187 */  sb    $t3, 0x187($s0)
.L8005CA34:
/* 05D634 8005CA34 820C01D8 */  lb    $t4, 0x1d8($s0)
/* 05D638 8005CA38 00000000 */  nop   
/* 05D63C 8005CA3C 11800008 */  beqz  $t4, .L8005CA60
/* 05D640 8005CA40 8FBF002C */   lw    $ra, 0x2c($sp)
/* 05D644 8005CA44 80AD0000 */  lb    $t5, ($a1)
/* 05D648 8005CA48 240E0001 */  li    $t6, 1
/* 05D64C 8005CA4C 15A00003 */  bnez  $t5, .L8005CA5C
/* 05D650 8005CA50 02002025 */   move  $a0, $s0
/* 05D654 8005CA54 0C0172DA */  jal   func_8005CB68
/* 05D658 8005CA58 A0AE0000 */   sb    $t6, ($a1)
.L8005CA5C:
/* 05D65C 8005CA5C 8FBF002C */  lw    $ra, 0x2c($sp)
.L8005CA60:
/* 05D660 8005CA60 C7B50018 */  lwc1  $f21, 0x18($sp)
/* 05D664 8005CA64 C7B4001C */  lwc1  $f20, 0x1c($sp)
/* 05D668 8005CA68 8FB00024 */  lw    $s0, 0x24($sp)
/* 05D66C 8005CA6C 8FB10028 */  lw    $s1, 0x28($sp)
/* 05D670 8005CA70 03E00008 */  jr    $ra
/* 05D674 8005CA74 27BD0058 */   addiu $sp, $sp, 0x58

