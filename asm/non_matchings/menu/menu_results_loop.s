glabel menu_results_loop
/* 097EA8 800972A8 3C028012 */  lui   $v0, %hi(D_801263BC) # $v0, 0x8012
/* 097EAC 800972AC 244263BC */  addiu $v0, %lo(D_801263BC) # addiu $v0, $v0, 0x63bc
/* 097EB0 800972B0 8C4E0000 */  lw    $t6, ($v0)
/* 097EB4 800972B4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 097EB8 800972B8 01C4C021 */  addu  $t8, $t6, $a0
/* 097EBC 800972BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 097EC0 800972C0 3319003F */  andi  $t9, $t8, 0x3f
/* 097EC4 800972C4 AFA40028 */  sw    $a0, 0x28($sp)
/* 097EC8 800972C8 AFA00024 */  sw    $zero, 0x24($sp)
/* 097ECC 800972CC AFA00020 */  sw    $zero, 0x20($sp)
/* 097ED0 800972D0 AFA0001C */  sw    $zero, 0x1c($sp)
/* 097ED4 800972D4 0C02393B */  jal   func_8008E4EC
/* 097ED8 800972D8 AC590000 */   sw    $t9, ($v0)
/* 097EDC 800972DC 3C068012 */  lui   $a2, %hi(D_801263E0) # $a2, 0x8012
/* 097EE0 800972E0 24C663E0 */  addiu $a2, %lo(D_801263E0) # addiu $a2, $a2, 0x63e0
/* 097EE4 800972E4 8CC30000 */  lw    $v1, ($a2)
/* 097EE8 800972E8 3C078012 */  lui   $a3, %hi(D_801263D8) # $a3, 0x8012
/* 097EEC 800972EC 1C600013 */  bgtz  $v1, .L8009733C
/* 097EF0 800972F0 24E763D8 */   addiu $a3, %lo(D_801263D8) # addiu $a3, $a3, 0x63d8
/* 097EF4 800972F4 8CEA0000 */  lw    $t2, ($a3)
/* 097EF8 800972F8 8FAB0028 */  lw    $t3, 0x28($sp)
/* 097EFC 800972FC 24080001 */  li    $t0, 1
/* 097F00 80097300 014B1021 */  addu  $v0, $t2, $t3
/* 097F04 80097304 2841003C */  slti  $at, $v0, 0x3c
/* 097F08 80097308 14200003 */  bnez  $at, .L80097318
/* 097F0C 8009730C ACE20000 */   sw    $v0, ($a3)
/* 097F10 80097310 1000000A */  b     .L8009733C
/* 097F14 80097314 ACC80000 */   sw    $t0, ($a2)
.L80097318:
/* 097F18 80097318 04610008 */  bgez  $v1, .L8009733C
/* 097F1C 8009731C 28410015 */   slti  $at, $v0, 0x15
/* 097F20 80097320 14200006 */  bnez  $at, .L8009733C
/* 097F24 80097324 24040016 */   li    $a0, 22
/* 097F28 80097328 ACC00000 */  sw    $zero, ($a2)
/* 097F2C 8009732C 0C000741 */  jal   func_80001D04
/* 097F30 80097330 00002825 */   move  $a1, $zero
/* 097F34 80097334 3C068012 */  lui   $a2, %hi(D_801263E0) # $a2, 0x8012
/* 097F38 80097338 24C663E0 */  addiu $a2, %lo(D_801263E0) # addiu $a2, $a2, 0x63e0
.L8009733C:
/* 097F3C 8009733C 3C09800E */  lui   $t1, %hi(gMenuDelay) # $t1, 0x800e
/* 097F40 80097340 2529F47C */  addiu $t1, %lo(gMenuDelay) # addiu $t1, $t1, -0xb84
/* 097F44 80097344 8D230000 */  lw    $v1, ($t1)
/* 097F48 80097348 3C078012 */  lui   $a3, %hi(D_801263D8) # $a3, 0x8012
/* 097F4C 8009734C 28610014 */  slti  $at, $v1, 0x14
/* 097F50 80097350 24E763D8 */  addiu $a3, %lo(D_801263D8) # addiu $a3, $a3, 0x63d8
/* 097F54 80097354 10200027 */  beqz  $at, .L800973F4
/* 097F58 80097358 24080001 */   li    $t0, 1
/* 097F5C 8009735C 8CCD0000 */  lw    $t5, ($a2)
/* 097F60 80097360 8FA40028 */  lw    $a0, 0x28($sp)
/* 097F64 80097364 1DA0001A */  bgtz  $t5, .L800973D0
/* 097F68 80097368 00000000 */   nop   
/* 097F6C 8009736C 8CE20000 */  lw    $v0, ($a3)
/* 097F70 80097370 00000000 */  nop   
/* 097F74 80097374 28410014 */  slti  $at, $v0, 0x14
/* 097F78 80097378 1420001E */  bnez  $at, .L800973F4
/* 097F7C 8009737C 244EFFEC */   addiu $t6, $v0, -0x14
/* 097F80 80097380 448E2000 */  mtc1  $t6, $f4
/* 097F84 80097384 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 097F88 80097388 468021A0 */  cvt.s.w $f6, $f4
/* 097F8C 8009738C 44814000 */  mtc1  $at, $f8
/* 097F90 80097390 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 097F94 80097394 46083283 */  div.s $f10, $f6, $f8
/* 097F98 80097398 44818000 */  mtc1  $at, $f16
/* 097F9C 8009739C 8FA40028 */  lw    $a0, 0x28($sp)
/* 097FA0 800973A0 460A8481 */  sub.s $f18, $f16, $f10
/* 097FA4 800973A4 44059000 */  mfc1  $a1, $f18
/* 097FA8 800973A8 0C025A5E */  jal   func_80096978
/* 097FAC 800973AC 00000000 */   nop   
/* 097FB0 800973B0 3C03800E */  lui   $v1, %hi(gMenuDelay) # $v1, 0x800e
/* 097FB4 800973B4 8C63F47C */  lw    $v1, %lo(gMenuDelay)($v1)
/* 097FB8 800973B8 3C068012 */  lui   $a2, %hi(D_801263E0) # $a2, 0x8012
/* 097FBC 800973BC 3C09800E */  lui   $t1, %hi(gMenuDelay) # $t1, 0x800e
/* 097FC0 800973C0 2529F47C */  addiu $t1, %lo(gMenuDelay) # addiu $t1, $t1, -0xb84
/* 097FC4 800973C4 24C663E0 */  addiu $a2, %lo(D_801263E0) # addiu $a2, $a2, 0x63e0
/* 097FC8 800973C8 1000000A */  b     .L800973F4
/* 097FCC 800973CC 24080001 */   li    $t0, 1
.L800973D0:
/* 097FD0 800973D0 0C025A5E */  jal   func_80096978
/* 097FD4 800973D4 24050000 */   li    $a1, 0
/* 097FD8 800973D8 3C03800E */  lui   $v1, %hi(gMenuDelay) # $v1, 0x800e
/* 097FDC 800973DC 3C068012 */  lui   $a2, %hi(D_801263E0) # $a2, 0x8012
/* 097FE0 800973E0 3C09800E */  lui   $t1, %hi(gMenuDelay) # $t1, 0x800e
/* 097FE4 800973E4 8C63F47C */  lw    $v1, %lo(gMenuDelay)($v1)
/* 097FE8 800973E8 2529F47C */  addiu $t1, %lo(gMenuDelay) # addiu $t1, $t1, -0xb84
/* 097FEC 800973EC 24C663E0 */  addiu $a2, %lo(D_801263E0) # addiu $a2, $a2, 0x63e0
/* 097FF0 800973F0 24080001 */  li    $t0, 1
.L800973F4:
/* 097FF4 800973F4 14600088 */  bnez  $v1, .L80097618
/* 097FF8 800973F8 8FB80028 */   lw    $t8, 0x28($sp)
/* 097FFC 800973FC 8CCF0000 */  lw    $t7, ($a2)
/* 098000 80097400 3C04800E */  lui   $a0, %hi(D_800E0988) # $a0, 0x800e
/* 098004 80097404 15E00009 */  bnez  $t7, .L8009742C
/* 098008 80097408 24840988 */   addiu $a0, %lo(D_800E0988) # addiu $a0, $a0, 0x988
/* 09800C 8009740C 3C188012 */  lui   $t8, %hi(D_801267E8) # $t8, 0x8012
/* 098010 80097410 8F1867E8 */  lw    $t8, %lo(D_801267E8)($t8)
/* 098014 80097414 00000000 */  nop   
/* 098018 80097418 33199000 */  andi  $t9, $t8, 0x9000
/* 09801C 8009741C 13200068 */  beqz  $t9, .L800975C0
/* 098020 80097420 8FAC0024 */   lw    $t4, 0x24($sp)
/* 098024 80097424 10000065 */  b     .L800975BC
/* 098028 80097428 ACC80000 */   sw    $t0, ($a2)
.L8009742C:
/* 09802C 8009742C 8C820000 */  lw    $v0, ($a0)
/* 098030 80097430 3C038012 */  lui   $v1, %hi(D_801267E8) # $v1, 0x8012
/* 098034 80097434 1040002D */  beqz  $v0, .L800974EC
/* 098038 80097438 3C188012 */   lui   $t8, %hi(D_801267E8) # $t8, 0x8012
/* 09803C 8009743C 8C6367E8 */  lw    $v1, %lo(D_801267E8)($v1)
/* 098040 80097440 00000000 */  nop   
/* 098044 80097444 306A9000 */  andi  $t2, $v1, 0x9000
/* 098048 80097448 11400010 */  beqz  $t2, .L8009748C
/* 09804C 8009744C 306C4000 */   andi  $t4, $v1, 0x4000
/* 098050 80097450 1502000B */  bne   $t0, $v0, .L80097480
/* 098054 80097454 240B0001 */   li    $t3, 1
/* 098058 80097458 AFA80020 */  sw    $t0, 0x20($sp)
/* 09805C 8009745C 0C000326 */  jal   func_80000C98
/* 098060 80097460 2404FF80 */   li    $a0, -128
/* 098064 80097464 3C04800E */  lui   $a0, %hi(D_800DF774) # $a0, 0x800e
/* 098068 80097468 0C030076 */  jal   func_800C01D8
/* 09806C 8009746C 2484F774 */   addiu $a0, %lo(D_800DF774) # addiu $a0, $a0, -0x88c
/* 098070 80097470 24080001 */  li    $t0, 1
/* 098074 80097474 3C01800E */  lui   $at, %hi(gMenuDelay) # $at, 0x800e
/* 098078 80097478 10000050 */  b     .L800975BC
/* 09807C 8009747C AC28F47C */   sw    $t0, %lo(gMenuDelay)($at)
.L80097480:
/* 098080 80097480 AFAB0024 */  sw    $t3, 0x24($sp)
/* 098084 80097484 1000004D */  b     .L800975BC
/* 098088 80097488 AC800000 */   sw    $zero, ($a0)
.L8009748C:
/* 09808C 8009748C 11800005 */  beqz  $t4, .L800974A4
/* 098090 80097490 3C038012 */   lui   $v1, %hi(D_80126838) # $v1, 0x8012
/* 098094 80097494 240D0001 */  li    $t5, 1
/* 098098 80097498 AFAD0024 */  sw    $t5, 0x24($sp)
/* 09809C 8009749C 10000047 */  b     .L800975BC
/* 0980A0 800974A0 AC800000 */   sw    $zero, ($a0)
.L800974A4:
/* 0980A4 800974A4 84636838 */  lh    $v1, %lo(D_80126838)($v1)
/* 0980A8 800974A8 00402825 */  move  $a1, $v0
/* 0980AC 800974AC 18600005 */  blez  $v1, .L800974C4
/* 0980B0 800974B0 24010002 */   li    $at, 2
/* 0980B4 800974B4 14410003 */  bne   $v0, $at, .L800974C4
/* 0980B8 800974B8 00000000 */   nop   
/* 0980BC 800974BC AC880000 */  sw    $t0, ($a0)
/* 0980C0 800974C0 01001025 */  move  $v0, $t0
.L800974C4:
/* 0980C4 800974C4 04610005 */  bgez  $v1, .L800974DC
/* 0980C8 800974C8 240F0001 */   li    $t7, 1
/* 0980CC 800974CC 15020003 */  bne   $t0, $v0, .L800974DC
/* 0980D0 800974D0 00000000 */   nop   
/* 0980D4 800974D4 24020002 */  li    $v0, 2
/* 0980D8 800974D8 AC820000 */  sw    $v0, ($a0)
.L800974DC:
/* 0980DC 800974DC 10A20038 */  beq   $a1, $v0, .L800975C0
/* 0980E0 800974E0 8FAC0024 */   lw    $t4, 0x24($sp)
/* 0980E4 800974E4 10000035 */  b     .L800975BC
/* 0980E8 800974E8 AFAF001C */   sw    $t7, 0x1c($sp)
.L800974EC:
/* 0980EC 800974EC 8F1867E8 */  lw    $t8, %lo(D_801267E8)($t8)
/* 0980F0 800974F0 3C068012 */  lui   $a2, %hi(D_80126A68) # $a2, 0x8012
/* 0980F4 800974F4 33199000 */  andi  $t9, $t8, 0x9000
/* 0980F8 800974F8 13200019 */  beqz  $t9, .L80097560
/* 0980FC 800974FC 24C66A68 */   addiu $a2, %lo(D_80126A68) # addiu $a2, $a2, 0x6a68
/* 098100 80097500 3C068012 */  lui   $a2, %hi(D_80126A68) # $a2, 0x8012
/* 098104 80097504 24C66A68 */  addiu $a2, %lo(D_80126A68) # addiu $a2, $a2, 0x6a68
/* 098108 80097508 8CCA0000 */  lw    $t2, ($a2)
/* 09810C 8009750C 3C0D800E */  lui   $t5, %hi(gMenuText) # $t5, 0x800e
/* 098110 80097510 8DADF4A0 */  lw    $t5, %lo(gMenuText)($t5)
/* 098114 80097514 3C0C8012 */  lui   $t4, %hi(D_80126BF0) # $t4, 0x8012
/* 098118 80097518 000A5880 */  sll   $t3, $t2, 2
/* 09811C 8009751C AFA80020 */  sw    $t0, 0x20($sp)
/* 098120 80097520 018B6021 */  addu  $t4, $t4, $t3
/* 098124 80097524 8D8C6BF0 */  lw    $t4, %lo(D_80126BF0)($t4)
/* 098128 80097528 8DAE0070 */  lw    $t6, 0x70($t5)
/* 09812C 8009752C 240F0002 */  li    $t7, 2
/* 098130 80097530 158E0003 */  bne   $t4, $t6, .L80097540
/* 098134 80097534 00000000 */   nop   
/* 098138 80097538 10000020 */  b     .L800975BC
/* 09813C 8009753C AC8F0000 */   sw    $t7, ($a0)
.L80097540:
/* 098140 80097540 3C04800E */  lui   $a0, %hi(D_800DF774) # $a0, 0x800e
/* 098144 80097544 AD280000 */  sw    $t0, ($t1)
/* 098148 80097548 0C030076 */  jal   func_800C01D8
/* 09814C 8009754C 2484F774 */   addiu $a0, %lo(D_800DF774) # addiu $a0, $a0, -0x88c
/* 098150 80097550 0C000326 */  jal   func_80000C98
/* 098154 80097554 2404FF80 */   li    $a0, -128
/* 098158 80097558 10000019 */  b     .L800975C0
/* 09815C 8009755C 8FAC0024 */   lw    $t4, 0x24($sp)
.L80097560:
/* 098160 80097560 3C038012 */  lui   $v1, %hi(D_80126838) # $v1, 0x8012
/* 098164 80097564 8CC20000 */  lw    $v0, ($a2)
/* 098168 80097568 84636838 */  lh    $v1, %lo(D_80126838)($v1)
/* 09816C 8009756C 3C188012 */  lui   $t8, %hi(D_80126C14) # $t8, 0x8012
/* 098170 80097570 04610009 */  bgez  $v1, .L80097598
/* 098174 80097574 00402825 */   move  $a1, $v0
/* 098178 80097578 8F186C14 */  lw    $t8, %lo(D_80126C14)($t8)
/* 09817C 8009757C 244A0001 */  addiu $t2, $v0, 1
/* 098180 80097580 2719FFFF */  addiu $t9, $t8, -1
/* 098184 80097584 0059082A */  slt   $at, $v0, $t9
/* 098188 80097588 10200003 */  beqz  $at, .L80097598
/* 09818C 8009758C 00000000 */   nop   
/* 098190 80097590 ACCA0000 */  sw    $t2, ($a2)
/* 098194 80097594 01401025 */  move  $v0, $t2
.L80097598:
/* 098198 80097598 18600005 */  blez  $v1, .L800975B0
/* 09819C 8009759C 240D0001 */   li    $t5, 1
/* 0981A0 800975A0 18400003 */  blez  $v0, .L800975B0
/* 0981A4 800975A4 244BFFFF */   addiu $t3, $v0, -1
/* 0981A8 800975A8 ACCB0000 */  sw    $t3, ($a2)
/* 0981AC 800975AC 01601025 */  move  $v0, $t3
.L800975B0:
/* 0981B0 800975B0 10A20003 */  beq   $a1, $v0, .L800975C0
/* 0981B4 800975B4 8FAC0024 */   lw    $t4, 0x24($sp)
/* 0981B8 800975B8 AFAD001C */  sw    $t5, 0x1c($sp)
.L800975BC:
/* 0981BC 800975BC 8FAC0024 */  lw    $t4, 0x24($sp)
.L800975C0:
/* 0981C0 800975C0 8FAE0020 */  lw    $t6, 0x20($sp)
/* 0981C4 800975C4 11800005 */  beqz  $t4, .L800975DC
/* 0981C8 800975C8 24040241 */   li    $a0, 577
/* 0981CC 800975CC 0C000741 */  jal   func_80001D04
/* 0981D0 800975D0 00002825 */   move  $a1, $zero
/* 0981D4 800975D4 10000036 */  b     .L800976B0
/* 0981D8 800975D8 00000000 */   nop   
.L800975DC:
/* 0981DC 800975DC 11C00005 */  beqz  $t6, .L800975F4
/* 0981E0 800975E0 240400EF */   li    $a0, 239
/* 0981E4 800975E4 0C000741 */  jal   func_80001D04
/* 0981E8 800975E8 00002825 */   move  $a1, $zero
/* 0981EC 800975EC 10000030 */  b     .L800976B0
/* 0981F0 800975F0 00000000 */   nop   
.L800975F4:
/* 0981F4 800975F4 8FAF001C */  lw    $t7, 0x1c($sp)
/* 0981F8 800975F8 240400EB */  li    $a0, 235
/* 0981FC 800975FC 11E0002C */  beqz  $t7, .L800976B0
/* 098200 80097600 00000000 */   nop   
/* 098204 80097604 0C000741 */  jal   func_80001D04
/* 098208 80097608 00002825 */   move  $a1, $zero
/* 09820C 8009760C 10000028 */  b     .L800976B0
/* 098210 80097610 00000000 */   nop   
/* 098214 80097614 8FB80028 */  lw    $t8, 0x28($sp)
.L80097618:
/* 098218 80097618 00000000 */  nop   
/* 09821C 8009761C 0078C821 */  addu  $t9, $v1, $t8
/* 098220 80097620 2B21001F */  slti  $at, $t9, 0x1f
/* 098224 80097624 14200022 */  bnez  $at, .L800976B0
/* 098228 80097628 AD390000 */   sw    $t9, ($t1)
/* 09822C 8009762C 0C025DB3 */  jal   func_800976CC
/* 098230 80097630 00000000 */   nop   
/* 098234 80097634 0C031588 */  jal   close_dialogue_box
/* 098238 80097638 24040007 */   li    $a0, 7
/* 09823C 8009763C 0C031525 */  jal   func_800C5494
/* 098240 80097640 24040007 */   li    $a0, 7
/* 098244 80097644 3C068012 */  lui   $a2, %hi(D_80126A68) # $a2, 0x8012
/* 098248 80097648 24C66A68 */  addiu $a2, %lo(D_80126A68) # addiu $a2, $a2, 0x6a68
/* 09824C 8009764C 8CCB0000 */  lw    $t3, ($a2)
/* 098250 80097650 3C03800E */  lui   $v1, %hi(gMenuText) # $v1, 0x800e
/* 098254 80097654 8C63F4A0 */  lw    $v1, %lo(gMenuText)($v1)
/* 098258 80097658 3C028012 */  lui   $v0, %hi(D_80126BF0) # $v0, 0x8012
/* 09825C 8009765C 000B6880 */  sll   $t5, $t3, 2
/* 098260 80097660 004D1021 */  addu  $v0, $v0, $t5
/* 098264 80097664 8C426BF0 */  lw    $v0, %lo(D_80126BF0)($v0)
/* 098268 80097668 8C6C005C */  lw    $t4, 0x5c($v1)
/* 09826C 8009766C 00000000 */  nop   
/* 098270 80097670 144C0003 */  bne   $v0, $t4, .L80097680
/* 098274 80097674 00000000 */   nop   
/* 098278 80097678 10000010 */  b     .L800976BC
/* 09827C 8009767C 24020102 */   li    $v0, 258
.L80097680:
/* 098280 80097680 8C6E0060 */  lw    $t6, 0x60($v1)
/* 098284 80097684 2404FFFF */  li    $a0, -1
/* 098288 80097688 144E0007 */  bne   $v0, $t6, .L800976A8
/* 09828C 8009768C 2405FFFF */   li    $a1, -1
/* 098290 80097690 0C01B8BA */  jal   load_level_for_menu
/* 098294 80097694 00003025 */   move  $a2, $zero
/* 098298 80097698 0C0204F4 */  jal   menu_init
/* 09829C 8009769C 2404000F */   li    $a0, 15
/* 0982A0 800976A0 10000006 */  b     .L800976BC
/* 0982A4 800976A4 00001025 */   move  $v0, $zero
.L800976A8:
/* 0982A8 800976A8 10000004 */  b     .L800976BC
/* 0982AC 800976AC 24020104 */   li    $v0, 260
.L800976B0:
/* 0982B0 800976B0 3C018012 */  lui   $at, %hi(gIgnorePlayerInput) # $at, 0x8012
/* 0982B4 800976B4 AC2063C4 */  sw    $zero, %lo(gIgnorePlayerInput)($at)
/* 0982B8 800976B8 00001025 */  move  $v0, $zero
.L800976BC:
/* 0982BC 800976BC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0982C0 800976C0 27BD0028 */  addiu $sp, $sp, 0x28
/* 0982C4 800976C4 03E00008 */  jr    $ra
/* 0982C8 800976C8 00000000 */   nop   

