.late_rodata
glabel D_800E556C
.float 0.05
glabel D_800E5570
.float 0.95
.word 0 # Padding
glabel D_800E5578
.double 0.1

.text
glabel func_80013A0C
/* 01460C 80013A0C 27BDFF98 */  addiu $sp, $sp, -0x68
/* 014610 80013A10 AFBF0024 */  sw    $ra, 0x24($sp)
/* 014614 80013A14 AFB10020 */  sw    $s1, 0x20($sp)
/* 014618 80013A18 AFB0001C */  sw    $s0, 0x1c($sp)
/* 01461C 80013A1C AFA40068 */  sw    $a0, 0x68($sp)
/* 014620 80013A20 AFA5006C */  sw    $a1, 0x6c($sp)
/* 014624 80013A24 AFA60070 */  sw    $a2, 0x70($sp)
/* 014628 80013A28 AFA70074 */  sw    $a3, 0x74($sp)
/* 01462C 80013A2C 8CE80064 */  lw    $t0, 0x64($a3)
/* 014630 80013A30 3C10800E */  lui   $s0, %hi(D_800DC75C) # $s0, 0x800e
/* 014634 80013A34 850F018E */  lh    $t7, 0x18e($t0)
/* 014638 80013A38 2610C75C */  addiu $s0, %lo(D_800DC75C) # addiu $s0, $s0, -0x38a4
/* 01463C 80013A3C 19E000DF */  blez  $t7, .L80013DBC
/* 014640 80013A40 8FBF0024 */   lw    $ra, 0x24($sp)
/* 014644 80013A44 8E180000 */  lw    $t8, ($s0)
/* 014648 80013A48 3C118012 */  lui   $s1, %hi(D_8011AE8C) # $s1, 0x8012
/* 01464C 80013A4C 130000DB */  beqz  $t8, .L80013DBC
/* 014650 80013A50 8FBF0024 */   lw    $ra, 0x24($sp)
/* 014654 80013A54 8C890000 */  lw    $t1, ($a0)
/* 014658 80013A58 2631AE8C */  addiu $s1, %lo(D_8011AE8C) # addiu $s1, $s1, -0x5174
/* 01465C 80013A5C AE290000 */  sw    $t1, ($s1)
/* 014660 80013A60 8CAB0000 */  lw    $t3, ($a1)
/* 014664 80013A64 3C018012 */  lui   $at, %hi(D_8011AE90) # $at, 0x8012
/* 014668 80013A68 AC2BAE90 */  sw    $t3, %lo(D_8011AE90)($at)
/* 01466C 80013A6C 8CCD0000 */  lw    $t5, ($a2)
/* 014670 80013A70 3C018012 */  lui   $at, %hi(D_8011AE94) # $at, 0x8012
/* 014674 80013A74 AC2DAE94 */  sw    $t5, %lo(D_8011AE94)($at)
/* 014678 80013A78 81060002 */  lb    $a2, 2($t0)
/* 01467C 80013A7C 24040015 */  li    $a0, 21
/* 014680 80013A80 28C1000B */  slti  $at, $a2, 0xb
/* 014684 80013A84 14200002 */  bnez  $at, .L80013A90
/* 014688 80013A88 00000000 */   nop   
/* 01468C 80013A8C 00003025 */  move  $a2, $zero
.L80013A90:
/* 014690 80013A90 810501D6 */  lb    $a1, 0x1d6($t0)
/* 014694 80013A94 00000000 */  nop   
/* 014698 80013A98 28A10003 */  slti  $at, $a1, 3
/* 01469C 80013A9C 14200002 */  bnez  $at, .L80013AA8
/* 0146A0 80013AA0 00000000 */   nop   
/* 0146A4 80013AA4 00002825 */  move  $a1, $zero
.L80013AA8:
/* 0146A8 80013AA8 AFA50050 */  sw    $a1, 0x50($sp)
/* 0146AC 80013AAC AFA6004C */  sw    $a2, 0x4c($sp)
/* 0146B0 80013AB0 0C0078A7 */  jal   get_misc_asset
/* 0146B4 80013AB4 AFA80064 */   sw    $t0, 0x64($sp)
/* 0146B8 80013AB8 8FA50050 */  lw    $a1, 0x50($sp)
/* 0146BC 80013ABC 8FA6004C */  lw    $a2, 0x4c($sp)
/* 0146C0 80013AC0 00057080 */  sll   $t6, $a1, 2
/* 0146C4 80013AC4 01C57021 */  addu  $t6, $t6, $a1
/* 0146C8 80013AC8 000E7040 */  sll   $t6, $t6, 1
/* 0146CC 80013ACC 01C62821 */  addu  $a1, $t6, $a2
/* 0146D0 80013AD0 00057900 */  sll   $t7, $a1, 4
/* 0146D4 80013AD4 01E21821 */  addu  $v1, $t7, $v0
/* 0146D8 80013AD8 AFA30058 */  sw    $v1, 0x58($sp)
/* 0146DC 80013ADC 84780000 */  lh    $t8, ($v1)
/* 0146E0 80013AE0 8E190000 */  lw    $t9, ($s0)
/* 0146E4 80013AE4 44982000 */  mtc1  $t8, $f4
/* 0146E8 80013AE8 3C0D8012 */  lui   $t5, %hi(D_8011B010) # $t5, 0x8012
/* 0146EC 80013AEC 468021A0 */  cvt.s.w $f6, $f4
/* 0146F0 80013AF0 25ADB010 */  addiu $t5, %lo(D_8011B010) # addiu $t5, $t5, -0x4ff0
/* 0146F4 80013AF4 00CD3821 */  addu  $a3, $a2, $t5
/* 0146F8 80013AF8 E726000C */  swc1  $f6, 0xc($t9)
/* 0146FC 80013AFC 84690002 */  lh    $t1, 2($v1)
/* 014700 80013B00 8E0A0000 */  lw    $t2, ($s0)
/* 014704 80013B04 44894000 */  mtc1  $t1, $f8
/* 014708 80013B08 00000000 */  nop   
/* 01470C 80013B0C 468042A0 */  cvt.s.w $f10, $f8
/* 014710 80013B10 E54A0010 */  swc1  $f10, 0x10($t2)
/* 014714 80013B14 846B0004 */  lh    $t3, 4($v1)
/* 014718 80013B18 8E0C0000 */  lw    $t4, ($s0)
/* 01471C 80013B1C 448B8000 */  mtc1  $t3, $f16
/* 014720 80013B20 00000000 */  nop   
/* 014724 80013B24 468084A0 */  cvt.s.w $f18, $f16
/* 014728 80013B28 E5920014 */  swc1  $f18, 0x14($t4)
/* 01472C 80013B2C 90EE0000 */  lbu   $t6, ($a3)
/* 014730 80013B30 AFA70028 */  sw    $a3, 0x28($sp)
/* 014734 80013B34 000E7E40 */  sll   $t7, $t6, 0x19
/* 014738 80013B38 0C01C1F1 */  jal   cosine_s
/* 01473C 80013B3C 000F2403 */   sra   $a0, $t7, 0x10
/* 014740 80013B40 8FB90058 */  lw    $t9, 0x58($sp)
/* 014744 80013B44 8E020000 */  lw    $v0, ($s0)
/* 014748 80013B48 87290006 */  lh    $t1, 6($t9)
/* 01474C 80013B4C C4440010 */  lwc1  $f4, 0x10($v0)
/* 014750 80013B50 44893000 */  mtc1  $t1, $f6
/* 014754 80013B54 00000000 */  nop   
/* 014758 80013B58 46803220 */  cvt.s.w $f8, $f6
/* 01475C 80013B5C 46004282 */  mul.s $f10, $f8, $f0
/* 014760 80013B60 460A2400 */  add.s $f16, $f4, $f10
/* 014764 80013B64 E4500010 */  swc1  $f16, 0x10($v0)
/* 014768 80013B68 8FAA0028 */  lw    $t2, 0x28($sp)
/* 01476C 80013B6C 00000000 */  nop   
/* 014770 80013B70 914B0000 */  lbu   $t3, ($t2)
/* 014774 80013B74 00000000 */  nop   
/* 014778 80013B78 000B6680 */  sll   $t4, $t3, 0x1a
/* 01477C 80013B7C 0C01C1FE */  jal   sine_s
/* 014780 80013B80 000C2403 */   sra   $a0, $t4, 0x10
/* 014784 80013B84 3C01800E */  lui   $at, %hi(D_800E556C) # $at, 0x800e
/* 014788 80013B88 C432556C */  lwc1  $f18, %lo(D_800E556C)($at)
/* 01478C 80013B8C 3C01800E */  lui   $at, %hi(D_800E5570) # $at, 0x800e
/* 014790 80013B90 46120182 */  mul.s $f6, $f0, $f18
/* 014794 80013B94 8FA20058 */  lw    $v0, 0x58($sp)
/* 014798 80013B98 C4285570 */  lwc1  $f8, %lo(D_800E5570)($at)
/* 01479C 80013B9C C4440008 */  lwc1  $f4, 8($v0)
/* 0147A0 80013BA0 46083080 */  add.s $f2, $f6, $f8
/* 0147A4 80013BA4 8E0E0000 */  lw    $t6, ($s0)
/* 0147A8 80013BA8 46022282 */  mul.s $f10, $f4, $f2
/* 0147AC 80013BAC 8FA80064 */  lw    $t0, 0x64($sp)
/* 0147B0 80013BB0 240A0800 */  li    $t2, 2048
/* 0147B4 80013BB4 E5CA0008 */  swc1  $f10, 8($t6)
/* 0147B8 80013BB8 8FAF0028 */  lw    $t7, 0x28($sp)
/* 0147BC 80013BBC 8E090000 */  lw    $t1, ($s0)
/* 0147C0 80013BC0 91F80000 */  lbu   $t8, ($t7)
/* 0147C4 80013BC4 C450000C */  lwc1  $f16, 0xc($v0)
/* 0147C8 80013BC8 0018CAC0 */  sll   $t9, $t8, 0xb
/* 0147CC 80013BCC A5390000 */  sh    $t9, ($t1)
/* 0147D0 80013BD0 8E0B0000 */  lw    $t3, ($s0)
/* 0147D4 80013BD4 46028302 */  mul.s $f12, $f16, $f2
/* 0147D8 80013BD8 A56A0002 */  sh    $t2, 2($t3)
/* 0147DC 80013BDC 8E0C0000 */  lw    $t4, ($s0)
/* 0147E0 80013BE0 00000000 */  nop   
/* 0147E4 80013BE4 A5800004 */  sh    $zero, 4($t4)
/* 0147E8 80013BE8 81040189 */  lb    $a0, 0x189($t0)
/* 0147EC 80013BEC 00000000 */  nop   
/* 0147F0 80013BF0 10800003 */  beqz  $a0, .L80013C00
/* 0147F4 80013BF4 28810003 */   slti  $at, $a0, 3
/* 0147F8 80013BF8 2484FFFF */  addiu $a0, $a0, -1
/* 0147FC 80013BFC 28810003 */  slti  $at, $a0, 3
.L80013C00:
/* 014800 80013C00 14200002 */  bnez  $at, .L80013C0C
/* 014804 80013C04 00000000 */   nop   
/* 014808 80013C08 24040002 */  li    $a0, 2
.L80013C0C:
/* 01480C 80013C0C 44849000 */  mtc1  $a0, $f18
/* 014810 80013C10 3C01800E */  lui   $at, %hi(D_800E5578 + 4) # $at, 0x800e
/* 014814 80013C14 468091A0 */  cvt.s.w $f6, $f18
/* 014818 80013C18 C4255578 */  lwc1  $f5, %lo(D_800E5578)($at)
/* 01481C 80013C1C C424557C */  lwc1  $f4, %lo(D_800E5578 + 4)($at)
/* 014820 80013C20 46003221 */  cvt.d.s $f8, $f6
/* 014824 80013C24 46244282 */  mul.d $f10, $f8, $f4
/* 014828 80013C28 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 01482C 80013C2C 44818800 */  mtc1  $at, $f17
/* 014830 80013C30 44808000 */  mtc1  $zero, $f16
/* 014834 80013C34 8E020000 */  lw    $v0, ($s0)
/* 014838 80013C38 46305480 */  add.d $f18, $f10, $f16
/* 01483C 80013C3C C4460008 */  lwc1  $f6, 8($v0)
/* 014840 80013C40 46209020 */  cvt.s.d $f0, $f18
/* 014844 80013C44 00047080 */  sll   $t6, $a0, 2
/* 014848 80013C48 46003202 */  mul.s $f8, $f6, $f0
/* 01484C 80013C4C 2407FF00 */  li    $a3, -256
/* 014850 80013C50 02202025 */  move  $a0, $s1
/* 014854 80013C54 E4480008 */  swc1  $f8, 8($v0)
/* 014858 80013C58 8E020000 */  lw    $v0, ($s0)
/* 01485C 80013C5C 46006302 */  mul.s $f12, $f12, $f0
/* 014860 80013C60 8C4D0068 */  lw    $t5, 0x68($v0)
/* 014864 80013C64 00000000 */  nop   
/* 014868 80013C68 01AE7821 */  addu  $t7, $t5, $t6
/* 01486C 80013C6C 8DE50000 */  lw    $a1, ($t7)
/* 014870 80013C70 3C0DFB00 */  lui   $t5, 0xfb00
/* 014874 80013C74 8CB80000 */  lw    $t8, ($a1)
/* 014878 80013C78 00000000 */  nop   
/* 01487C 80013C7C AFB8005C */  sw    $t8, 0x5c($sp)
/* 014880 80013C80 80B9001F */  lb    $t9, 0x1f($a1)
/* 014884 80013C84 00000000 */  nop   
/* 014888 80013C88 00194880 */  sll   $t1, $t9, 2
/* 01488C 80013C8C 00A95021 */  addu  $t2, $a1, $t1
/* 014890 80013C90 8D4B0004 */  lw    $t3, 4($t2)
/* 014894 80013C94 3C058012 */  lui   $a1, %hi(D_8011AE90) # $a1, 0x8012
/* 014898 80013C98 AC4B0044 */  sw    $t3, 0x44($v0)
/* 01489C 80013C9C 8E230000 */  lw    $v1, ($s1)
/* 0148A0 80013CA0 24A5AE90 */  addiu $a1, %lo(D_8011AE90) # addiu $a1, $a1, -0x5170
/* 0148A4 80013CA4 246C0008 */  addiu $t4, $v1, 8
/* 0148A8 80013CA8 AE2C0000 */  sw    $t4, ($s1)
/* 0148AC 80013CAC AC670004 */  sw    $a3, 4($v1)
/* 0148B0 80013CB0 AC6D0000 */  sw    $t5, ($v1)
/* 0148B4 80013CB4 850E018E */  lh    $t6, 0x18e($t0)
/* 0148B8 80013CB8 3C0DFA00 */  lui   $t5, 0xfa00
/* 0148BC 80013CBC 29C10040 */  slti  $at, $t6, 0x40
/* 0148C0 80013CC0 1020000D */  beqz  $at, .L80013CF8
/* 0148C4 80013CC4 00000000 */   nop   
/* 0148C8 80013CC8 8E230000 */  lw    $v1, ($s1)
/* 0148CC 80013CCC 3C18FA00 */  lui   $t8, 0xfa00
/* 0148D0 80013CD0 246F0008 */  addiu $t7, $v1, 8
/* 0148D4 80013CD4 AE2F0000 */  sw    $t7, ($s1)
/* 0148D8 80013CD8 AC780000 */  sw    $t8, ($v1)
/* 0148DC 80013CDC 8519018E */  lh    $t9, 0x18e($t0)
/* 0148E0 80013CE0 00000000 */  nop   
/* 0148E4 80013CE4 00194880 */  sll   $t1, $t9, 2
/* 0148E8 80013CE8 312A00FF */  andi  $t2, $t1, 0xff
/* 0148EC 80013CEC 01475825 */  or    $t3, $t2, $a3
/* 0148F0 80013CF0 10000007 */  b     .L80013D10
/* 0148F4 80013CF4 AC6B0004 */   sw    $t3, 4($v1)
.L80013CF8:
/* 0148F8 80013CF8 8E230000 */  lw    $v1, ($s1)
/* 0148FC 80013CFC 240EFFFF */  li    $t6, -1
/* 014900 80013D00 246C0008 */  addiu $t4, $v1, 8
/* 014904 80013D04 AE2C0000 */  sw    $t4, ($s1)
/* 014908 80013D08 AC6E0004 */  sw    $t6, 4($v1)
/* 01490C 80013D0C AC6D0000 */  sw    $t5, ($v1)
.L80013D10:
/* 014910 80013D10 8E060000 */  lw    $a2, ($s0)
/* 014914 80013D14 8FA70074 */  lw    $a3, 0x74($sp)
/* 014918 80013D18 E7AC0010 */  swc1  $f12, 0x10($sp)
/* 01491C 80013D1C 0C01A3EA */  jal   func_80068FA8
/* 014920 80013D20 AFA80064 */   sw    $t0, 0x64($sp)
/* 014924 80013D24 8FA4005C */  lw    $a0, 0x5c($sp)
/* 014928 80013D28 8E050000 */  lw    $a1, ($s0)
/* 01492C 80013D2C 00003025 */  move  $a2, $zero
/* 014930 80013D30 24070004 */  li    $a3, 4
/* 014934 80013D34 0C0050EA */  jal   func_800143A8
/* 014938 80013D38 AFA00010 */   sw    $zero, 0x10($sp)
/* 01493C 80013D3C 8E230000 */  lw    $v1, ($s1)
/* 014940 80013D40 8FA80064 */  lw    $t0, 0x64($sp)
/* 014944 80013D44 246F0008 */  addiu $t7, $v1, 8
/* 014948 80013D48 AE2F0000 */  sw    $t7, ($s1)
/* 01494C 80013D4C 3C18BC00 */  lui   $t8, (0xBC00000A >> 16) # lui $t8, 0xbc00
/* 014950 80013D50 3718000A */  ori   $t8, (0xBC00000A & 0xFFFF) # ori $t8, $t8, 0xa
/* 014954 80013D54 AC780000 */  sw    $t8, ($v1)
/* 014958 80013D58 AC600004 */  sw    $zero, 4($v1)
/* 01495C 80013D5C 8519018E */  lh    $t9, 0x18e($t0)
/* 014960 80013D60 3C0AFA00 */  lui   $t2, 0xfa00
/* 014964 80013D64 2B210040 */  slti  $at, $t9, 0x40
/* 014968 80013D68 10200007 */  beqz  $at, .L80013D88
/* 01496C 80013D6C 00000000 */   nop   
/* 014970 80013D70 8E230000 */  lw    $v1, ($s1)
/* 014974 80013D74 240BFFFF */  li    $t3, -1
/* 014978 80013D78 24690008 */  addiu $t1, $v1, 8
/* 01497C 80013D7C AE290000 */  sw    $t1, ($s1)
/* 014980 80013D80 AC6B0004 */  sw    $t3, 4($v1)
/* 014984 80013D84 AC6A0000 */  sw    $t2, ($v1)
.L80013D88:
/* 014988 80013D88 8E2C0000 */  lw    $t4, ($s1)
/* 01498C 80013D8C 8FAD0068 */  lw    $t5, 0x68($sp)
/* 014990 80013D90 3C0E8012 */  lui   $t6, %hi(D_8011AE90) # $t6, 0x8012
/* 014994 80013D94 ADAC0000 */  sw    $t4, ($t5)
/* 014998 80013D98 8FAF006C */  lw    $t7, 0x6c($sp)
/* 01499C 80013D9C 8DCEAE90 */  lw    $t6, %lo(D_8011AE90)($t6)
/* 0149A0 80013DA0 3C188012 */  lui   $t8, %hi(D_8011AE94) # $t8, 0x8012
/* 0149A4 80013DA4 ADEE0000 */  sw    $t6, ($t7)
/* 0149A8 80013DA8 8FB90070 */  lw    $t9, 0x70($sp)
/* 0149AC 80013DAC 8F18AE94 */  lw    $t8, %lo(D_8011AE94)($t8)
/* 0149B0 80013DB0 00000000 */  nop   
/* 0149B4 80013DB4 AF380000 */  sw    $t8, ($t9)
/* 0149B8 80013DB8 8FBF0024 */  lw    $ra, 0x24($sp)
.L80013DBC:
/* 0149BC 80013DBC 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0149C0 80013DC0 8FB10020 */  lw    $s1, 0x20($sp)
/* 0149C4 80013DC4 03E00008 */  jr    $ra
/* 0149C8 80013DC8 27BD0068 */   addiu $sp, $sp, 0x68
