glabel func_800AFC3C
/* 0B083C 800AFC3C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0B0840 800AFC40 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0B0844 800AFC44 AFB60030 */  sw    $s6, 0x30($sp)
/* 0B0848 800AFC48 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0B084C 800AFC4C AFB40028 */  sw    $s4, 0x28($sp)
/* 0B0850 800AFC50 AFB30024 */  sw    $s3, 0x24($sp)
/* 0B0854 800AFC54 AFB20020 */  sw    $s2, 0x20($sp)
/* 0B0858 800AFC58 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0B085C 800AFC5C AFB00018 */  sw    $s0, 0x18($sp)
/* 0B0860 800AFC60 8C8E0040 */  lw    $t6, 0x40($a0)
/* 0B0864 800AFC64 8C950074 */  lw    $s5, 0x74($a0)
/* 0B0868 800AFC68 81C70057 */  lb    $a3, 0x57($t6)
/* 0B086C 800AFC6C 00809025 */  move  $s2, $a0
/* 0B0870 800AFC70 00A0B025 */  move  $s6, $a1
/* 0B0874 800AFC74 18E0006F */  blez  $a3, .L800AFE34
/* 0B0878 800AFC78 00009825 */   move  $s3, $zero
/* 0B087C 800AFC7C 0000A025 */  move  $s4, $zero
.L800AFC80:
/* 0B0880 800AFC80 8E46006C */  lw    $a2, 0x6c($s2)
/* 0B0884 800AFC84 32AF0001 */  andi  $t7, $s5, 1
/* 0B0888 800AFC88 11E00032 */  beqz  $t7, .L800AFD54
/* 0B088C 800AFC8C 00D41821 */   addu  $v1, $a2, $s4
/* 0B0890 800AFC90 84620004 */  lh    $v0, 4($v1)
/* 0B0894 800AFC94 02402025 */  move  $a0, $s2
/* 0B0898 800AFC98 30588000 */  andi  $t8, $v0, 0x8000
/* 0B089C 800AFC9C 17000009 */  bnez  $t8, .L800AFCC4
/* 0B08A0 800AFCA0 30594000 */   andi  $t9, $v0, 0x4000
/* 0B08A4 800AFCA4 0C02BD4B */  jal   func_800AF52C
/* 0B08A8 800AFCA8 02602825 */   move  $a1, $s3
/* 0B08AC 800AFCAC 8E46006C */  lw    $a2, 0x6c($s2)
/* 0B08B0 800AFCB0 00000000 */  nop   
/* 0B08B4 800AFCB4 00D41821 */  addu  $v1, $a2, $s4
/* 0B08B8 800AFCB8 84620004 */  lh    $v0, 4($v1)
/* 0B08BC 800AFCBC 00000000 */  nop   
/* 0B08C0 800AFCC0 30594000 */  andi  $t9, $v0, 0x4000
.L800AFCC4:
/* 0B08C4 800AFCC4 13200007 */  beqz  $t9, .L800AFCE4
/* 0B08C8 800AFCC8 30490400 */   andi  $t1, $v0, 0x400
/* 0B08CC 800AFCCC 00134140 */  sll   $t0, $s3, 5
/* 0B08D0 800AFCD0 00C82821 */  addu  $a1, $a2, $t0
/* 0B08D4 800AFCD4 0C02BF97 */  jal   func_800AFE5C
/* 0B08D8 800AFCD8 02402025 */   move  $a0, $s2
/* 0B08DC 800AFCDC 10000019 */  b     .L800AFD44
/* 0B08E0 800AFCE0 8E590040 */   lw    $t9, 0x40($s2)
.L800AFCE4:
/* 0B08E4 800AFCE4 11200006 */  beqz  $t1, .L800AFD00
/* 0B08E8 800AFCE8 02402025 */   move  $a0, $s2
/* 0B08EC 800AFCEC 00135140 */  sll   $t2, $s3, 5
/* 0B08F0 800AFCF0 0C02BF97 */  jal   func_800AFE5C
/* 0B08F4 800AFCF4 00CA2821 */   addu  $a1, $a2, $t2
/* 0B08F8 800AFCF8 10000012 */  b     .L800AFD44
/* 0B08FC 800AFCFC 8E590040 */   lw    $t9, 0x40($s2)
.L800AFD00:
/* 0B0900 800AFD00 846B000A */  lh    $t3, 0xa($v1)
/* 0B0904 800AFD04 02402025 */  move  $a0, $s2
/* 0B0908 800AFD08 01766021 */  addu  $t4, $t3, $s6
/* 0B090C 800AFD0C A46C000A */  sh    $t4, 0xa($v1)
/* 0B0910 800AFD10 8E46006C */  lw    $a2, 0x6c($s2)
/* 0B0914 800AFD14 0013C140 */  sll   $t8, $s3, 5
/* 0B0918 800AFD18 00D41821 */  addu  $v1, $a2, $s4
/* 0B091C 800AFD1C 8C6E0000 */  lw    $t6, ($v1)
/* 0B0920 800AFD20 846D000A */  lh    $t5, 0xa($v1)
/* 0B0924 800AFD24 85CF0040 */  lh    $t7, 0x40($t6)
/* 0B0928 800AFD28 00000000 */  nop   
/* 0B092C 800AFD2C 01AF082A */  slt   $at, $t5, $t7
/* 0B0930 800AFD30 14200003 */  bnez  $at, .L800AFD40
/* 0B0934 800AFD34 00000000 */   nop   
/* 0B0938 800AFD38 0C02BF97 */  jal   func_800AFE5C
/* 0B093C 800AFD3C 00D82821 */   addu  $a1, $a2, $t8
.L800AFD40:
/* 0B0940 800AFD40 8E590040 */  lw    $t9, 0x40($s2)
.L800AFD44:
/* 0B0944 800AFD44 00000000 */  nop   
/* 0B0948 800AFD48 83270057 */  lb    $a3, 0x57($t9)
/* 0B094C 800AFD4C 10000034 */  b     .L800AFE20
/* 0B0950 800AFD50 26730001 */   addiu $s3, $s3, 1
.L800AFD54:
/* 0B0954 800AFD54 84620004 */  lh    $v0, 4($v1)
/* 0B0958 800AFD58 00000000 */  nop   
/* 0B095C 800AFD5C 30488000 */  andi  $t0, $v0, 0x8000
/* 0B0960 800AFD60 1100002E */  beqz  $t0, .L800AFE1C
/* 0B0964 800AFD64 30494000 */   andi  $t1, $v0, 0x4000
/* 0B0968 800AFD68 11200015 */  beqz  $t1, .L800AFDC0
/* 0B096C 800AFD6C 304C0400 */   andi  $t4, $v0, 0x400
/* 0B0970 800AFD70 00135140 */  sll   $t2, $s3, 5
/* 0B0974 800AFD74 00CA8821 */  addu  $s1, $a2, $t2
/* 0B0978 800AFD78 92300006 */  lbu   $s0, 6($s1)
/* 0B097C 800AFD7C 02202825 */  move  $a1, $s1
/* 0B0980 800AFD80 2610FFC0 */  addiu $s0, $s0, -0x40
/* 0B0984 800AFD84 06010002 */  bgez  $s0, .L800AFD90
/* 0B0988 800AFD88 02402025 */   move  $a0, $s2
/* 0B098C 800AFD8C 00008025 */  move  $s0, $zero
.L800AFD90:
/* 0B0990 800AFD90 0C02BF97 */  jal   func_800AFE5C
/* 0B0994 800AFD94 A2300006 */   sb    $s0, 6($s1)
/* 0B0998 800AFD98 16000004 */  bnez  $s0, .L800AFDAC
/* 0B099C 800AFD9C A2300006 */   sb    $s0, 6($s1)
/* 0B09A0 800AFDA0 02402025 */  move  $a0, $s2
/* 0B09A4 800AFDA4 0C02BDB9 */  jal   func_800AF6E4
/* 0B09A8 800AFDA8 02602825 */   move  $a1, $s3
.L800AFDAC:
/* 0B09AC 800AFDAC 8E4B0040 */  lw    $t3, 0x40($s2)
/* 0B09B0 800AFDB0 00000000 */  nop   
/* 0B09B4 800AFDB4 81670057 */  lb    $a3, 0x57($t3)
/* 0B09B8 800AFDB8 10000019 */  b     .L800AFE20
/* 0B09BC 800AFDBC 26730001 */   addiu $s3, $s3, 1
.L800AFDC0:
/* 0B09C0 800AFDC0 11800010 */  beqz  $t4, .L800AFE04
/* 0B09C4 800AFDC4 02402025 */   move  $a0, $s2
/* 0B09C8 800AFDC8 00137140 */  sll   $t6, $s3, 5
/* 0B09CC 800AFDCC 344D0200 */  ori   $t5, $v0, 0x200
/* 0B09D0 800AFDD0 00CE2021 */  addu  $a0, $a2, $t6
/* 0B09D4 800AFDD4 A46D0004 */  sh    $t5, 4($v1)
/* 0B09D8 800AFDD8 908F0006 */  lbu   $t7, 6($a0)
/* 0B09DC 800AFDDC 02402025 */  move  $a0, $s2
/* 0B09E0 800AFDE0 15E00003 */  bnez  $t7, .L800AFDF0
/* 0B09E4 800AFDE4 00000000 */   nop   
/* 0B09E8 800AFDE8 0C02BDB9 */  jal   func_800AF6E4
/* 0B09EC 800AFDEC 02602825 */   move  $a1, $s3
.L800AFDF0:
/* 0B09F0 800AFDF0 8E580040 */  lw    $t8, 0x40($s2)
/* 0B09F4 800AFDF4 00000000 */  nop   
/* 0B09F8 800AFDF8 83070057 */  lb    $a3, 0x57($t8)
/* 0B09FC 800AFDFC 10000008 */  b     .L800AFE20
/* 0B0A00 800AFE00 26730001 */   addiu $s3, $s3, 1
.L800AFE04:
/* 0B0A04 800AFE04 0C02BDB9 */  jal   func_800AF6E4
/* 0B0A08 800AFE08 02602825 */   move  $a1, $s3
/* 0B0A0C 800AFE0C 8E590040 */  lw    $t9, 0x40($s2)
/* 0B0A10 800AFE10 00000000 */  nop   
/* 0B0A14 800AFE14 83270057 */  lb    $a3, 0x57($t9)
/* 0B0A18 800AFE18 00000000 */  nop   
.L800AFE1C:
/* 0B0A1C 800AFE1C 26730001 */  addiu $s3, $s3, 1
.L800AFE20:
/* 0B0A20 800AFE20 0267082A */  slt   $at, $s3, $a3
/* 0B0A24 800AFE24 00154042 */  srl   $t0, $s5, 1
/* 0B0A28 800AFE28 26940020 */  addiu $s4, $s4, 0x20
/* 0B0A2C 800AFE2C 1420FF94 */  bnez  $at, .L800AFC80
/* 0B0A30 800AFE30 0100A825 */   move  $s5, $t0
.L800AFE34:
/* 0B0A34 800AFE34 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0B0A38 800AFE38 8FB00018 */  lw    $s0, 0x18($sp)
/* 0B0A3C 800AFE3C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0B0A40 800AFE40 8FB20020 */  lw    $s2, 0x20($sp)
/* 0B0A44 800AFE44 8FB30024 */  lw    $s3, 0x24($sp)
/* 0B0A48 800AFE48 8FB40028 */  lw    $s4, 0x28($sp)
/* 0B0A4C 800AFE4C 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0B0A50 800AFE50 8FB60030 */  lw    $s6, 0x30($sp)
/* 0B0A54 800AFE54 03E00008 */  jr    $ra
/* 0B0A58 800AFE58 27BD0038 */   addiu $sp, $sp, 0x38
