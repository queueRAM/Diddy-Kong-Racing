.late_rodata
glabel jpt_800E9360
.word L800C4A88, L800C4A78, L800C4AD0, L800C4AE8, L800C4ADC, L800C4AE8, L800C4AE8, L800C4AE8, L800C4AE8, L800C4AE8, L800C4AE8, L800C4AE8, L800C4AE8, L800C4AE8, L800C4AE8, L800C4AE8, L800C4AE8, L800C4AE8, L800C4AE8, L800C4AE8, L800C4AE8, L800C4AE8, L800C4AE8, L800C4A6C

.text
glabel func_800C45A4
/* 0C51A4 800C45A4 27BDFF78 */  addiu $sp, $sp, -0x88
/* 0C51A8 800C45A8 AFB50028 */  sw    $s5, 0x28($sp)
/* 0C51AC 800C45AC AFB40024 */  sw    $s4, 0x24($sp)
/* 0C51B0 800C45B0 AFB30020 */  sw    $s3, 0x20($sp)
/* 0C51B4 800C45B4 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0C51B8 800C45B8 AFB10018 */  sw    $s1, 0x18($sp)
/* 0C51BC 800C45BC 00808825 */  move  $s1, $a0
/* 0C51C0 800C45C0 00A09025 */  move  $s2, $a1
/* 0C51C4 800C45C4 00E09825 */  move  $s3, $a3
/* 0C51C8 800C45C8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C51CC 800C45CC AFB00014 */  sw    $s0, 0x14($sp)
/* 0C51D0 800C45D0 AFA60090 */  sw    $a2, 0x90($sp)
/* 0C51D4 800C45D4 2415FFFF */  li    $s5, -1
/* 0C51D8 800C45D8 10C001E8 */  beqz  $a2, .L800C4D7C
/* 0C51DC 800C45DC 2414FFFF */   li    $s4, -1
/* 0C51E0 800C45E0 90AF001D */  lbu   $t7, 0x1d($a1)
/* 0C51E4 800C45E4 3C198013 */  lui   $t9, %hi(gFonts) # $t9, 0x8013
/* 0C51E8 800C45E8 8F39A7E4 */  lw    $t9, %lo(gFonts)($t9)
/* 0C51EC 800C45EC 8C830000 */  lw    $v1, ($a0)
/* 0C51F0 800C45F0 000FC280 */  sll   $t8, $t7, 0xa
/* 0C51F4 800C45F4 84B00000 */  lh    $s0, ($a1)
/* 0C51F8 800C45F8 84BF0002 */  lh    $ra, 2($a1)
/* 0C51FC 800C45FC 03195821 */  addu  $t3, $t8, $t9
/* 0C5200 800C4600 246E0008 */  addiu $t6, $v1, 8
/* 0C5204 800C4604 AC8E0000 */  sw    $t6, ($a0)
/* 0C5208 800C4608 3C18800E */  lui   $t8, %hi(dDialogueBoxBegin) # $t8, 0x800e
/* 0C520C 800C460C 27183690 */  addiu $t8, %lo(dDialogueBoxBegin) # addiu $t8, $t8, 0x3690
/* 0C5210 800C4610 3C0F0600 */  lui   $t7, 0x600
/* 0C5214 800C4614 3C198013 */  lui   $t9, %hi(gDialogueBoxBackground) # $t9, 0x8013
/* 0C5218 800C4618 AC6F0000 */  sw    $t7, ($v1)
/* 0C521C 800C461C AC780004 */  sw    $t8, 4($v1)
/* 0C5220 800C4620 8F39A7E8 */  lw    $t9, %lo(gDialogueBoxBackground)($t9)
/* 0C5224 800C4624 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 0C5228 800C4628 10B9005B */  beq   $a1, $t9, .L800C4798
/* 0C522C 800C462C 326E0005 */   andi  $t6, $s3, 5
/* 0C5230 800C4630 84A4000A */  lh    $a0, 0xa($a1)
/* 0C5234 800C4634 84A50006 */  lh    $a1, 6($a1)
/* 0C5238 800C4638 44810000 */  mtc1  $at, $f0
/* 0C523C 800C463C 00857023 */  subu  $t6, $a0, $a1
/* 0C5240 800C4640 25CF0001 */  addiu $t7, $t6, 1
/* 0C5244 800C4644 448F2000 */  mtc1  $t7, $f4
/* 0C5248 800C4648 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0C524C 800C464C 468021A0 */  cvt.s.w $f6, $f4
/* 0C5250 800C4650 44814000 */  mtc1  $at, $f8
/* 0C5254 800C4654 C7B00098 */  lwc1  $f16, 0x98($sp)
/* 0C5258 800C4658 46083283 */  div.s $f10, $f6, $f8
/* 0C525C 800C465C 8E270000 */  lw    $a3, ($s1)
/* 0C5260 800C4660 00A43021 */  addu  $a2, $a1, $a0
/* 0C5264 800C4664 24EE0008 */  addiu $t6, $a3, 8
/* 0C5268 800C4668 AE2E0000 */  sw    $t6, ($s1)
/* 0C526C 800C466C 864F0004 */  lh    $t7, 4($s2)
/* 0C5270 800C4670 0006C843 */  sra   $t9, $a2, 1
/* 0C5274 800C4674 448F3000 */  mtc1  $t7, $f6
/* 0C5278 800C4678 03203025 */  move  $a2, $t9
/* 0C527C 800C467C 46105482 */  mul.s $f18, $f10, $f16
/* 0C5280 800C4680 4458F800 */  cfc1  $t8, $31
/* 0C5284 800C4684 00000000 */  nop   
/* 0C5288 800C4688 37010003 */  ori   $at, $t8, 3
/* 0C528C 800C468C 38210002 */  xori  $at, $at, 2
/* 0C5290 800C4690 44C1F800 */  ctc1  $at, $31
/* 0C5294 800C4694 37010003 */  ori   $at, $t8, 3
/* 0C5298 800C4698 46009124 */  cvt.w.s $f4, $f18
/* 0C529C 800C469C 38210002 */  xori  $at, $at, 2
/* 0C52A0 800C46A0 44D8F800 */  ctc1  $t8, $31
/* 0C52A4 800C46A4 44022000 */  mfc1  $v0, $f4
/* 0C52A8 800C46A8 46803220 */  cvt.s.w $f8, $f6
/* 0C52AC 800C46AC 46004282 */  mul.s $f10, $f8, $f0
/* 0C52B0 800C46B0 44C1F800 */  ctc1  $at, $31
/* 0C52B4 800C46B4 3C01ED00 */  lui   $at, 0xed00
/* 0C52B8 800C46B8 46005424 */  cvt.w.s $f16, $f10
/* 0C52BC 800C46BC 44198000 */  mfc1  $t9, $f16
/* 0C52C0 800C46C0 44D8F800 */  ctc1  $t8, $31
/* 0C52C4 800C46C4 332E0FFF */  andi  $t6, $t9, 0xfff
/* 0C52C8 800C46C8 00C2C823 */  subu  $t9, $a2, $v0
/* 0C52CC 800C46CC 44999000 */  mtc1  $t9, $f18
/* 0C52D0 800C46D0 000E7B00 */  sll   $t7, $t6, 0xc
/* 0C52D4 800C46D4 46809120 */  cvt.s.w $f4, $f18
/* 0C52D8 800C46D8 01E1C025 */  or    $t8, $t7, $at
/* 0C52DC 800C46DC 46002182 */  mul.s $f6, $f4, $f0
/* 0C52E0 800C46E0 444EF800 */  cfc1  $t6, $31
/* 0C52E4 800C46E4 00000000 */  nop   
/* 0C52E8 800C46E8 35C10003 */  ori   $at, $t6, 3
/* 0C52EC 800C46EC 38210002 */  xori  $at, $at, 2
/* 0C52F0 800C46F0 44C1F800 */  ctc1  $at, $31
/* 0C52F4 800C46F4 00000000 */  nop   
/* 0C52F8 800C46F8 46003224 */  cvt.w.s $f8, $f6
/* 0C52FC 800C46FC 440F4000 */  mfc1  $t7, $f8
/* 0C5300 800C4700 44CEF800 */  ctc1  $t6, $31
/* 0C5304 800C4704 31F90FFF */  andi  $t9, $t7, 0xfff
/* 0C5308 800C4708 03197025 */  or    $t6, $t8, $t9
/* 0C530C 800C470C ACEE0000 */  sw    $t6, ($a3)
/* 0C5310 800C4710 864F0008 */  lh    $t7, 8($s2)
/* 0C5314 800C4714 00000000 */  nop   
/* 0C5318 800C4718 448F5000 */  mtc1  $t7, $f10
/* 0C531C 800C471C 00000000 */  nop   
/* 0C5320 800C4720 46805420 */  cvt.s.w $f16, $f10
/* 0C5324 800C4724 46008482 */  mul.s $f18, $f16, $f0
/* 0C5328 800C4728 4458F800 */  cfc1  $t8, $31
/* 0C532C 800C472C 00000000 */  nop   
/* 0C5330 800C4730 37010003 */  ori   $at, $t8, 3
/* 0C5334 800C4734 38210002 */  xori  $at, $at, 2
/* 0C5338 800C4738 44C1F800 */  ctc1  $at, $31
/* 0C533C 800C473C 00000000 */  nop   
/* 0C5340 800C4740 46009124 */  cvt.w.s $f4, $f18
/* 0C5344 800C4744 44D8F800 */  ctc1  $t8, $31
/* 0C5348 800C4748 00C2C021 */  addu  $t8, $a2, $v0
/* 0C534C 800C474C 44983000 */  mtc1  $t8, $f6
/* 0C5350 800C4750 44192000 */  mfc1  $t9, $f4
/* 0C5354 800C4754 46803220 */  cvt.s.w $f8, $f6
/* 0C5358 800C4758 332E0FFF */  andi  $t6, $t9, 0xfff
/* 0C535C 800C475C 000E7B00 */  sll   $t7, $t6, 0xc
/* 0C5360 800C4760 46004282 */  mul.s $f10, $f8, $f0
/* 0C5364 800C4764 4459F800 */  cfc1  $t9, $31
/* 0C5368 800C4768 00000000 */  nop   
/* 0C536C 800C476C 37210003 */  ori   $at, $t9, 3
/* 0C5370 800C4770 38210002 */  xori  $at, $at, 2
/* 0C5374 800C4774 44C1F800 */  ctc1  $at, $31
/* 0C5378 800C4778 00000000 */  nop   
/* 0C537C 800C477C 46005424 */  cvt.w.s $f16, $f10
/* 0C5380 800C4780 440E8000 */  mfc1  $t6, $f16
/* 0C5384 800C4784 44D9F800 */  ctc1  $t9, $31
/* 0C5388 800C4788 31D80FFF */  andi  $t8, $t6, 0xfff
/* 0C538C 800C478C 01F8C825 */  or    $t9, $t7, $t8
/* 0C5390 800C4790 ACF90004 */  sw    $t9, 4($a3)
/* 0C5394 800C4794 326E0005 */  andi  $t6, $s3, 5
.L800C4798:
/* 0C5398 800C4798 11C00010 */  beqz  $t6, .L800C47DC
/* 0C539C 800C479C 02002825 */   move  $a1, $s0
/* 0C53A0 800C47A0 9246001D */  lbu   $a2, 0x1d($s2)
/* 0C53A4 800C47A4 AFBF007C */  sw    $ra, 0x7c($sp)
/* 0C53A8 800C47A8 8FA40090 */  lw    $a0, 0x90($sp)
/* 0C53AC 800C47AC 0C031368 */  jal   func_800C4DA0
/* 0C53B0 800C47B0 AFAB0034 */   sw    $t3, 0x34($sp)
/* 0C53B4 800C47B4 8FAB0034 */  lw    $t3, 0x34($sp)
/* 0C53B8 800C47B8 8FBF007C */  lw    $ra, 0x7c($sp)
/* 0C53BC 800C47BC 326F0001 */  andi  $t7, $s3, 1
/* 0C53C0 800C47C0 11E00004 */  beqz  $t7, .L800C47D4
/* 0C53C4 800C47C4 0040A825 */   move  $s5, $v0
/* 0C53C8 800C47C8 02028023 */  subu  $s0, $s0, $v0
/* 0C53CC 800C47CC 10000003 */  b     .L800C47DC
/* 0C53D0 800C47D0 26100001 */   addiu $s0, $s0, 1
.L800C47D4:
/* 0C53D4 800C47D4 0002C043 */  sra   $t8, $v0, 1
/* 0C53D8 800C47D8 02188023 */  subu  $s0, $s0, $t8
.L800C47DC:
/* 0C53DC 800C47DC 32790002 */  andi  $t9, $s3, 2
/* 0C53E0 800C47E0 13200005 */  beqz  $t9, .L800C47F8
/* 0C53E4 800C47E4 326F0008 */   andi  $t7, $s3, 8
/* 0C53E8 800C47E8 956E0022 */  lhu   $t6, 0x22($t3)
/* 0C53EC 800C47EC 00000000 */  nop   
/* 0C53F0 800C47F0 03EEF823 */  subu  $ra, $ra, $t6
/* 0C53F4 800C47F4 27FF0001 */  addiu $ra, $ra, 1
.L800C47F8:
/* 0C53F8 800C47F8 11E00005 */  beqz  $t7, .L800C4810
/* 0C53FC 800C47FC 00000000 */   nop   
/* 0C5400 800C4800 95780022 */  lhu   $t8, 0x22($t3)
/* 0C5404 800C4804 00000000 */  nop   
/* 0C5408 800C4808 0018C843 */  sra   $t9, $t8, 1
/* 0C540C 800C480C 03F9F823 */  subu  $ra, $ra, $t9
.L800C4810:
/* 0C5410 800C4810 924E001B */  lbu   $t6, 0x1b($s2)
/* 0C5414 800C4814 00000000 */  nop   
/* 0C5418 800C4818 11C0004A */  beqz  $t6, .L800C4944
/* 0C541C 800C481C 00000000 */   nop   
/* 0C5420 800C4820 8E230000 */  lw    $v1, ($s1)
/* 0C5424 800C4824 3C18FB00 */  lui   $t8, 0xfb00
/* 0C5428 800C4828 246F0008 */  addiu $t7, $v1, 8
/* 0C542C 800C482C AE2F0000 */  sw    $t7, ($s1)
/* 0C5430 800C4830 AC780000 */  sw    $t8, ($v1)
/* 0C5434 800C4834 924E0018 */  lbu   $t6, 0x18($s2)
/* 0C5438 800C4838 92590019 */  lbu   $t9, 0x19($s2)
/* 0C543C 800C483C 000E7E00 */  sll   $t7, $t6, 0x18
/* 0C5440 800C4840 00197400 */  sll   $t6, $t9, 0x10
/* 0C5444 800C4844 01EEC025 */  or    $t8, $t7, $t6
/* 0C5448 800C4848 924F001A */  lbu   $t7, 0x1a($s2)
/* 0C544C 800C484C 2401FFFF */  li    $at, -1
/* 0C5450 800C4850 000F7200 */  sll   $t6, $t7, 8
/* 0C5454 800C4854 030EC825 */  or    $t9, $t8, $t6
/* 0C5458 800C4858 9258001B */  lbu   $t8, 0x1b($s2)
/* 0C545C 800C485C 02002825 */  move  $a1, $s0
/* 0C5460 800C4860 03387025 */  or    $t6, $t9, $t8
/* 0C5464 800C4864 16A10009 */  bne   $s5, $at, .L800C488C
/* 0C5468 800C4868 AC6E0004 */   sw    $t6, 4($v1)
/* 0C546C 800C486C 9246001D */  lbu   $a2, 0x1d($s2)
/* 0C5470 800C4870 AFBF007C */  sw    $ra, 0x7c($sp)
/* 0C5474 800C4874 8FA40090 */  lw    $a0, 0x90($sp)
/* 0C5478 800C4878 0C031368 */  jal   func_800C4DA0
/* 0C547C 800C487C AFAB0034 */   sw    $t3, 0x34($sp)
/* 0C5480 800C4880 8FAB0034 */  lw    $t3, 0x34($sp)
/* 0C5484 800C4884 8FBF007C */  lw    $ra, 0x7c($sp)
/* 0C5488 800C4888 0040A825 */  move  $s5, $v0
.L800C488C:
/* 0C548C 800C488C 8E230000 */  lw    $v1, ($s1)
/* 0C5490 800C4890 956F0022 */  lhu   $t7, 0x22($t3)
/* 0C5494 800C4894 24790008 */  addiu $t9, $v1, 8
/* 0C5498 800C4898 AE390000 */  sw    $t9, ($s1)
/* 0C549C 800C489C 3C180702 */  lui   $t8, (0x07020010 >> 16) # lui $t8, 0x702
                                             # dDialogueBoxDrawModes - 0x7FFFFFF0 = 0xE36D8
