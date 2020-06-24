.include "globals.inc"
.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # dont insert nops after branches
.set gp=64     # 64-bit instructions are used

/* 080240 8007F640 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 080244 8007F644 AFBF001C */  sw    $ra, 0x1c($sp)
/* 080248 8007F648 AFA40030 */  sw    $a0, 0x30($sp)
/* 08024C 8007F64C AFB00018 */  sw    $s0, 0x18($sp)
/* 080250 8007F650 0C01DB16 */  jal   func_80076C58
/* 080254 8007F654 2404000B */   li    $a0, 11
/* 080258 8007F658 8C4E0000 */  lw    $t6, ($v0)
/* 08025C 8007F65C 2404FFFF */  li    $a0, -1
/* 080260 8007F660 8FA80030 */  lw    $t0, 0x30($sp)
/* 080264 8007F664 00408025 */  move  $s0, $v0
/* 080268 8007F668 108E0005 */  beq   $a0, $t6, .L8007F680
/* 08026C 8007F66C 00001825 */   move  $v1, $zero
.L8007F670:
/* 080270 8007F670 8C4F0004 */  lw    $t7, 4($v0)
/* 080274 8007F674 24630001 */  addiu $v1, $v1, 1
/* 080278 8007F678 148FFFFD */  bne   $a0, $t7, .L8007F670
/* 08027C 8007F67C 24420004 */   addiu $v0, $v0, 4
.L8007F680:
/* 080280 8007F680 2463FFFF */  addiu $v1, $v1, -1
/* 080284 8007F684 14600005 */  bnez  $v1, .L8007F69C
/* 080288 8007F688 00000000 */   nop   
/* 08028C 8007F68C 0C01C450 */  jal   func_80071140
/* 080290 8007F690 02002025 */   move  $a0, $s0
/* 080294 8007F694 1000001B */  b     .L8007F704
/* 080298 8007F698 3C028010 */   lui   $v0, 0x8010
.L8007F69C:
/* 08029C 8007F69C 05000002 */  bltz  $t0, .L8007F6A8
/* 0802A0 8007F6A0 0103082A */   slt   $at, $t0, $v1
/* 0802A4 8007F6A4 14200004 */  bnez  $at, .L8007F6B8
.L8007F6A8:
/* 0802A8 8007F6A8 3C04800E */   lui   $a0, %hi(D_800E7C90) # $a0, 0x800e
/* 0802AC 8007F6AC 0C032755 */  jal   func_800C9D54
/* 0802B0 8007F6B0 24847C90 */   addiu $a0, %lo(D_800E7C90) # addiu $a0, $a0, 0x7c90
/* 0802B4 8007F6B4 00004025 */  move  $t0, $zero
.L8007F6B8:
/* 0802B8 8007F6B8 0008C080 */  sll   $t8, $t0, 2
/* 0802BC 8007F6BC 02181021 */  addu  $v0, $s0, $t8
/* 0802C0 8007F6C0 8C460000 */  lw    $a2, ($v0)
/* 0802C4 8007F6C4 8C590004 */  lw    $t9, 4($v0)
/* 0802C8 8007F6C8 3405FFFF */  li    $a1, 65535
/* 0802CC 8007F6CC 03262023 */  subu  $a0, $t9, $a2
/* 0802D0 8007F6D0 AFA40020 */  sw    $a0, 0x20($sp)
/* 0802D4 8007F6D4 0C01C327 */  jal   func_80070C9C
/* 0802D8 8007F6D8 AFA60024 */   sw    $a2, 0x24($sp)
/* 0802DC 8007F6DC 8FA60024 */  lw    $a2, 0x24($sp)
/* 0802E0 8007F6E0 8FA70020 */  lw    $a3, 0x20($sp)
/* 0802E4 8007F6E4 AFA2002C */  sw    $v0, 0x2c($sp)
/* 0802E8 8007F6E8 2404000A */  li    $a0, 10
/* 0802EC 8007F6EC 0C01DB9A */  jal   func_80076E68
/* 0802F0 8007F6F0 00402825 */   move  $a1, $v0
/* 0802F4 8007F6F4 0C01C450 */  jal   func_80071140
/* 0802F8 8007F6F8 02002025 */   move  $a0, $s0
/* 0802FC 8007F6FC 8FA2002C */  lw    $v0, 0x2c($sp)
/* 080300 8007F700 00000000 */  nop   
.L8007F704:
/* 080304 8007F704 8FBF001C */  lw    $ra, 0x1c($sp)
/* 080308 8007F708 8FB00018 */  lw    $s0, 0x18($sp)
/* 08030C 8007F70C 03E00008 */  jr    $ra
/* 080310 8007F710 27BD0030 */   addiu $sp, $sp, 0x30

