glabel func_800766D4
/* 0772D4 800766D4 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0772D8 800766D8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0772DC 800766DC AFA40058 */  sw    $a0, 0x58($sp)
/* 0772E0 800766E0 AFA5005C */  sw    $a1, 0x5c($sp)
/* 0772E4 800766E4 AFA60060 */  sw    $a2, 0x60($sp)
/* 0772E8 800766E8 0C01D637 */  jal   func_800758DC
/* 0772EC 800766EC AFA70064 */   sw    $a3, 0x64($sp)
/* 0772F0 800766F0 10400007 */  beqz  $v0, .L80076710
/* 0772F4 800766F4 27A50044 */   addiu $a1, $sp, 0x44
/* 0772F8 800766F8 8FA40058 */  lw    $a0, 0x58($sp)
/* 0772FC 800766FC 0C01D6BB */  jal   func_80075AEC
/* 077300 80076700 AFA20038 */   sw    $v0, 0x38($sp)
/* 077304 80076704 8FA20038 */  lw    $v0, 0x38($sp)
/* 077308 80076708 10000083 */  b     .L80076918
/* 07730C 8007670C 8FBF0024 */   lw    $ra, 0x24($sp)
.L80076710:
/* 077310 80076710 8FA3006C */  lw    $v1, 0x6c($sp)
/* 077314 80076714 8FA40060 */  lw    $a0, 0x60($sp)
/* 077318 80076718 306200FF */  andi  $v0, $v1, 0xff
/* 07731C 8007671C 10400003 */  beqz  $v0, .L8007672C
/* 077320 80076720 00603825 */   move  $a3, $v1
/* 077324 80076724 00623823 */  subu  $a3, $v1, $v0
/* 077328 80076728 24E70100 */  addiu $a3, $a3, 0x100
.L8007672C:
/* 07732C 8007672C 24060010 */  li    $a2, 16
/* 077330 80076730 0C01DA8E */  jal   func_80076A38
/* 077334 80076734 AFA70030 */   sw    $a3, 0x30($sp)
/* 077338 80076738 8FA40064 */  lw    $a0, 0x64($sp)
/* 07733C 8007673C 27A5003C */  addiu $a1, $sp, 0x3c
/* 077340 80076740 0C01DA8E */  jal   func_80076A38
/* 077344 80076744 24060004 */   li    $a2, 4
/* 077348 80076748 0C027AC8 */  jal   func_8009EB20
/* 07734C 8007674C 00000000 */   nop   
/* 077350 80076750 24010003 */  li    $at, 3
/* 077354 80076754 14410005 */  bne   $v0, $at, .L8007676C
/* 077358 80076758 3C0F8000 */   lui   $t7, %hi(osTvType) # $t7, 0x8000
/* 07735C 8007675C 3C0E4E44 */  lui   $t6, (0x4E44594A >> 16) # lui $t6, 0x4e44
/* 077360 80076760 35CE594A */  ori   $t6, (0x4E44594A & 0xFFFF) # ori $t6, $t6, 0x594a
/* 077364 80076764 1000000A */  b     .L80076790
/* 077368 80076768 AFAE002C */   sw    $t6, 0x2c($sp)
.L8007676C:
/* 07736C 8007676C 8DEF0300 */  lw    $t7, %lo(osTvType)($t7)
/* 077370 80076770 3C194E44 */  lui   $t9, (0x4E445945 >> 16) # lui $t9, 0x4e44
/* 077374 80076774 15E00005 */  bnez  $t7, .L8007678C
/* 077378 80076778 37395945 */   ori   $t9, (0x4E445945 & 0xFFFF) # ori $t9, $t9, 0x5945
/* 07737C 8007677C 3C184E44 */  lui   $t8, (0x4E445950 >> 16) # lui $t8, 0x4e44
/* 077380 80076780 37185950 */  ori   $t8, (0x4E445950 & 0xFFFF) # ori $t8, $t8, 0x5950
/* 077384 80076784 10000002 */  b     .L80076790
/* 077388 80076788 AFB8002C */   sw    $t8, 0x2c($sp)
.L8007678C:
/* 07738C 8007678C AFB9002C */  sw    $t9, 0x2c($sp)
.L80076790:
/* 077390 80076790 8FA40058 */  lw    $a0, 0x58($sp)
/* 077394 80076794 8FA50060 */  lw    $a1, 0x60($sp)
/* 077398 80076798 8FA60064 */  lw    $a2, 0x64($sp)
/* 07739C 8007679C 0C01D93A */  jal   func_800764E8
/* 0773A0 800767A0 27A70034 */   addiu $a3, $sp, 0x34
/* 0773A4 800767A4 1440000B */  bnez  $v0, .L800767D4
/* 0773A8 800767A8 00401825 */   move  $v1, $v0
/* 0773AC 800767AC 8FA2005C */  lw    $v0, 0x5c($sp)
/* 0773B0 800767B0 2401FFFF */  li    $at, -1
/* 0773B4 800767B4 1041002C */  beq   $v0, $at, .L80076868
/* 0773B8 800767B8 00000000 */   nop   
/* 0773BC 800767BC 8FA80034 */  lw    $t0, 0x34($sp)
/* 0773C0 800767C0 00000000 */  nop   
/* 0773C4 800767C4 10480028 */  beq   $v0, $t0, .L80076868
/* 0773C8 800767C8 00000000 */   nop   
/* 0773CC 800767CC 10000026 */  b     .L80076868
/* 0773D0 800767D0 24030009 */   li    $v1, 9
.L800767D4:
/* 0773D4 800767D4 24010005 */  li    $at, 5
/* 0773D8 800767D8 14410023 */  bne   $v0, $at, .L80076868
/* 0773DC 800767DC 00000000 */   nop   
/* 0773E0 800767E0 8FA9005C */  lw    $t1, 0x5c($sp)
/* 0773E4 800767E4 2401FFFF */  li    $at, -1
/* 0773E8 800767E8 11210003 */  beq   $t1, $at, .L800767F8
/* 0773EC 800767EC 3C0C8012 */   lui   $t4, %hi(D_80124018) # $t4, 0x8012
/* 0773F0 800767F0 1000001D */  b     .L80076868
/* 0773F4 800767F4 24030009 */   li    $v1, 9
.L800767F8:
/* 0773F8 800767F8 8FAA0058 */  lw    $t2, 0x58($sp)
/* 0773FC 800767FC 8FAE0030 */  lw    $t6, 0x30($sp)
/* 077400 80076800 000A5880 */  sll   $t3, $t2, 2
/* 077404 80076804 016A5823 */  subu  $t3, $t3, $t2
/* 077408 80076808 000B5880 */  sll   $t3, $t3, 2
/* 07740C 8007680C 016A5821 */  addu  $t3, $t3, $t2
/* 077410 80076810 000B58C0 */  sll   $t3, $t3, 3
/* 077414 80076814 258C4018 */  addiu $t4, %lo(D_80124018) # addiu $t4, $t4, 0x4018
/* 077418 80076818 8FA6002C */  lw    $a2, 0x2c($sp)
/* 07741C 8007681C 27AD003C */  addiu $t5, $sp, 0x3c
/* 077420 80076820 27AF0034 */  addiu $t7, $sp, 0x34
/* 077424 80076824 AFAF0018 */  sw    $t7, 0x18($sp)
/* 077428 80076828 AFAD0010 */  sw    $t5, 0x10($sp)
/* 07742C 8007682C 016C2021 */  addu  $a0, $t3, $t4
/* 077430 80076830 24053459 */  li    $a1, 13401
/* 077434 80076834 27A70044 */  addiu $a3, $sp, 0x44
/* 077438 80076838 0C034410 */  jal   func_800D1040
/* 07743C 8007683C AFAE0014 */   sw    $t6, 0x14($sp)
/* 077440 80076840 14400003 */  bnez  $v0, .L80076850
/* 077444 80076844 24010007 */   li    $at, 7
/* 077448 80076848 10000007 */  b     .L80076868
/* 07744C 8007684C 00001825 */   move  $v1, $zero
.L80076850:
/* 077450 80076850 10410003 */  beq   $v0, $at, .L80076860
/* 077454 80076854 24010008 */   li    $at, 8
/* 077458 80076858 14410003 */  bne   $v0, $at, .L80076868
/* 07745C 8007685C 24030009 */   li    $v1, 9
.L80076860:
/* 077460 80076860 10000001 */  b     .L80076868
/* 077464 80076864 24030004 */   li    $v1, 4
.L80076868:
/* 077468 80076868 14600025 */  bnez  $v1, .L80076900
/* 07746C 8007686C 3C088012 */   lui   $t0, %hi(D_80124018) # $t0, 0x8012
/* 077470 80076870 8FB80058 */  lw    $t8, 0x58($sp)
/* 077474 80076874 8FA90030 */  lw    $t1, 0x30($sp)
/* 077478 80076878 0018C880 */  sll   $t9, $t8, 2
/* 07747C 8007687C 0338C823 */  subu  $t9, $t9, $t8
/* 077480 80076880 0019C880 */  sll   $t9, $t9, 2
/* 077484 80076884 8FAA0068 */  lw    $t2, 0x68($sp)
/* 077488 80076888 0338C821 */  addu  $t9, $t9, $t8
/* 07748C 8007688C 0019C8C0 */  sll   $t9, $t9, 3
/* 077490 80076890 25084018 */  addiu $t0, %lo(D_80124018) # addiu $t0, $t0, 0x4018
/* 077494 80076894 8FA50034 */  lw    $a1, 0x34($sp)
/* 077498 80076898 03282021 */  addu  $a0, $t9, $t0
/* 07749C 8007689C 24060001 */  li    $a2, 1
/* 0774A0 800768A0 00003825 */  move  $a3, $zero
/* 0774A4 800768A4 AFA90010 */  sw    $t1, 0x10($sp)
/* 0774A8 800768A8 0C033BF7 */  jal   func_800CEFDC
/* 0774AC 800768AC AFAA0014 */   sw    $t2, 0x14($sp)
/* 0774B0 800768B0 14400003 */  bnez  $v0, .L800768C0
/* 0774B4 800768B4 24010001 */   li    $at, 1
/* 0774B8 800768B8 10000011 */  b     .L80076900
/* 0774BC 800768BC 00001825 */   move  $v1, $zero
.L800768C0:
/* 0774C0 800768C0 10410003 */  beq   $v0, $at, .L800768D0
/* 0774C4 800768C4 2401000B */   li    $at, 11
/* 0774C8 800768C8 14410004 */  bne   $v0, $at, .L800768DC
/* 0774CC 800768CC 24010003 */   li    $at, 3
.L800768D0:
/* 0774D0 800768D0 1000000B */  b     .L80076900
/* 0774D4 800768D4 24030001 */   li    $v1, 1
/* 0774D8 800768D8 24010003 */  li    $at, 3
.L800768DC:
/* 0774DC 800768DC 14410004 */  bne   $v0, $at, .L800768F0
/* 0774E0 800768E0 2401000A */   li    $at, 10
/* 0774E4 800768E4 10000006 */  b     .L80076900
/* 0774E8 800768E8 24030002 */   li    $v1, 2
/* 0774EC 800768EC 2401000A */  li    $at, 10
.L800768F0:
/* 0774F0 800768F0 14410003 */  bne   $v0, $at, .L80076900
/* 0774F4 800768F4 24030009 */   li    $v1, 9
/* 0774F8 800768F8 10000001 */  b     .L80076900
/* 0774FC 800768FC 24030003 */   li    $v1, 3
.L80076900:
/* 077500 80076900 8FA40058 */  lw    $a0, 0x58($sp)
/* 077504 80076904 0C01D6BB */  jal   func_80075AEC
/* 077508 80076908 AFA30038 */   sw    $v1, 0x38($sp)
/* 07750C 8007690C 8FA20038 */  lw    $v0, 0x38($sp)
/* 077510 80076910 00000000 */  nop   
/* 077514 80076914 8FBF0024 */  lw    $ra, 0x24($sp)
.L80076918:
/* 077518 80076918 27BD0058 */  addiu $sp, $sp, 0x58
/* 07751C 8007691C 03E00008 */  jr    $ra
/* 077520 80076920 00000000 */   nop   