/* 0C54A0 800C48A0 3C0E000E */  lui   $t6, %hi(dDialogueBoxDrawModes - 0x7FFFFFF0) # $t6, 0xe
/* 0C54A4 800C48A4 25CE36D8 */  addiu $t6, %lo(dDialogueBoxDrawModes - 0x7FFFFFF0) # addiu $t6, $t6, 0x36d8
/* 0C54A8 800C48A8 37180010 */  ori   $t8, (0x07020010 & 0xFFFF) # ori $t8, $t8, 0x10
/* 0C54AC 800C48AC AC780000 */  sw    $t8, ($v1)
/* 0C54B0 800C48B0 AC6E0004 */  sw    $t6, 4($v1)
/* 0C54B4 800C48B4 8E230000 */  lw    $v1, ($s1)
/* 0C54B8 800C48B8 01FF4821 */  addu  $t1, $t7, $ra
/* 0C54BC 800C48BC 246F0008 */  addiu $t7, $v1, 8
/* 0C54C0 800C48C0 AE2F0000 */  sw    $t7, ($s1)
/* 0C54C4 800C48C4 86590004 */  lh    $t9, 4($s2)
/* 0C54C8 800C48C8 0215C021 */  addu  $t8, $s0, $s5
/* 0C54CC 800C48CC 03387021 */  addu  $t6, $t9, $t8
/* 0C54D0 800C48D0 25CFFFFF */  addiu $t7, $t6, -1
/* 0C54D4 800C48D4 31F903FF */  andi  $t9, $t7, 0x3ff
/* 0C54D8 800C48D8 864F0006 */  lh    $t7, 6($s2)
/* 0C54DC 800C48DC 0019C380 */  sll   $t8, $t9, 0xe
/* 0C54E0 800C48E0 2529FFFF */  addiu $t1, $t1, -1
/* 0C54E4 800C48E4 3C01F600 */  lui   $at, 0xf600
/* 0C54E8 800C48E8 03017025 */  or    $t6, $t8, $at
/* 0C54EC 800C48EC 012FC821 */  addu  $t9, $t1, $t7
/* 0C54F0 800C48F0 333803FF */  andi  $t8, $t9, 0x3ff
/* 0C54F4 800C48F4 00187880 */  sll   $t7, $t8, 2
/* 0C54F8 800C48F8 01CFC825 */  or    $t9, $t6, $t7
/* 0C54FC 800C48FC AC790000 */  sw    $t9, ($v1)
/* 0C5500 800C4900 86580004 */  lh    $t8, 4($s2)
/* 0C5504 800C4904 00000000 */  nop   
/* 0C5508 800C4908 03107021 */  addu  $t6, $t8, $s0
/* 0C550C 800C490C 86580006 */  lh    $t8, 6($s2)
/* 0C5510 800C4910 31CF03FF */  andi  $t7, $t6, 0x3ff
/* 0C5514 800C4914 000FCB80 */  sll   $t9, $t7, 0xe
/* 0C5518 800C4918 03F87021 */  addu  $t6, $ra, $t8
/* 0C551C 800C491C 31CF03FF */  andi  $t7, $t6, 0x3ff
/* 0C5520 800C4920 000FC080 */  sll   $t8, $t7, 2
/* 0C5524 800C4924 03387025 */  or    $t6, $t9, $t8
/* 0C5528 800C4928 AC6E0004 */  sw    $t6, 4($v1)
/* 0C552C 800C492C 8E230000 */  lw    $v1, ($s1)
/* 0C5530 800C4930 3C19E700 */  lui   $t9, 0xe700
/* 0C5534 800C4934 246F0008 */  addiu $t7, $v1, 8
/* 0C5538 800C4938 AE2F0000 */  sw    $t7, ($s1)
/* 0C553C 800C493C AC600004 */  sw    $zero, 4($v1)
/* 0C5540 800C4940 AC790000 */  sw    $t9, ($v1)
.L800C4944:
/* 0C5544 800C4944 8E230000 */  lw    $v1, ($s1)
/* 0C5548 800C4948 3C0EFA00 */  lui   $t6, 0xfa00
/* 0C554C 800C494C 24780008 */  addiu $t8, $v1, 8
/* 0C5550 800C4950 AE380000 */  sw    $t8, ($s1)
/* 0C5554 800C4954 AC6E0000 */  sw    $t6, ($v1)
/* 0C5558 800C4958 9259001C */  lbu   $t9, 0x1c($s2)
/* 0C555C 800C495C 2401FF00 */  li    $at, -256
/* 0C5560 800C4960 0321C025 */  or    $t8, $t9, $at
/* 0C5564 800C4964 AC780004 */  sw    $t8, 4($v1)
/* 0C5568 800C4968 8E230000 */  lw    $v1, ($s1)
/* 0C556C 800C496C 3C0FFB00 */  lui   $t7, 0xfb00
/* 0C5570 800C4970 246E0008 */  addiu $t6, $v1, 8
/* 0C5574 800C4974 AE2E0000 */  sw    $t6, ($s1)
/* 0C5578 800C4978 AC6F0000 */  sw    $t7, ($v1)
/* 0C557C 800C497C 92580014 */  lbu   $t8, 0x14($s2)
/* 0C5580 800C4980 92590015 */  lbu   $t9, 0x15($s2)
/* 0C5584 800C4984 00187600 */  sll   $t6, $t8, 0x18
/* 0C5588 800C4988 0019C400 */  sll   $t8, $t9, 0x10
/* 0C558C 800C498C 01D87825 */  or    $t7, $t6, $t8
/* 0C5590 800C4990 924E0016 */  lbu   $t6, 0x16($s2)
/* 0C5594 800C4994 00000000 */  nop   
/* 0C5598 800C4998 000EC200 */  sll   $t8, $t6, 8
/* 0C559C 800C499C 01F8C825 */  or    $t9, $t7, $t8
/* 0C55A0 800C49A0 924F0017 */  lbu   $t7, 0x17($s2)
/* 0C55A4 800C49A4 00000000 */  nop   
/* 0C55A8 800C49A8 032FC025 */  or    $t8, $t9, $t7
/* 0C55AC 800C49AC AC780004 */  sw    $t8, 4($v1)
/* 0C55B0 800C49B0 8E230000 */  lw    $v1, ($s1)
                                             # dDialogueBoxDrawModes - 0x80000000 = 0xE36C8