/* 080314 8007F714 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 080318 8007F718 AFBF002C */  sw    $ra, 0x2c($sp)
/* 08031C 8007F71C AFBE0028 */  sw    $fp, 0x28($sp)
/* 080320 8007F720 AFB70024 */  sw    $s7, 0x24($sp)
/* 080324 8007F724 AFB60020 */  sw    $s6, 0x20($sp)
/* 080328 8007F728 AFB5001C */  sw    $s5, 0x1c($sp)
/* 08032C 8007F72C AFB40018 */  sw    $s4, 0x18($sp)
/* 080330 8007F730 AFB30014 */  sw    $s3, 0x14($sp)
/* 080334 8007F734 AFB20010 */  sw    $s2, 0x10($sp)
/* 080338 8007F738 AFB1000C */  sw    $s1, 0xc($sp)
/* 08033C 8007F73C AFB00008 */  sw    $s0, 8($sp)
/* 080340 8007F740 8C820000 */  lw    $v0, ($a0)
/* 080344 8007F744 3C18800E */  lui   $t8, %hi(D_800DF440) # $t8, 0x800e
/* 080348 8007F748 244E0008 */  addiu $t6, $v0, 8
/* 08034C 8007F74C AC8E0000 */  sw    $t6, ($a0)
/* 080350 8007F750 2718F440 */  addiu $t8, %lo(D_800DF440) # addiu $t8, $t8, -0xbc0
/* 080354 8007F754 3C0F0702 */  lui   $t7, (0x07020010 >> 16) # lui $t7, 0x702
/* 080358 8007F758 3C018000 */  lui   $at, 0x8000
/* 08035C 8007F75C 0301C821 */  addu  $t9, $t8, $at
/* 080360 8007F760 35EF0010 */  ori   $t7, (0x07020010 & 0xFFFF) # ori $t7, $t7, 0x10
/* 080364 8007F764 3C110708 */  lui   $s1, (0x07080200 >> 16) # lui $s1, 0x708
/* 080368 8007F768 3C140777 */  lui   $s4, (0x0777F000 >> 16) # lui $s4, 0x777
/* 08036C 8007F76C 3C16F510 */  lui   $s6, (0xF510A000 >> 16) # lui $s6, 0xf510
/* 080370 8007F770 3C170008 */  lui   $s7, (0x00080200 >> 16) # lui $s7, 8
/* 080374 8007F774 3C1F004F */  lui   $ra, (0x004FC014 >> 16) # lui $ra, 0x4f
/* 080378 8007F778 24B00010 */  addiu $s0, $a1, 0x10
/* 08037C 8007F77C 00003825 */  move  $a3, $zero
/* 080380 8007F780 37FFC014 */  ori   $ra, (0x004FC014 & 0xFFFF) # ori $ra, $ra, 0xc014
/* 080384 8007F784 36F70200 */  ori   $s7, (0x00080200 & 0xFFFF) # ori $s7, $s7, 0x200
/* 080388 8007F788 36D6A000 */  ori   $s6, (0xF510A000 & 0xFFFF) # ori $s6, $s6, 0xa000
/* 08038C 8007F78C 3694F000 */  ori   $s4, (0x0777F000 & 0xFFFF) # ori $s4, $s4, 0xf000
/* 080390 8007F790 36310200 */  ori   $s1, (0x07080200 & 0xFFFF) # ori $s1, $s1, 0x200
/* 080394 8007F794 3C12E600 */  lui   $s2, 0xe600
/* 080398 8007F798 3C13F300 */  lui   $s3, 0xf300
/* 08039C 8007F79C 3C15E700 */  lui   $s5, 0xe700
/* 0803A0 8007F7A0 3C1EF200 */  lui   $fp, 0xf200
/* 0803A4 8007F7A4 3C0DF510 */  lui   $t5, 0xf510
/* 0803A8 8007F7A8 3C0C8000 */  lui   $t4, 0x8000
/* 0803AC 8007F7AC 3C0BFD10 */  lui   $t3, 0xfd10
/* 0803B0 8007F7B0 AC4F0000 */  sw    $t7, ($v0)
/* 0803B4 8007F7B4 AC590004 */  sw    $t9, 4($v0)
.L8007F7B8:
/* 0803B8 8007F7B8 8C820000 */  lw    $v0, ($a0)
/* 0803BC 8007F7BC 020C7821 */  addu  $t7, $s0, $t4
/* 0803C0 8007F7C0 244E0008 */  addiu $t6, $v0, 8
/* 0803C4 8007F7C4 AC8E0000 */  sw    $t6, ($a0)
/* 0803C8 8007F7C8 AC4F0004 */  sw    $t7, 4($v0)
/* 0803CC 8007F7CC AC4B0000 */  sw    $t3, ($v0)
/* 0803D0 8007F7D0 8C820000 */  lw    $v0, ($a0)
/* 0803D4 8007F7D4 24EA0006 */  addiu $t2, $a3, 6
/* 0803D8 8007F7D8 24580008 */  addiu $t8, $v0, 8
/* 0803DC 8007F7DC AC980000 */  sw    $t8, ($a0)
/* 0803E0 8007F7E0 AC510004 */  sw    $s1, 4($v0)
/* 0803E4 8007F7E4 AC4D0000 */  sw    $t5, ($v0)
/* 0803E8 8007F7E8 8C820000 */  lw    $v0, ($a0)
/* 0803EC 8007F7EC 3C01E450 */  lui   $at, 0xe450
/* 0803F0 8007F7F0 24590008 */  addiu $t9, $v0, 8
/* 0803F4 8007F7F4 AC990000 */  sw    $t9, ($a0)
/* 0803F8 8007F7F8 AC400004 */  sw    $zero, 4($v0)
/* 0803FC 8007F7FC AC520000 */  sw    $s2, ($v0)
/* 080400 8007F800 8C820000 */  lw    $v0, ($a0)
/* 080404 8007F804 26100F00 */  addiu $s0, $s0, 0xf00
/* 080408 8007F808 244E0008 */  addiu $t6, $v0, 8
/* 08040C 8007F80C AC8E0000 */  sw    $t6, ($a0)
/* 080410 8007F810 AC540004 */  sw    $s4, 4($v0)
/* 080414 8007F814 AC530000 */  sw    $s3, ($v0)
/* 080418 8007F818 8C820000 */  lw    $v0, ($a0)
/* 08041C 8007F81C 00000000 */  nop   
/* 080420 8007F820 244F0008 */  addiu $t7, $v0, 8
/* 080424 8007F824 AC8F0000 */  sw    $t7, ($a0)
/* 080428 8007F828 AC400004 */  sw    $zero, 4($v0)
/* 08042C 8007F82C AC550000 */  sw    $s5, ($v0)
/* 080430 8007F830 8C820000 */  lw    $v0, ($a0)
/* 080434 8007F834 000A7880 */  sll   $t7, $t2, 2
/* 080438 8007F838 24580008 */  addiu $t8, $v0, 8
/* 08043C 8007F83C AC980000 */  sw    $t8, ($a0)
/* 080440 8007F840 AC570004 */  sw    $s7, 4($v0)
/* 080444 8007F844 AC560000 */  sw    $s6, ($v0)
/* 080448 8007F848 8C820000 */  lw    $v0, ($a0)
/* 08044C 8007F84C 31F80FFF */  andi  $t8, $t7, 0xfff
/* 080450 8007F850 24590008 */  addiu $t9, $v0, 8
/* 080454 8007F854 AC990000 */  sw    $t9, ($a0)
/* 080458 8007F858 AC5F0004 */  sw    $ra, 4($v0)
/* 08045C 8007F85C AC5E0000 */  sw    $fp, ($v0)
/* 080460 8007F860 8C820000 */  lw    $v0, ($a0)
/* 080464 8007F864 0301C825 */  or    $t9, $t8, $at
/* 080468 8007F868 244E0008 */  addiu $t6, $v0, 8
/* 08046C 8007F86C AC8E0000 */  sw    $t6, ($a0)
/* 080470 8007F870 00077080 */  sll   $t6, $a3, 2
/* 080474 8007F874 31CF0FFF */  andi  $t7, $t6, 0xfff
/* 080478 8007F878 AC4F0004 */  sw    $t7, 4($v0)
/* 08047C 8007F87C AC590000 */  sw    $t9, ($v0)
/* 080480 8007F880 8C820000 */  lw    $v0, ($a0)
/* 080484 8007F884 3C19B300 */  lui   $t9, 0xb300
/* 080488 8007F888 24580008 */  addiu $t8, $v0, 8
/* 08048C 8007F88C AC980000 */  sw    $t8, ($a0)
/* 080490 8007F890 AC400004 */  sw    $zero, 4($v0)
/* 080494 8007F894 AC590000 */  sw    $t9, ($v0)
/* 080498 8007F898 8C820000 */  lw    $v0, ($a0)
/* 08049C 8007F89C 3C181000 */  lui   $t8, (0x10000400 >> 16) # lui $t8, 0x1000
/* 0804A0 8007F8A0 244E0008 */  addiu $t6, $v0, 8
/* 0804A4 8007F8A4 AC8E0000 */  sw    $t6, ($a0)
/* 0804A8 8007F8A8 37180400 */  ori   $t8, (0x10000400 & 0xFFFF) # ori $t8, $t8, 0x400
/* 0804AC 8007F8AC 3C0FB200 */  lui   $t7, 0xb200
/* 0804B0 8007F8B0 240100F0 */  li    $at, 240
/* 0804B4 8007F8B4 01403825 */  move  $a3, $t2
/* 0804B8 8007F8B8 AC4F0000 */  sw    $t7, ($v0)
/* 0804BC 8007F8BC 1541FFBE */  bne   $t2, $at, .L8007F7B8
/* 0804C0 8007F8C0 AC580004 */   sw    $t8, 4($v0)
/* 0804C4 8007F8C4 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0804C8 8007F8C8 8FB00008 */  lw    $s0, 8($sp)
/* 0804CC 8007F8CC 8FB1000C */  lw    $s1, 0xc($sp)
/* 0804D0 8007F8D0 8FB20010 */  lw    $s2, 0x10($sp)
/* 0804D4 8007F8D4 8FB30014 */  lw    $s3, 0x14($sp)
/* 0804D8 8007F8D8 8FB40018 */  lw    $s4, 0x18($sp)
/* 0804DC 8007F8DC 8FB5001C */  lw    $s5, 0x1c($sp)
/* 0804E0 8007F8E0 8FB60020 */  lw    $s6, 0x20($sp)
/* 0804E4 8007F8E4 8FB70024 */  lw    $s7, 0x24($sp)
/* 0804E8 8007F8E8 8FBE0028 */  lw    $fp, 0x28($sp)
/* 0804EC 8007F8EC 03E00008 */  jr    $ra
/* 0804F0 8007F8F0 27BD0030 */   addiu $sp, $sp, 0x30

/* 0804F4 8007F8F4 00000000 */  nop   
/* 0804F8 8007F8F8 00000000 */  nop   
/* 0804FC 8007F8FC 00000000 */  nop   