/* 0C55B4 800C49B4 3C0F000E */  lui   $t7, %hi(dDialogueBoxDrawModes - 0x80000000) # $t7, 0xe
/* 0C55B8 800C49B8 246E0008 */  addiu $t6, $v1, 8
/* 0C55BC 800C49BC AE2E0000 */  sw    $t6, ($s1)
/* 0C55C0 800C49C0 3C190702 */  lui   $t9, (0x07020010 >> 16) # lui $t9, 0x702
/* 0C55C4 800C49C4 37390010 */  ori   $t9, (0x07020010 & 0xFFFF) # ori $t9, $t9, 0x10
                                             # dDialogueBoxDrawModes - 0x80000000 = 0xE36C8
/* 0C55C8 800C49C8 25EF36C8 */  addiu $t7, %lo(dDialogueBoxDrawModes - 0x80000000) # addiu $t7, $t7, 0x36c8
/* 0C55CC 800C49CC AC6F0004 */  sw    $t7, 4($v1)
/* 0C55D0 800C49D0 AC790000 */  sw    $t9, ($v1)
/* 0C55D4 800C49D4 8E230000 */  lw    $v1, ($s1)
/* 0C55D8 800C49D8 3C0EE700 */  lui   $t6, 0xe700
/* 0C55DC 800C49DC 24780008 */  addiu $t8, $v1, 8
/* 0C55E0 800C49E0 AE380000 */  sw    $t8, ($s1)
/* 0C55E4 800C49E4 AC600004 */  sw    $zero, 4($v1)
/* 0C55E8 800C49E8 AC6E0000 */  sw    $t6, ($v1)
/* 0C55EC 800C49EC 8FB80090 */  lw    $t8, 0x90($sp)
/* 0C55F0 800C49F0 86590020 */  lh    $t9, 0x20($s2)
/* 0C55F4 800C49F4 864F0022 */  lh    $t7, 0x22($s2)
/* 0C55F8 800C49F8 930E0000 */  lbu   $t6, ($t8)
/* 0C55FC 800C49FC 02198021 */  addu  $s0, $s0, $t9
/* 0C5600 800C4A00 11C000C3 */  beqz  $t6, .L800C4D10
/* 0C5604 800C4A04 03EFF821 */   addu  $ra, $ra, $t7
/* 0C5608 800C4A08 8659000A */  lh    $t9, 0xa($s2)
/* 0C560C 800C4A0C 8FAD0064 */  lw    $t5, 0x64($sp)
/* 0C5610 800C4A10 033F082A */  slt   $at, $t9, $ra
/* 0C5614 800C4A14 142000BE */  bnez  $at, .L800C4D10
/* 0C5618 800C4A18 03009821 */   addu  $s3, $t8, $zero
/* 0C561C 800C4A1C 8FAC0068 */  lw    $t4, 0x68($sp)
/* 0C5620 800C4A20 31C200FF */  andi  $v0, $t6, 0xff
/* 0C5624 800C4A24 304400FF */  andi  $a0, $v0, 0xff
.L800C4A28:
/* 0C5628 800C4A28 28810021 */  slti  $at, $a0, 0x21
/* 0C562C 800C4A2C 00002825 */  move  $a1, $zero
/* 0C5630 800C4A30 00004025 */  move  $t0, $zero
/* 0C5634 800C4A34 14200003 */  bnez  $at, .L800C4A44
/* 0C5638 800C4A38 00801825 */   move  $v1, $a0
/* 0C563C 800C4A3C 28610080 */  slti  $at, $v1, 0x80
/* 0C5640 800C4A40 1420002C */  bnez  $at, .L800C4AF4
.L800C4A44:
/* 0C5644 800C4A44 246FFFF7 */   addiu $t7, $v1, -9
/* 0C5648 800C4A48 2DE10018 */  sltiu $at, $t7, 0x18
/* 0C564C 800C4A4C 10200026 */  beqz  $at, .L800C4AE8
/* 0C5650 800C4A50 000F7880 */   sll   $t7, $t7, 2
/* 0C5654 800C4A54 3C01800F */  lui   $at, %hi(jpt_800E9360) # $at, 0x800f
/* 0C5658 800C4A58 002F0821 */  addu  $at, $at, $t7
/* 0C565C 800C4A5C 8C2F9360 */  lw    $t7, %lo(jpt_800E9360)($at)
/* 0C5660 800C4A60 00000000 */  nop   
/* 0C5664 800C4A64 01E00008 */  jr    $t7
/* 0C5668 800C4A68 00000000 */   nop   
glabel L800C4A6C
/* 0C566C 800C4A6C 956E0024 */  lhu   $t6, 0x24($t3)
/* 0C5670 800C4A70 10000050 */  b     .L800C4BB4
/* 0C5674 800C4A74 020E8021 */   addu  $s0, $s0, $t6
glabel L800C4A78
/* 0C5678 800C4A78 95790022 */  lhu   $t9, 0x22($t3)
/* 0C567C 800C4A7C 86500020 */  lh    $s0, 0x20($s2)
/* 0C5680 800C4A80 1000004C */  b     .L800C4BB4
/* 0C5684 800C4A84 03F9F821 */   addu  $ra, $ra, $t9
glabel L800C4A88
/* 0C5688 800C4A88 864F0020 */  lh    $t7, 0x20($s2)
/* 0C568C 800C4A8C 95620026 */  lhu   $v0, 0x26($t3)
/* 0C5690 800C4A90 020F7023 */  subu  $t6, $s0, $t7
/* 0C5694 800C4A94 01C2001A */  div   $zero, $t6, $v0
/* 0C5698 800C4A98 0202C021 */  addu  $t8, $s0, $v0
/* 0C569C 800C4A9C 14400002 */  bnez  $v0, .L800C4AA8
/* 0C56A0 800C4AA0 00000000 */   nop   
/* 0C56A4 800C4AA4 0007000D */  break 7
.L800C4AA8:
/* 0C56A8 800C4AA8 2401FFFF */  li    $at, -1
/* 0C56AC 800C4AAC 14410004 */  bne   $v0, $at, .L800C4AC0
/* 0C56B0 800C4AB0 3C018000 */   lui   $at, 0x8000
/* 0C56B4 800C4AB4 15C10002 */  bne   $t6, $at, .L800C4AC0
/* 0C56B8 800C4AB8 00000000 */   nop   
/* 0C56BC 800C4ABC 0006000D */  break 6
.L800C4AC0:
/* 0C56C0 800C4AC0 0000C810 */  mfhi  $t9
/* 0C56C4 800C4AC4 03198023 */  subu  $s0, $t8, $t9
/* 0C56C8 800C4AC8 1000003A */  b     .L800C4BB4
/* 0C56CC 800C4ACC 00000000 */   nop   
glabel L800C4AD0
/* 0C56D0 800C4AD0 956F0022 */  lhu   $t7, 0x22($t3)
/* 0C56D4 800C4AD4 10000037 */  b     .L800C4BB4
/* 0C56D8 800C4AD8 03EFF821 */   addu  $ra, $ra, $t7
glabel L800C4ADC
/* 0C56DC 800C4ADC 86500020 */  lh    $s0, 0x20($s2)
/* 0C56E0 800C4AE0 10000034 */  b     .L800C4BB4
/* 0C56E4 800C4AE4 00000000 */   nop   
.L800C4AE8:
glabel L800C4AE8
/* 0C56E8 800C4AE8 956E0024 */  lhu   $t6, 0x24($t3)
/* 0C56EC 800C4AEC 10000031 */  b     .L800C4BB4
/* 0C56F0 800C4AF0 020E8021 */   addu  $s0, $s0, $t6
.L800C4AF4:
/* 0C56F4 800C4AF4 2464FFE0 */  addiu $a0, $v1, -0x20
/* 0C56F8 800C4AF8 309800FF */  andi  $t8, $a0, 0xff
/* 0C56FC 800C4AFC 0018C8C0 */  sll   $t9, $t8, 3
/* 0C5700 800C4B00 01791021 */  addu  $v0, $t3, $t9
/* 0C5704 800C4B04 90470100 */  lbu   $a3, 0x100($v0)
/* 0C5708 800C4B08 240100FF */  li    $at, 255
/* 0C570C 800C4B0C 10E10029 */  beq   $a3, $at, .L800C4BB4
/* 0C5710 800C4B10 00000000 */   nop   
/* 0C5714 800C4B14 12870015 */  beq   $s4, $a3, .L800C4B6C
/* 0C5718 800C4B18 24050001 */   li    $a1, 1
/* 0C571C 800C4B1C 00077880 */  sll   $t7, $a3, 2
/* 0C5720 800C4B20 8E230000 */  lw    $v1, ($s1)
/* 0C5724 800C4B24 016F7021 */  addu  $t6, $t3, $t7
/* 0C5728 800C4B28 8DC40080 */  lw    $a0, 0x80($t6)
/* 0C572C 800C4B2C 24780008 */  addiu $t8, $v1, 8
/* 0C5730 800C4B30 AE380000 */  sw    $t8, ($s1)
/* 0C5734 800C4B34 8486000A */  lh    $a2, 0xa($a0)
/* 0C5738 800C4B38 3C010700 */  lui   $at, 0x700
/* 0C573C 800C4B3C 30D900FF */  andi  $t9, $a2, 0xff
/* 0C5740 800C4B40 00197C00 */  sll   $t7, $t9, 0x10
/* 0C5744 800C4B44 0006C0C0 */  sll   $t8, $a2, 3
/* 0C5748 800C4B48 3319FFFF */  andi  $t9, $t8, 0xffff
/* 0C574C 800C4B4C 01E17025 */  or    $t6, $t7, $at
/* 0C5750 800C4B50 01D97825 */  or    $t7, $t6, $t9
/* 0C5754 800C4B54 AC6F0000 */  sw    $t7, ($v1)
/* 0C5758 800C4B58 8C98000C */  lw    $t8, 0xc($a0)
/* 0C575C 800C4B5C 3C018000 */  lui   $at, 0x8000
/* 0C5760 800C4B60 03017021 */  addu  $t6, $t8, $at
/* 0C5764 800C4B64 00E0A025 */  move  $s4, $a3
/* 0C5768 800C4B68 AC6E0004 */  sw    $t6, 4($v1)
.L800C4B6C:
/* 0C576C 800C4B6C 90590102 */  lbu   $t9, 0x102($v0)
/* 0C5770 800C4B70 00000000 */  nop   
/* 0C5774 800C4B74 AFB90058 */  sw    $t9, 0x58($sp)
/* 0C5778 800C4B78 904F0103 */  lbu   $t7, 0x103($v0)
/* 0C577C 800C4B7C 00000000 */  nop   
/* 0C5780 800C4B80 AFAF0054 */  sw    $t7, 0x54($sp)
/* 0C5784 800C4B84 90580107 */  lbu   $t8, 0x107($v0)
/* 0C5788 800C4B88 904C0104 */  lbu   $t4, 0x104($v0)
/* 0C578C 800C4B8C 904D0105 */  lbu   $t5, 0x105($v0)
/* 0C5790 800C4B90 90550106 */  lbu   $s5, 0x106($v0)
/* 0C5794 800C4B94 AFB8004C */  sw    $t8, 0x4c($sp)
/* 0C5798 800C4B98 95630020 */  lhu   $v1, 0x20($t3)
/* 0C579C 800C4B9C 00000000 */  nop   
/* 0C57A0 800C4BA0 14600004 */  bnez  $v1, .L800C4BB4
/* 0C57A4 800C4BA4 00604025 */   move  $t0, $v1
/* 0C57A8 800C4BA8 90480101 */  lbu   $t0, 0x101($v0)
/* 0C57AC 800C4BAC 10000001 */  b     .L800C4BB4
/* 0C57B0 800C4BB0 00000000 */   nop   
.L800C4BB4:
/* 0C57B4 800C4BB4 10A00043 */  beqz  $a1, .L800C4CC4
/* 0C57B8 800C4BB8 3C01E400 */   lui   $at, 0xe400
/* 0C57BC 800C4BBC 864E0004 */  lh    $t6, 4($s2)
/* 0C57C0 800C4BC0 8FAF0058 */  lw    $t7, 0x58($sp)
/* 0C57C4 800C4BC4 01D0C821 */  addu  $t9, $t6, $s0
/* 0C57C8 800C4BC8 864E0006 */  lh    $t6, 6($s2)
/* 0C57CC 800C4BCC 032F2821 */  addu  $a1, $t9, $t7
/* 0C57D0 800C4BD0 8FAF0054 */  lw    $t7, 0x54($sp)
/* 0C57D4 800C4BD4 01DFC821 */  addu  $t9, $t6, $ra
/* 0C57D8 800C4BD8 0005C080 */  sll   $t8, $a1, 2
/* 0C57DC 800C4BDC 032F3021 */  addu  $a2, $t9, $t7
/* 0C57E0 800C4BE0 8FB9004C */  lw    $t9, 0x4c($sp)
/* 0C57E4 800C4BE4 03002825 */  move  $a1, $t8
/* 0C57E8 800C4BE8 0006C080 */  sll   $t8, $a2, 2
/* 0C57EC 800C4BEC 00157080 */  sll   $t6, $s5, 2
/* 0C57F0 800C4BF0 00197880 */  sll   $t7, $t9, 2
/* 0C57F4 800C4BF4 03003025 */  move  $a2, $t8
/* 0C57F8 800C4BF8 01C51021 */  addu  $v0, $t6, $a1
/* 0C57FC 800C4BFC 01F81821 */  addu  $v1, $t7, $t8
/* 0C5800 800C4C00 000CC140 */  sll   $t8, $t4, 5
/* 0C5804 800C4C04 000D7140 */  sll   $t6, $t5, 5
/* 0C5808 800C4C08 00405025 */  move  $t2, $v0
/* 0C580C 800C4C0C 00604825 */  move  $t1, $v1
/* 0C5810 800C4C10 03006025 */  move  $t4, $t8
/* 0C5814 800C4C14 04A10006 */  bgez  $a1, .L800C4C30
/* 0C5818 800C4C18 01C06825 */   move  $t5, $t6
/* 0C581C 800C4C1C 18400004 */  blez  $v0, .L800C4C30
/* 0C5820 800C4C20 0005C823 */   negu  $t9, $a1
/* 0C5824 800C4C24 001978C0 */  sll   $t7, $t9, 3
/* 0C5828 800C4C28 030F6021 */  addu  $t4, $t8, $t7
/* 0C582C 800C4C2C 00002825 */  move  $a1, $zero
.L800C4C30:
/* 0C5830 800C4C30 04C10006 */  bgez  $a2, .L800C4C4C
/* 0C5834 800C4C34 314F0FFF */   andi  $t7, $t2, 0xfff
/* 0C5838 800C4C38 18600004 */  blez  $v1, .L800C4C4C
/* 0C583C 800C4C3C 0006C023 */   negu  $t8, $a2
/* 0C5840 800C4C40 001870C0 */  sll   $t6, $t8, 3
/* 0C5844 800C4C44 01AE6821 */  addu  $t5, $t5, $t6
/* 0C5848 800C4C48 00003025 */  move  $a2, $zero
.L800C4C4C:
/* 0C584C 800C4C4C 8E230000 */  lw    $v1, ($s1)
/* 0C5850 800C4C50 000FC300 */  sll   $t8, $t7, 0xc
/* 0C5854 800C4C54 24790008 */  addiu $t9, $v1, 8
/* 0C5858 800C4C58 AE390000 */  sw    $t9, ($s1)
/* 0C585C 800C4C5C 31390FFF */  andi  $t9, $t1, 0xfff
/* 0C5860 800C4C60 03017025 */  or    $t6, $t8, $at
/* 0C5864 800C4C64 01D97825 */  or    $t7, $t6, $t9
/* 0C5868 800C4C68 30B80FFF */  andi  $t8, $a1, 0xfff
/* 0C586C 800C4C6C 00187300 */  sll   $t6, $t8, 0xc
/* 0C5870 800C4C70 30D90FFF */  andi  $t9, $a2, 0xfff
/* 0C5874 800C4C74 AC6F0000 */  sw    $t7, ($v1)
/* 0C5878 800C4C78 01D97825 */  or    $t7, $t6, $t9
/* 0C587C 800C4C7C AC6F0004 */  sw    $t7, 4($v1)
/* 0C5880 800C4C80 8E230000 */  lw    $v1, ($s1)
/* 0C5884 800C4C84 3C0EB300 */  lui   $t6, 0xb300
/* 0C5888 800C4C88 24780008 */  addiu $t8, $v1, 8
/* 0C588C 800C4C8C AE380000 */  sw    $t8, ($s1)
/* 0C5890 800C4C90 31B8FFFF */  andi  $t8, $t5, 0xffff
/* 0C5894 800C4C94 000C7C00 */  sll   $t7, $t4, 0x10
/* 0C5898 800C4C98 AC6E0000 */  sw    $t6, ($v1)
/* 0C589C 800C4C9C 01F87025 */  or    $t6, $t7, $t8
/* 0C58A0 800C4CA0 AC6E0004 */  sw    $t6, 4($v1)
/* 0C58A4 800C4CA4 8E270000 */  lw    $a3, ($s1)
/* 0C58A8 800C4CA8 3C180400 */  lui   $t8, (0x04000400 >> 16) # lui $t8, 0x400
/* 0C58AC 800C4CAC 24F90008 */  addiu $t9, $a3, 8
/* 0C58B0 800C4CB0 AE390000 */  sw    $t9, ($s1)
/* 0C58B4 800C4CB4 37180400 */  ori   $t8, (0x04000400 & 0xFFFF) # ori $t8, $t8, 0x400
/* 0C58B8 800C4CB8 3C0FB200 */  lui   $t7, 0xb200
/* 0C58BC 800C4CBC ACEF0000 */  sw    $t7, ($a3)
/* 0C58C0 800C4CC0 ACF80004 */  sw    $t8, 4($a3)
.L800C4CC4:
/* 0C58C4 800C4CC4 3C0E8013 */  lui   $t6, %hi(D_8012A7F0) # $t6, 0x8013
/* 0C58C8 800C4CC8 8DCEA7F0 */  lw    $t6, %lo(D_8012A7F0)($t6)
/* 0C58CC 800C4CCC 00000000 */  nop   
/* 0C58D0 800C4CD0 11C00004 */  beqz  $t6, .L800C4CE4
/* 0C58D4 800C4CD4 00000000 */   nop   
/* 0C58D8 800C4CD8 11000002 */  beqz  $t0, .L800C4CE4
/* 0C58DC 800C4CDC 00000000 */   nop   
/* 0C58E0 800C4CE0 2508FFFF */  addiu $t0, $t0, -1
.L800C4CE4:
/* 0C58E4 800C4CE4 92620001 */  lbu   $v0, 1($s3)
/* 0C58E8 800C4CE8 02088021 */  addu  $s0, $s0, $t0
/* 0C58EC 800C4CEC 10400008 */  beqz  $v0, .L800C4D10
/* 0C58F0 800C4CF0 26730001 */   addiu $s3, $s3, 1
/* 0C58F4 800C4CF4 8659000A */  lh    $t9, 0xa($s2)
/* 0C58F8 800C4CF8 00000000 */  nop   
/* 0C58FC 800C4CFC 033F082A */  slt   $at, $t9, $ra
/* 0C5900 800C4D00 1020FF49 */  beqz  $at, .L800C4A28
/* 0C5904 800C4D04 304400FF */   andi  $a0, $v0, 0xff
/* 0C5908 800C4D08 AFAD0064 */  sw    $t5, 0x64($sp)
/* 0C590C 800C4D0C AFAC0068 */  sw    $t4, 0x68($sp)
.L800C4D10:
/* 0C5910 800C4D10 864F0020 */  lh    $t7, 0x20($s2)
/* 0C5914 800C4D14 864E0022 */  lh    $t6, 0x22($s2)
/* 0C5918 800C4D18 020FC023 */  subu  $t8, $s0, $t7
/* 0C591C 800C4D1C 03EEC823 */  subu  $t9, $ra, $t6
/* 0C5920 800C4D20 A6580000 */  sh    $t8, ($s2)
/* 0C5924 800C4D24 A6590002 */  sh    $t9, 2($s2)
/* 0C5928 800C4D28 8E230000 */  lw    $v1, ($s1)
/* 0C592C 800C4D2C 3C18E700 */  lui   $t8, 0xe700
/* 0C5930 800C4D30 246F0008 */  addiu $t7, $v1, 8
/* 0C5934 800C4D34 AE2F0000 */  sw    $t7, ($s1)
/* 0C5938 800C4D38 3C0E8013 */  lui   $t6, %hi(gDialogueBoxBackground) # $t6, 0x8013
/* 0C593C 800C4D3C AC600004 */  sw    $zero, 4($v1)
/* 0C5940 800C4D40 AC780000 */  sw    $t8, ($v1)
/* 0C5944 800C4D44 8DCEA7E8 */  lw    $t6, %lo(gDialogueBoxBackground)($t6)
/* 0C5948 800C4D48 00000000 */  nop   
/* 0C594C 800C4D4C 124E0003 */  beq   $s2, $t6, .L800C4D5C
/* 0C5950 800C4D50 00000000 */   nop   
/* 0C5954 800C4D54 0C019E8F */  jal   func_80067A3C
/* 0C5958 800C4D58 02202025 */   move  $a0, $s1
.L800C4D5C:
/* 0C595C 800C4D5C 0C01ECF4 */  jal   func_8007B3D0
/* 0C5960 800C4D60 02202025 */   move  $a0, $s1
/* 0C5964 800C4D64 8E230000 */  lw    $v1, ($s1)
/* 0C5968 800C4D68 3C0FE700 */  lui   $t7, 0xe700
/* 0C596C 800C4D6C 24790008 */  addiu $t9, $v1, 8
/* 0C5970 800C4D70 AE390000 */  sw    $t9, ($s1)
/* 0C5974 800C4D74 AC600004 */  sw    $zero, 4($v1)
/* 0C5978 800C4D78 AC6F0000 */  sw    $t7, ($v1)
.L800C4D7C:
/* 0C597C 800C4D7C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0C5980 800C4D80 8FB00014 */  lw    $s0, 0x14($sp)
/* 0C5984 800C4D84 8FB10018 */  lw    $s1, 0x18($sp)
/* 0C5988 800C4D88 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0C598C 800C4D8C 8FB30020 */  lw    $s3, 0x20($sp)
/* 0C5990 800C4D90 8FB40024 */  lw    $s4, 0x24($sp)
/* 0C5994 800C4D94 8FB50028 */  lw    $s5, 0x28($sp)
/* 0C5998 800C4D98 03E00008 */  jr    $ra
/* 0C599C 800C4D9C 27BD0088 */   addiu $sp, $sp, 0x88

