.late_rodata
glabel D_800E6910
.double 65.0
glabel D_800E6918
.double 1.3

.text
glabel func_800581E8
/* 058DE8 800581E8 27BDFF98 */  addiu $sp, $sp, -0x68
/* 058DEC 800581EC 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
/* 058DF0 800581F0 44818000 */  mtc1  $at, $f16
/* 058DF4 800581F4 3C014248 */  li    $at, 0x42480000 # 50.000000
/* 058DF8 800581F8 44812000 */  mtc1  $at, $f4
/* 058DFC 800581FC AFBF0014 */  sw    $ra, 0x14($sp)
/* 058E00 80058200 240E0400 */  li    $t6, 1024
/* 058E04 80058204 E7AC0068 */  swc1  $f12, 0x68($sp)
/* 058E08 80058208 AFA5006C */  sw    $a1, 0x6c($sp)
/* 058E0C 8005820C AFAE001C */  sw    $t6, 0x1c($sp)
/* 058E10 80058210 AFA60070 */  sw    $a2, 0x70($sp)
/* 058E14 80058214 E7B00054 */  swc1  $f16, 0x54($sp)
/* 058E18 80058218 0C019884 */  jal   get_viewport_count
/* 058E1C 8005821C E7A40050 */   swc1  $f4, 0x50($sp)
/* 058E20 80058220 24040001 */  li    $a0, 1
/* 058E24 80058224 8FA70070 */  lw    $a3, 0x70($sp)
/* 058E28 80058228 C7B00054 */  lwc1  $f16, 0x54($sp)
/* 058E2C 8005822C 14440005 */  bne   $v0, $a0, .L80058244
/* 058E30 80058230 3C014340 */   li    $at, 0x43400000 # 192.000000
/* 058E34 80058234 44818000 */  mtc1  $at, $f16
/* 058E38 80058238 240F0200 */  li    $t7, 512
/* 058E3C 8005823C 10000009 */  b     .L80058264
/* 058E40 80058240 AFAF001C */   sw    $t7, 0x1c($sp)
.L80058244:
/* 058E44 80058244 28410003 */  slti  $at, $v0, 3
/* 058E48 80058248 14200006 */  bnez  $at, .L80058264
/* 058E4C 8005824C 3C0142C8 */   li    $at, 0x42C80000 # 100.000000
/* 058E50 80058250 44818000 */  mtc1  $at, $f16
/* 058E54 80058254 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 058E58 80058258 44813000 */  mtc1  $at, $f6
/* 058E5C 8005825C 00000000 */  nop   
/* 058E60 80058260 E7A60050 */  swc1  $f6, 0x50($sp)
.L80058264:
/* 058E64 80058264 AFA70070 */  sw    $a3, 0x70($sp)
/* 058E68 80058268 0C008D5A */  jal   func_80023568
/* 058E6C 8005826C E7B00054 */   swc1  $f16, 0x54($sp)
/* 058E70 80058270 24040001 */  li    $a0, 1
/* 058E74 80058274 8FA70070 */  lw    $a3, 0x70($sp)
/* 058E78 80058278 C7B00054 */  lwc1  $f16, 0x54($sp)
/* 058E7C 8005827C 10440002 */  beq   $v0, $a0, .L80058288
/* 058E80 80058280 24010004 */   li    $at, 4
/* 058E84 80058284 14410012 */  bne   $v0, $at, .L800582D0
.L80058288:
/* 058E88 80058288 3C088012 */   lui   $t0, %hi(gCameraObject) # $t0, 0x8012
/* 058E8C 8005828C 2508D508 */  addiu $t0, %lo(gCameraObject) # addiu $t0, $t0, -0x2af8
/* 058E90 80058290 3C014310 */  li    $at, 0x43100000 # 144.000000
/* 058E94 80058294 44810000 */  mtc1  $at, $f0
/* 058E98 80058298 8D180000 */  lw    $t8, ($t0)
/* 058E9C 8005829C 3C0142DC */  li    $at, 0x42DC0000 # 110.000000
/* 058EA0 800582A0 9319003B */  lbu   $t9, 0x3b($t8)
/* 058EA4 800582A4 44819000 */  mtc1  $at, $f18
/* 058EA8 800582A8 24010003 */  li    $at, 3
/* 058EAC 800582AC 17210005 */  bne   $t9, $at, .L800582C4
/* 058EB0 800582B0 46000406 */   mov.s $f16, $f0
/* 058EB4 800582B4 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 058EB8 800582B8 44814000 */  mtc1  $at, $f8
/* 058EBC 800582BC 00000000 */  nop   
/* 058EC0 800582C0 46080400 */  add.s $f16, $f0, $f8
.L800582C4:
/* 058EC4 800582C4 24090D00 */  li    $t1, 3328
/* 058EC8 800582C8 AFA9001C */  sw    $t1, 0x1c($sp)
/* 058ECC 800582CC E7B20050 */  swc1  $f18, 0x50($sp)
.L800582D0:
/* 058ED0 800582D0 84EA01A0 */  lh    $t2, 0x1a0($a3)
/* 058ED4 800582D4 84E2019E */  lh    $v0, 0x19e($a3)
/* 058ED8 800582D8 000A5823 */  negu  $t3, $t2
/* 058EDC 800582DC 34018000 */  li    $at, 32768
/* 058EE0 800582E0 01626023 */  subu  $t4, $t3, $v0
/* 058EE4 800582E4 01816821 */  addu  $t5, $t4, $at
/* 058EE8 800582E8 000218C3 */  sra   $v1, $v0, 3
/* 058EEC 800582EC 3C088012 */  lui   $t0, %hi(gCameraObject) # $t0, 0x8012
/* 058EF0 800582F0 C7B20050 */  lwc1  $f18, 0x50($sp)
/* 058EF4 800582F4 28610401 */  slti  $at, $v1, 0x401
/* 058EF8 800582F8 2508D508 */  addiu $t0, %lo(gCameraObject) # addiu $t0, $t0, -0x2af8
/* 058EFC 800582FC 14200002 */  bnez  $at, .L80058308
/* 058F00 80058300 A4ED0196 */   sh    $t5, 0x196($a3)
/* 058F04 80058304 24030400 */  li    $v1, 1024
.L80058308:
/* 058F08 80058308 2861FC00 */  slti  $at, $v1, -0x400
/* 058F0C 8005830C 10200002 */  beqz  $at, .L80058318
/* 058F10 80058310 00000000 */   nop   
/* 058F14 80058314 2403FC00 */  li    $v1, -1024
.L80058318:
/* 058F18 80058318 444EF800 */  cfc1  $t6, $31
/* 058F1C 8005831C C7AA0068 */  lwc1  $f10, 0x68($sp)
/* 058F20 80058320 35C10003 */  ori   $at, $t6, 3
/* 058F24 80058324 38210002 */  xori  $at, $at, 2
/* 058F28 80058328 44C1F800 */  ctc1  $at, $31
/* 058F2C 8005832C 00000000 */  nop   
/* 058F30 80058330 46005124 */  cvt.w.s $f4, $f10
/* 058F34 80058334 44062000 */  mfc1  $a2, $f4
/* 058F38 80058338 44CEF800 */  ctc1  $t6, $31
/* 058F3C 8005833C 00660019 */  multu $v1, $a2
/* 058F40 80058340 00001812 */  mflo  $v1
/* 058F44 80058344 18600004 */  blez  $v1, .L80058358
/* 058F48 80058348 0062082A */   slt   $at, $v1, $v0
/* 058F4C 8005834C 10200002 */  beqz  $at, .L80058358
/* 058F50 80058350 00437823 */   subu  $t7, $v0, $v1
/* 058F54 80058354 A4EF019E */  sh    $t7, 0x19e($a3)
.L80058358:
/* 058F58 80058358 04610007 */  bgez  $v1, .L80058378
/* 058F5C 8005835C 00000000 */   nop   
/* 058F60 80058360 84E2019E */  lh    $v0, 0x19e($a3)
/* 058F64 80058364 00000000 */  nop   
/* 058F68 80058368 0043082A */  slt   $at, $v0, $v1
/* 058F6C 8005836C 10200002 */  beqz  $at, .L80058378
/* 058F70 80058370 0043C023 */   subu  $t8, $v0, $v1
/* 058F74 80058374 A4F8019E */  sh    $t8, 0x19e($a3)
.L80058378:
/* 058F78 80058378 8D050000 */  lw    $a1, ($t0)
/* 058F7C 8005837C C4EE00B8 */  lwc1  $f14, 0xb8($a3)
/* 058F80 80058380 90A2003B */  lbu   $v0, 0x3b($a1)
/* 058F84 80058384 C4E20008 */  lwc1  $f2, 8($a3)
/* 058F88 80058388 10440007 */  beq   $v0, $a0, .L800583A8
/* 058F8C 8005838C 24010002 */   li    $at, 2
/* 058F90 80058390 10410009 */  beq   $v0, $at, .L800583B8
/* 058F94 80058394 24010003 */   li    $at, 3
/* 058F98 80058398 1041000F */  beq   $v0, $at, .L800583D8
/* 058F9C 8005839C 3C014254 */   lui   $at, 0x4254
/* 058FA0 800583A0 1000001A */  b     .L8005840C
/* 058FA4 800583A4 80F901E2 */   lb    $t9, 0x1e2($a3)
.L800583A8:
/* 058FA8 800583A8 3C01420C */  li    $at, 0x420C0000 # 35.000000
/* 058FAC 800583AC 44813000 */  mtc1  $at, $f6
/* 058FB0 800583B0 10000015 */  b     .L80058408
/* 058FB4 800583B4 46068400 */   add.s $f16, $f16, $f6
.L800583B8:
/* 058FB8 800583B8 3C01420C */  li    $at, 0x420C0000 # 35.000000
/* 058FBC 800583BC 44814000 */  mtc1  $at, $f8
/* 058FC0 800583C0 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 058FC4 800583C4 44815000 */  mtc1  $at, $f10
/* 058FC8 800583C8 46088401 */  sub.s $f16, $f16, $f8
/* 058FCC 800583CC 1000000E */  b     .L80058408
/* 058FD0 800583D0 460A9481 */   sub.s $f18, $f18, $f10
/* 058FD4 800583D4 3C014254 */  li    $at, 0x42540000 # 53.000000
.L800583D8:
/* 058FD8 800583D8 44812000 */  mtc1  $at, $f4
/* 058FDC 800583DC 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 058FE0 800583E0 44813000 */  mtc1  $at, $f6
/* 058FE4 800583E4 3C013FD0 */  li    $at, 0x3FD00000 # 1.625000
/* 058FE8 800583E8 44815800 */  mtc1  $at, $f11
/* 058FEC 800583EC 44805000 */  mtc1  $zero, $f10
/* 058FF0 800583F0 46001221 */  cvt.d.s $f8, $f2
/* 058FF4 800583F4 46048401 */  sub.s $f16, $f16, $f4
/* 058FF8 800583F8 44807000 */  mtc1  $zero, $f14
/* 058FFC 800583FC 462A4102 */  mul.d $f4, $f8, $f10
/* 059000 80058400 46069481 */  sub.s $f18, $f18, $f6
/* 059004 80058404 462020A0 */  cvt.s.d $f2, $f4
.L80058408:
/* 059008 80058408 80F901E2 */  lb    $t9, 0x1e2($a3)
.L8005840C:
/* 05900C 8005840C 44804800 */  mtc1  $zero, $f9
/* 059010 80058410 2B210003 */  slti  $at, $t9, 3
/* 059014 80058414 10200006 */  beqz  $at, .L80058430
/* 059018 80058418 8FAA006C */   lw    $t2, 0x6c($sp)
/* 05901C 8005841C 80E901E5 */  lb    $t1, 0x1e5($a3)
/* 059020 80058420 00000000 */  nop   
/* 059024 80058424 11200024 */  beqz  $t1, .L800584B8
/* 059028 80058428 00000000 */   nop   
/* 05902C 8005842C 8FAA006C */  lw    $t2, 0x6c($sp)
.L80058430:
/* 059030 80058430 8FAC001C */  lw    $t4, 0x1c($sp)
/* 059034 80058434 85420002 */  lh    $v0, 2($t2)
/* 059038 80058438 34018001 */  li    $at, 32769
/* 05903C 8005843C 18400008 */  blez  $v0, .L80058460
/* 059040 80058440 00000000 */   nop   
/* 059044 80058444 2442F8E4 */  addiu $v0, $v0, -0x71c
/* 059048 80058448 04410003 */  bgez  $v0, .L80058458
/* 05904C 8005844C 00025843 */   sra   $t3, $v0, 1
/* 059050 80058450 00001025 */  move  $v0, $zero
/* 059054 80058454 00025843 */  sra   $t3, $v0, 1
.L80058458:
/* 059058 80058458 10000005 */  b     .L80058470
/* 05905C 8005845C 01601025 */   move  $v0, $t3
.L80058460:
/* 059060 80058460 2442071C */  addiu $v0, $v0, 0x71c
/* 059064 80058464 18400002 */  blez  $v0, .L80058470
/* 059068 80058468 00000000 */   nop   
/* 05906C 8005846C 00001025 */  move  $v0, $zero
.L80058470:
/* 059070 80058470 84A40002 */  lh    $a0, 2($a1)
/* 059074 80058474 01821023 */  subu  $v0, $t4, $v0
/* 059078 80058478 308DFFFF */  andi  $t5, $a0, 0xffff
/* 05907C 8005847C 004D1823 */  subu  $v1, $v0, $t5
/* 059080 80058480 0061082A */  slt   $at, $v1, $at
/* 059084 80058484 14200003 */  bnez  $at, .L80058494
/* 059088 80058488 3C01FFFF */   lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 05908C 8005848C 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 059090 80058490 00611821 */  addu  $v1, $v1, $at
.L80058494:
/* 059094 80058494 28618000 */  slti  $at, $v1, -0x8000
/* 059098 80058498 10200002 */  beqz  $at, .L800584A4
/* 05909C 8005849C 3401FFFF */   li    $at, 65535
/* 0590A0 800584A0 00611821 */  addu  $v1, $v1, $at
.L800584A4:
/* 0590A4 800584A4 00660019 */  multu $v1, $a2
/* 0590A8 800584A8 00007012 */  mflo  $t6
/* 0590AC 800584AC 000E7903 */  sra   $t7, $t6, 4
/* 0590B0 800584B0 008FC021 */  addu  $t8, $a0, $t7
/* 0590B4 800584B4 A4B80002 */  sh    $t8, 2($a1)
.L800584B8:
/* 0590B8 800584B8 C4E0002C */  lwc1  $f0, 0x2c($a3)
/* 0590BC 800584BC 44804000 */  mtc1  $zero, $f8
/* 0590C0 800584C0 460001A1 */  cvt.d.s $f6, $f0
/* 0590C4 800584C4 4628303C */  c.lt.d $f6, $f8
/* 0590C8 800584C8 3C0A8012 */  lui   $t2, %hi(D_8011D540) # $t2, 0x8012
/* 0590CC 800584CC 45000016 */  bc1f  .L80058528
/* 0590D0 800584D0 00000000 */   nop   
/* 0590D4 800584D4 460E0282 */  mul.s $f10, $f0, $f14
/* 0590D8 800584D8 80F901E6 */  lb    $t9, 0x1e6($a3)
/* 0590DC 800584DC 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 0590E0 800584E0 44816000 */  mtc1  $at, $f12
/* 0590E4 800584E4 13200004 */  beqz  $t9, .L800584F8
/* 0590E8 800584E8 46005107 */   neg.s $f4, $f10
/* 0590EC 800584EC 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 0590F0 800584F0 44816000 */  mtc1  $at, $f12
/* 0590F4 800584F4 00000000 */  nop   
.L800584F8:
/* 0590F8 800584F8 460C2302 */  mul.s $f12, $f4, $f12
/* 0590FC 800584FC 3C01800E */  lui   $at, %hi(D_800E6910 + 4) # $at, 0x800e
/* 059100 80058500 C4276910 */  lwc1  $f7, %lo(D_800E6910)($at)
/* 059104 80058504 C4266914 */  lwc1  $f6, %lo(D_800E6910 + 4)($at)
/* 059108 80058508 46006221 */  cvt.d.s $f8, $f12
/* 05910C 8005850C 4628303C */  c.lt.d $f6, $f8
/* 059110 80058510 3C014282 */  li    $at, 0x42820000 # 65.000000
/* 059114 80058514 45000003 */  bc1f  .L80058524
/* 059118 80058518 00000000 */   nop   
/* 05911C 8005851C 44816000 */  mtc1  $at, $f12
/* 059120 80058520 00000000 */  nop   
.L80058524:
/* 059124 80058524 460C8401 */  sub.s $f16, $f16, $f12
.L80058528:
/* 059128 80058528 80E901E6 */  lb    $t1, 0x1e6($a3)
/* 05912C 8005852C 00000000 */  nop   
/* 059130 80058530 15200006 */  bnez  $t1, .L8005854C
/* 059134 80058534 3C014270 */   li    $at, 0x42700000 # 60.000000
/* 059138 80058538 44815000 */  mtc1  $at, $f10
/* 05913C 8005853C 00000000 */  nop   
/* 059140 80058540 460A1102 */  mul.s $f4, $f2, $f10
/* 059144 80058544 10000006 */  b     .L80058560
/* 059148 80058548 46048400 */   add.s $f16, $f16, $f4
.L8005854C:
/* 05914C 8005854C 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 059150 80058550 44813000 */  mtc1  $at, $f6
/* 059154 80058554 00000000 */  nop   
/* 059158 80058558 46061202 */  mul.s $f8, $f2, $f6
/* 05915C 8005855C 46088400 */  add.s $f16, $f16, $f8
.L80058560:
/* 059160 80058560 8D4AD540 */  lw    $t2, %lo(D_8011D540)($t2)
/* 059164 80058564 E7B20050 */  swc1  $f18, 0x50($sp)
/* 059168 80058568 15400014 */  bnez  $t2, .L800585BC
/* 05916C 8005856C 24040024 */   li    $a0, 36
/* 059170 80058570 AFA70070 */  sw    $a3, 0x70($sp)
/* 059174 80058574 E7B00054 */  swc1  $f16, 0x54($sp)
/* 059178 80058578 0C00322D */  jal   func_8000C8B4
/* 05917C 8005857C E7B20050 */   swc1  $f18, 0x50($sp)
/* 059180 80058580 8FA70070 */  lw    $a3, 0x70($sp)
/* 059184 80058584 3C088012 */  lui   $t0, %hi(gCameraObject) # $t0, 0x8012
/* 059188 80058588 80E301D3 */  lb    $v1, 0x1d3($a3)
/* 05918C 8005858C C7B00054 */  lwc1  $f16, 0x54($sp)
/* 059190 80058590 0043082A */  slt   $at, $v0, $v1
/* 059194 80058594 10200005 */  beqz  $at, .L800585AC
/* 059198 80058598 2508D508 */   addiu $t0, %lo(gCameraObject) # addiu $t0, $t0, -0x2af8
/* 05919C 8005859C 3C01C1F0 */  li    $at, 0xC1F00000 # -30.000000
/* 0591A0 800585A0 44818000 */  mtc1  $at, $f16
/* 0591A4 800585A4 10000005 */  b     .L800585BC
/* 0591A8 800585A8 00000000 */   nop   
.L800585AC:
/* 0591AC 800585AC 18600003 */  blez  $v1, .L800585BC
/* 0591B0 800585B0 3C014334 */   li    $at, 0x43340000 # 180.000000
/* 0591B4 800585B4 44818000 */  mtc1  $at, $f16
/* 0591B8 800585B8 00000000 */  nop   
.L800585BC:
/* 0591BC 800585BC 3C0B8012 */  lui   $t3, %hi(D_8011D540) # $t3, 0x8012
/* 0591C0 800585C0 8D6BD540 */  lw    $t3, %lo(D_8011D540)($t3)
/* 0591C4 800585C4 C7B20050 */  lwc1  $f18, 0x50($sp)
/* 0591C8 800585C8 8D050000 */  lw    $a1, ($t0)
/* 0591CC 800585CC 29610051 */  slti  $at, $t3, 0x51
/* 0591D0 800585D0 14200007 */  bnez  $at, .L800585F0
/* 0591D4 800585D4 00000000 */   nop   
/* 0591D8 800585D8 E4B0001C */  swc1  $f16, 0x1c($a1)
/* 0591DC 800585DC 8D0C0000 */  lw    $t4, ($t0)
/* 0591E0 800585E0 00000000 */  nop   
/* 0591E4 800585E4 E5920020 */  swc1  $f18, 0x20($t4)
/* 0591E8 800585E8 8D050000 */  lw    $a1, ($t0)
/* 0591EC 800585EC 00000000 */  nop   
.L800585F0:
/* 0591F0 800585F0 C4A2001C */  lwc1  $f2, 0x1c($a1)
/* 0591F4 800585F4 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 0591F8 800585F8 46028101 */  sub.s $f4, $f16, $f2
/* 0591FC 800585FC 44810800 */  mtc1  $at, $f1
/* 059200 80058600 44800000 */  mtc1  $zero, $f0
/* 059204 80058604 460021A1 */  cvt.d.s $f6, $f4
/* 059208 80058608 46203202 */  mul.d $f8, $f6, $f0
/* 05920C 8005860C 460012A1 */  cvt.d.s $f10, $f2
/* 059210 80058610 46285100 */  add.d $f4, $f10, $f8
/* 059214 80058614 462021A0 */  cvt.s.d $f6, $f4
/* 059218 80058618 E4A6001C */  swc1  $f6, 0x1c($a1)
/* 05921C 8005861C 8D050000 */  lw    $a1, ($t0)
/* 059220 80058620 00000000 */  nop   
/* 059224 80058624 C4AE0020 */  lwc1  $f14, 0x20($a1)
/* 059228 80058628 00000000 */  nop   
/* 05922C 8005862C 460E9201 */  sub.s $f8, $f18, $f14
/* 059230 80058630 46004121 */  cvt.d.s $f4, $f8
/* 059234 80058634 46202182 */  mul.d $f6, $f4, $f0
/* 059238 80058638 460072A1 */  cvt.d.s $f10, $f14
/* 05923C 8005863C 46265200 */  add.d $f8, $f10, $f6
/* 059240 80058640 46204120 */  cvt.s.d $f4, $f8
/* 059244 80058644 E4A40020 */  swc1  $f4, 0x20($a1)
/* 059248 80058648 8D0D0000 */  lw    $t5, ($t0)
/* 05924C 8005864C 8FAF001C */  lw    $t7, 0x1c($sp)
/* 059250 80058650 85AE0002 */  lh    $t6, 2($t5)
/* 059254 80058654 AFA70070 */  sw    $a3, 0x70($sp)
/* 059258 80058658 01CF2023 */  subu  $a0, $t6, $t7
/* 05925C 8005865C 0004C400 */  sll   $t8, $a0, 0x10
/* 059260 80058660 0C01C1F1 */  jal   func_800707C4
/* 059264 80058664 00182403 */   sra   $a0, $t8, 0x10
/* 059268 80058668 3C088012 */  lui   $t0, %hi(gCameraObject) # $t0, 0x8012
/* 05926C 8005866C 2508D508 */  addiu $t0, %lo(gCameraObject) # addiu $t0, $t0, -0x2af8
/* 059270 80058670 8D090000 */  lw    $t1, ($t0)
/* 059274 80058674 8FAB001C */  lw    $t3, 0x1c($sp)
/* 059278 80058678 852A0002 */  lh    $t2, 2($t1)
/* 05927C 8005867C E7A00038 */  swc1  $f0, 0x38($sp)
/* 059280 80058680 014B2023 */  subu  $a0, $t2, $t3
/* 059284 80058684 00046400 */  sll   $t4, $a0, 0x10
/* 059288 80058688 0C01C1FE */  jal   func_800707F8
/* 05928C 8005868C 000C2403 */   sra   $a0, $t4, 0x10
/* 059290 80058690 3C088012 */  lui   $t0, %hi(gCameraObject) # $t0, 0x8012
/* 059294 80058694 2508D508 */  addiu $t0, %lo(gCameraObject) # addiu $t0, $t0, -0x2af8
/* 059298 80058698 8D050000 */  lw    $a1, ($t0)
/* 05929C 8005869C C7B00038 */  lwc1  $f16, 0x38($sp)
/* 0592A0 800586A0 C4A2001C */  lwc1  $f2, 0x1c($a1)
/* 0592A4 800586A4 C4AE0020 */  lwc1  $f14, 0x20($a1)
/* 0592A8 800586A8 46001282 */  mul.s $f10, $f2, $f0
/* 0592AC 800586AC 8FA70070 */  lw    $a3, 0x70($sp)
/* 0592B0 800586B0 340F8000 */  li    $t7, 32768
/* 0592B4 800586B4 46107182 */  mul.s $f6, $f14, $f16
/* 0592B8 800586B8 00000000 */  nop   
/* 0592BC 800586BC 46101202 */  mul.s $f8, $f2, $f16
/* 0592C0 800586C0 46065301 */  sub.s $f12, $f10, $f6
/* 0592C4 800586C4 46007102 */  mul.s $f4, $f14, $f0
/* 0592C8 800586C8 46044280 */  add.s $f10, $f8, $f4
/* 0592CC 800586CC E7AA0050 */  swc1  $f10, 0x50($sp)
/* 0592D0 800586D0 84EE0196 */  lh    $t6, 0x196($a3)
/* 0592D4 800586D4 E7AC0040 */  swc1  $f12, 0x40($sp)
/* 0592D8 800586D8 01EE2023 */  subu  $a0, $t7, $t6
/* 0592DC 800586DC 0004C400 */  sll   $t8, $a0, 0x10
/* 0592E0 800586E0 0C01C1F1 */  jal   func_800707C4
/* 0592E4 800586E4 00182403 */   sra   $a0, $t8, 0x10
/* 0592E8 800586E8 C7AC0040 */  lwc1  $f12, 0x40($sp)
/* 0592EC 800586EC 8FA70070 */  lw    $a3, 0x70($sp)
/* 0592F0 800586F0 460C0182 */  mul.s $f6, $f0, $f12
/* 0592F4 800586F4 340A8000 */  li    $t2, 32768
/* 0592F8 800586F8 E7A60048 */  swc1  $f6, 0x48($sp)
/* 0592FC 800586FC 84E90196 */  lh    $t1, 0x196($a3)
/* 059300 80058700 00000000 */  nop   
/* 059304 80058704 01492023 */  subu  $a0, $t2, $t1
/* 059308 80058708 00045C00 */  sll   $t3, $a0, 0x10
/* 05930C 8005870C 0C01C1FE */  jal   func_800707F8
/* 059310 80058710 000B2403 */   sra   $a0, $t3, 0x10
/* 059314 80058714 C7AC0040 */  lwc1  $f12, 0x40($sp)
/* 059318 80058718 3C0D8012 */  lui   $t5, %hi(D_8011D528) # $t5, 0x8012
/* 05931C 8005871C 460C0202 */  mul.s $f8, $f0, $f12
/* 059320 80058720 8DADD528 */  lw    $t5, %lo(D_8011D528)($t5)
/* 059324 80058724 44807000 */  mtc1  $zero, $f14
/* 059328 80058728 8FA70070 */  lw    $a3, 0x70($sp)
/* 05932C 8005872C 31AF8000 */  andi  $t7, $t5, 0x8000
/* 059330 80058730 E7A80044 */  swc1  $f8, 0x44($sp)
/* 059334 80058734 11E00023 */  beqz  $t7, .L800587C4
/* 059338 80058738 46007086 */   mov.s $f2, $f14
/* 05933C 8005873C 3C01800E */  lui   $at, %hi(D_800E6918 + 4) # $at, 0x800e
/* 059340 80058740 C4E40030 */  lwc1  $f4, 0x30($a3)
/* 059344 80058744 C4276918 */  lwc1  $f7, %lo(D_800E6918)($at)
/* 059348 80058748 C426691C */  lwc1  $f6, %lo(D_800E6918 + 4)($at)
/* 05934C 8005874C 460022A1 */  cvt.d.s $f10, $f4
/* 059350 80058750 46265202 */  mul.d $f8, $f10, $f6
/* 059354 80058754 3C013FF8 */  li    $at, 0x3FF80000 # 1.937500
/* 059358 80058758 462040A0 */  cvt.s.d $f2, $f8
/* 05935C 8005875C 4602703C */  c.lt.s $f14, $f2
/* 059360 80058760 00000000 */  nop   
/* 059364 80058764 4500000D */  bc1f  .L8005879C
/* 059368 80058768 00000000 */   nop   
/* 05936C 8005876C 3C013FF8 */  li    $at, 0x3FF80000 # 1.937500
/* 059370 80058770 44815800 */  mtc1  $at, $f11
/* 059374 80058774 44805000 */  mtc1  $zero, $f10
/* 059378 80058778 46001121 */  cvt.d.s $f4, $f2
/* 05937C 8005877C 462A2181 */  sub.d $f6, $f4, $f10
/* 059380 80058780 462030A0 */  cvt.s.d $f2, $f6
/* 059384 80058784 460E103C */  c.lt.s $f2, $f14
/* 059388 80058788 00000000 */  nop   
/* 05938C 8005878C 4500000D */  bc1f  .L800587C4
/* 059390 80058790 00000000 */   nop   
/* 059394 80058794 1000000B */  b     .L800587C4
/* 059398 80058798 46007086 */   mov.s $f2, $f14
.L8005879C:
/* 05939C 8005879C 44812800 */  mtc1  $at, $f5
/* 0593A0 800587A0 44802000 */  mtc1  $zero, $f4
/* 0593A4 800587A4 46001221 */  cvt.d.s $f8, $f2
/* 0593A8 800587A8 46244280 */  add.d $f10, $f8, $f4
/* 0593AC 800587AC 462050A0 */  cvt.s.d $f2, $f10
/* 0593B0 800587B0 4602703C */  c.lt.s $f14, $f2
/* 0593B4 800587B4 00000000 */  nop   
/* 0593B8 800587B8 45000002 */  bc1f  .L800587C4
/* 0593BC 800587BC 00000000 */   nop   
/* 0593C0 800587C0 46007086 */  mov.s $f2, $f14
.L800587C4:
/* 0593C4 800587C4 80E201E6 */  lb    $v0, 0x1e6($a3)
/* 0593C8 800587C8 00000000 */  nop   
/* 0593CC 800587CC 10400008 */  beqz  $v0, .L800587F0
/* 0593D0 800587D0 00000000 */   nop   
/* 0593D4 800587D4 44823000 */  mtc1  $v0, $f6
/* 0593D8 800587D8 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 0593DC 800587DC 46803220 */  cvt.s.w $f8, $f6
/* 0593E0 800587E0 44815000 */  mtc1  $at, $f10
/* 0593E4 800587E4 46004107 */  neg.s $f4, $f8
/* 0593E8 800587E8 460A2082 */  mul.s $f2, $f4, $f10
/* 0593EC 800587EC 00000000 */  nop   
.L800587F0:
/* 0593F0 800587F0 C4E000C8 */  lwc1  $f0, 0xc8($a3)
/* 0593F4 800587F4 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 0593F8 800587F8 46001181 */  sub.s $f6, $f2, $f0
/* 0593FC 800587FC 44812800 */  mtc1  $at, $f5
/* 059400 80058800 44802000 */  mtc1  $zero, $f4
/* 059404 80058804 46003221 */  cvt.d.s $f8, $f6
/* 059408 80058808 46244282 */  mul.d $f10, $f8, $f4
/* 05940C 8005880C 460001A1 */  cvt.d.s $f6, $f0
/* 059410 80058810 80EE01DB */  lb    $t6, 0x1db($a3)
/* 059414 80058814 462A3200 */  add.d $f8, $f6, $f10
/* 059418 80058818 46204120 */  cvt.s.d $f4, $f8
/* 05941C 8005881C 11C0000B */  beqz  $t6, .L8005884C
/* 059420 80058820 E4E400C8 */   swc1  $f4, 0xc8($a3)
/* 059424 80058824 C4E60094 */  lwc1  $f6, 0x94($a3)
/* 059428 80058828 3C013FD0 */  li    $at, 0x3FD00000 # 1.625000
/* 05942C 8005882C 44815800 */  mtc1  $at, $f11
/* 059430 80058830 44805000 */  mtc1  $zero, $f10
/* 059434 80058834 46003021 */  cvt.d.s $f0, $f6
/* 059438 80058838 462A0202 */  mul.d $f8, $f0, $f10
/* 05943C 8005883C 46280101 */  sub.d $f4, $f0, $f8
/* 059440 80058840 462021A0 */  cvt.s.d $f6, $f4
/* 059444 80058844 1000000E */  b     .L80058880
/* 059448 80058848 E4E60094 */   swc1  $f6, 0x94($a3)
.L8005884C:
/* 05944C 8005884C 3C014024 */  li    $at, 0x40240000 # 2.562500
/* 059450 80058850 44814800 */  mtc1  $at, $f9
/* 059454 80058854 C4EA0094 */  lwc1  $f10, 0x94($a3)
/* 059458 80058858 44804000 */  mtc1  $zero, $f8
/* 05945C 8005885C 3C013FD0 */  li    $at, 0x3FD00000 # 1.625000
/* 059460 80058860 46005021 */  cvt.d.s $f0, $f10
/* 059464 80058864 44813800 */  mtc1  $at, $f7
/* 059468 80058868 44803000 */  mtc1  $zero, $f6
/* 05946C 8005886C 46204101 */  sub.d $f4, $f8, $f0
/* 059470 80058870 46262282 */  mul.d $f10, $f4, $f6
/* 059474 80058874 462A0200 */  add.d $f8, $f0, $f10
/* 059478 80058878 46204120 */  cvt.s.d $f4, $f8
/* 05947C 8005887C E4E40094 */  swc1  $f4, 0x94($a3)
.L80058880:
/* 059480 80058880 C4E00094 */  lwc1  $f0, 0x94($a3)
/* 059484 80058884 C4EA0038 */  lwc1  $f10, 0x38($a3)
/* 059488 80058888 8FA2006C */  lw    $v0, 0x6c($sp)
/* 05948C 8005888C 46005202 */  mul.s $f8, $f10, $f0
/* 059490 80058890 C446000C */  lwc1  $f6, 0xc($v0)
/* 059494 80058894 00000000 */  nop   
/* 059498 80058898 46083101 */  sub.s $f4, $f6, $f8
/* 05949C 8005889C E7A40030 */  swc1  $f4, 0x30($sp)
/* 0594A0 800588A0 C4E6003C */  lwc1  $f6, 0x3c($a3)
/* 0594A4 800588A4 C44A0010 */  lwc1  $f10, 0x10($v0)
/* 0594A8 800588A8 46003202 */  mul.s $f8, $f6, $f0
/* 0594AC 800588AC 46085101 */  sub.s $f4, $f10, $f8
/* 0594B0 800588B0 E7A4002C */  swc1  $f4, 0x2c($sp)
/* 0594B4 800588B4 C4EA0040 */  lwc1  $f10, 0x40($a3)
/* 0594B8 800588B8 C4460014 */  lwc1  $f6, 0x14($v0)
/* 0594BC 800588BC 46005202 */  mul.s $f8, $f10, $f0
/* 0594C0 800588C0 46083101 */  sub.s $f4, $f6, $f8
/* 0594C4 800588C4 E7A40028 */  swc1  $f4, 0x28($sp)
/* 0594C8 800588C8 84E40196 */  lh    $a0, 0x196($a3)
/* 0594CC 800588CC AFA70070 */  sw    $a3, 0x70($sp)
/* 0594D0 800588D0 24844000 */  addiu $a0, $a0, 0x4000
/* 0594D4 800588D4 0004C400 */  sll   $t8, $a0, 0x10
/* 0594D8 800588D8 0C01C1F1 */  jal   func_800707C4
/* 0594DC 800588DC 00182403 */   sra   $a0, $t8, 0x10
/* 0594E0 800588E0 8FA70070 */  lw    $a3, 0x70($sp)
/* 0594E4 800588E4 C7A60030 */  lwc1  $f6, 0x30($sp)
/* 0594E8 800588E8 C4EA00C8 */  lwc1  $f10, 0xc8($a3)
/* 0594EC 800588EC C7A80048 */  lwc1  $f8, 0x48($sp)
/* 0594F0 800588F0 460A0302 */  mul.s $f12, $f0, $f10
/* 0594F4 800588F4 46083100 */  add.s $f4, $f6, $f8
/* 0594F8 800588F8 3C088012 */  lui   $t0, %hi(gCameraObject) # $t0, 0x8012
/* 0594FC 800588FC 2508D508 */  addiu $t0, %lo(gCameraObject) # addiu $t0, $t0, -0x2af8
/* 059500 80058900 8D0A0000 */  lw    $t2, ($t0)
/* 059504 80058904 460C2280 */  add.s $f10, $f4, $f12
/* 059508 80058908 3C013FD0 */  li    $at, 0x3FD00000 # 1.625000
/* 05950C 8005890C E54A000C */  swc1  $f10, 0xc($t2)
/* 059510 80058910 C7A80050 */  lwc1  $f8, 0x50($sp)
/* 059514 80058914 C7A6002C */  lwc1  $f6, 0x2c($sp)
/* 059518 80058918 8D050000 */  lw    $a1, ($t0)
/* 05951C 8005891C 46083480 */  add.s $f18, $f6, $f8
/* 059520 80058920 C4AE0010 */  lwc1  $f14, 0x10($a1)
/* 059524 80058924 44803000 */  mtc1  $zero, $f6
/* 059528 80058928 46127101 */  sub.s $f4, $f14, $f18
/* 05952C 8005892C 44813800 */  mtc1  $at, $f7
/* 059530 80058930 460022A1 */  cvt.d.s $f10, $f4
/* 059534 80058934 46265202 */  mul.d $f8, $f10, $f6
/* 059538 80058938 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 05953C 8005893C 44812800 */  mtc1  $at, $f5
/* 059540 80058940 44802000 */  mtc1  $zero, $f4
/* 059544 80058944 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 059548 80058948 46204420 */  cvt.s.d $f16, $f8
/* 05954C 8005894C 3C098012 */  lui   $t1, %hi(D_8011D540) # $t1, 0x8012
/* 059550 80058950 460080A1 */  cvt.d.s $f2, $f16
/* 059554 80058954 4624103C */  c.lt.d $f2, $f4
/* 059558 80058958 00000000 */  nop   
/* 05955C 8005895C 4500000C */  bc1f  .L80058990
/* 059560 80058960 00000000 */   nop   
/* 059564 80058964 44813800 */  mtc1  $at, $f7
/* 059568 80058968 44803000 */  mtc1  $zero, $f6
/* 05956C 8005896C 460072A1 */  cvt.d.s $f10, $f14
/* 059570 80058970 46261200 */  add.d $f8, $f2, $f6
/* 059574 80058974 46285101 */  sub.d $f4, $f10, $f8
/* 059578 80058978 462021A0 */  cvt.s.d $f6, $f4
/* 05957C 8005897C E4A60010 */  swc1  $f6, 0x10($a1)
/* 059580 80058980 8D050000 */  lw    $a1, ($t0)
/* 059584 80058984 00000000 */  nop   
/* 059588 80058988 C4AE0010 */  lwc1  $f14, 0x10($a1)
/* 05958C 8005898C 00000000 */  nop   
.L80058990:
/* 059590 80058990 3C013FD0 */  li    $at, 0x3FD00000 # 1.625000
/* 059594 80058994 44814800 */  mtc1  $at, $f9
/* 059598 80058998 44804000 */  mtc1  $zero, $f8
/* 05959C 8005899C 460072A1 */  cvt.d.s $f10, $f14
/* 0595A0 800589A0 46281102 */  mul.d $f4, $f2, $f8
/* 0595A4 800589A4 46245181 */  sub.d $f6, $f10, $f4
/* 0595A8 800589A8 44805000 */  mtc1  $zero, $f10
/* 0595AC 800589AC 46203220 */  cvt.s.d $f8, $f6
/* 0595B0 800589B0 4610503C */  c.lt.s $f10, $f16
/* 0595B4 800589B4 E4A80010 */  swc1  $f8, 0x10($a1)
/* 0595B8 800589B8 45010005 */  bc1t  .L800589D0
/* 0595BC 800589BC 00000000 */   nop   
/* 0595C0 800589C0 8D29D540 */  lw    $t1, %lo(D_8011D540)($t1)
/* 0595C4 800589C4 00000000 */  nop   
/* 0595C8 800589C8 11200004 */  beqz  $t1, .L800589DC
/* 0595CC 800589CC 00000000 */   nop   
.L800589D0:
/* 0595D0 800589D0 8D0B0000 */  lw    $t3, ($t0)
/* 0595D4 800589D4 00000000 */  nop   
/* 0595D8 800589D8 E5720010 */  swc1  $f18, 0x10($t3)
.L800589DC:
/* 0595DC 800589DC 84E40196 */  lh    $a0, 0x196($a3)
/* 0595E0 800589E0 AFA70070 */  sw    $a3, 0x70($sp)
/* 0595E4 800589E4 24844000 */  addiu $a0, $a0, 0x4000
/* 0595E8 800589E8 00046400 */  sll   $t4, $a0, 0x10
/* 0595EC 800589EC 0C01C1FE */  jal   func_800707F8
/* 0595F0 800589F0 000C2403 */   sra   $a0, $t4, 0x10
/* 0595F4 800589F4 8FA70070 */  lw    $a3, 0x70($sp)
/* 0595F8 800589F8 46000107 */  neg.s $f4, $f0
/* 0595FC 800589FC C4E600C8 */  lwc1  $f6, 0xc8($a3)
/* 059600 80058A00 C7A80028 */  lwc1  $f8, 0x28($sp)
/* 059604 80058A04 46062302 */  mul.s $f12, $f4, $f6
/* 059608 80058A08 C7AA0044 */  lwc1  $f10, 0x44($sp)
/* 05960C 80058A0C 3C088012 */  lui   $t0, %hi(gCameraObject) # $t0, 0x8012
/* 059610 80058A10 2508D508 */  addiu $t0, %lo(gCameraObject) # addiu $t0, $t0, -0x2af8
/* 059614 80058A14 460A4100 */  add.s $f4, $f8, $f10
/* 059618 80058A18 8D0F0000 */  lw    $t7, ($t0)
/* 05961C 80058A1C 460C2180 */  add.s $f6, $f4, $f12
/* 059620 80058A20 3C098012 */  lui   $t1, %hi(D_8011D586) # $t1, 0x8012
/* 059624 80058A24 E5E60014 */  swc1  $f6, 0x14($t7)
/* 059628 80058A28 8D180000 */  lw    $t8, ($t0)
/* 05962C 80058A2C 84EE0196 */  lh    $t6, 0x196($a3)
/* 059630 80058A30 240F2000 */  li    $t7, 8192
/* 059634 80058A34 A70E0000 */  sh    $t6, ($t8)
/* 059638 80058A38 8FB9006C */  lw    $t9, 0x6c($sp)
/* 05963C 80058A3C 80EA01E6 */  lb    $t2, 0x1e6($a3)
/* 059640 80058A40 87220004 */  lh    $v0, 4($t9)
/* 059644 80058A44 11400009 */  beqz  $t2, .L80058A6C
/* 059648 80058A48 240EE000 */   li    $t6, -8192
/* 05964C 80058A4C C4EA00B8 */  lwc1  $f10, 0xb8($a3)
/* 059650 80058A50 44804800 */  mtc1  $zero, $f9
/* 059654 80058A54 44804000 */  mtc1  $zero, $f8
/* 059658 80058A58 46005121 */  cvt.d.s $f4, $f10
/* 05965C 80058A5C 4624403C */  c.lt.d $f8, $f4
/* 059660 80058A60 00000000 */  nop   
/* 059664 80058A64 45010005 */  bc1t  .L80058A7C
/* 059668 80058A68 00000000 */   nop   
.L80058A6C:
/* 05966C 80058A6C 8529D586 */  lh    $t1, %lo(D_8011D586)($t1)
/* 059670 80058A70 00000000 */  nop   
/* 059674 80058A74 11200002 */  beqz  $t1, .L80058A80
/* 059678 80058A78 00000000 */   nop   
.L80058A7C:
/* 05967C 80058A7C 00001025 */  move  $v0, $zero
.L80058A80:
/* 059680 80058A80 8D050000 */  lw    $a1, ($t0)
/* 059684 80058A84 00000000 */  nop   
/* 059688 80058A88 84A40004 */  lh    $a0, 4($a1)
/* 05968C 80058A8C 00000000 */  nop   
/* 059690 80058A90 00825821 */  addu  $t3, $a0, $v0
/* 059694 80058A94 000B6103 */  sra   $t4, $t3, 4
/* 059698 80058A98 008C6823 */  subu  $t5, $a0, $t4
/* 05969C 80058A9C A4AD0004 */  sh    $t5, 4($a1)
/* 0596A0 80058AA0 8D050000 */  lw    $a1, ($t0)
/* 0596A4 80058AA4 00000000 */  nop   
/* 0596A8 80058AA8 84A40004 */  lh    $a0, 4($a1)
/* 0596AC 80058AAC 00000000 */  nop   
/* 0596B0 80058AB0 28812001 */  slti  $at, $a0, 0x2001
/* 0596B4 80058AB4 14200007 */  bnez  $at, .L80058AD4
/* 0596B8 80058AB8 2881E000 */   slti  $at, $a0, -0x2000
/* 0596BC 80058ABC A4AF0004 */  sh    $t7, 4($a1)
/* 0596C0 80058AC0 8D050000 */  lw    $a1, ($t0)
/* 0596C4 80058AC4 00000000 */  nop   
/* 0596C8 80058AC8 84A40004 */  lh    $a0, 4($a1)
/* 0596CC 80058ACC 00000000 */  nop   
/* 0596D0 80058AD0 2881E000 */  slti  $at, $a0, -0x2000
.L80058AD4:
/* 0596D4 80058AD4 10200006 */  beqz  $at, .L80058AF0
/* 0596D8 80058AD8 00000000 */   nop   
/* 0596DC 80058ADC A4AE0004 */  sh    $t6, 4($a1)
/* 0596E0 80058AE0 8D180000 */  lw    $t8, ($t0)
/* 0596E4 80058AE4 00000000 */  nop   
/* 0596E8 80058AE8 87040004 */  lh    $a0, 4($t8)
/* 0596EC 80058AEC 00000000 */  nop   
.L80058AF0:
/* 0596F0 80058AF0 0C01C1F1 */  jal   func_800707C4
/* 0596F4 80058AF4 AFA70070 */   sw    $a3, 0x70($sp)
/* 0596F8 80058AF8 8FA70070 */  lw    $a3, 0x70($sp)
/* 0596FC 80058AFC 3C088012 */  lui   $t0, %hi(gCameraObject) # $t0, 0x8012
/* 059700 80058B00 C4EA00C8 */  lwc1  $f10, 0xc8($a3)
/* 059704 80058B04 2508D508 */  addiu $t0, %lo(gCameraObject) # addiu $t0, $t0, -0x2af8
/* 059708 80058B08 46005202 */  mul.s $f8, $f10, $f0
/* 05970C 80058B0C 8D050000 */  lw    $a1, ($t0)
/* 059710 80058B10 00000000 */  nop   
/* 059714 80058B14 C4A60010 */  lwc1  $f6, 0x10($a1)
/* 059718 80058B18 00000000 */  nop   
/* 05971C 80058B1C 46083101 */  sub.s $f4, $f6, $f8
/* 059720 80058B20 E4A40010 */  swc1  $f4, 0x10($a1)
/* 059724 80058B24 8D050000 */  lw    $a1, ($t0)
/* 059728 80058B28 00000000 */  nop   
/* 05972C 80058B2C C4AC000C */  lwc1  $f12, 0xc($a1)
/* 059730 80058B30 C4AE0010 */  lwc1  $f14, 0x10($a1)
/* 059734 80058B34 8CA60014 */  lw    $a2, 0x14($a1)
/* 059738 80058B38 0C00A7C6 */  jal   func_80029F18
/* 05973C 80058B3C 00000000 */   nop   
/* 059740 80058B40 8FA70070 */  lw    $a3, 0x70($sp)
/* 059744 80058B44 3C088012 */  lui   $t0, %hi(gCameraObject) # $t0, 0x8012
/* 059748 80058B48 2401FFFF */  li    $at, -1
/* 05974C 80058B4C 10410004 */  beq   $v0, $at, .L80058B60
/* 059750 80058B50 2508D508 */   addiu $t0, %lo(gCameraObject) # addiu $t0, $t0, -0x2af8
/* 059754 80058B54 8D190000 */  lw    $t9, ($t0)
/* 059758 80058B58 00000000 */  nop   
/* 05975C 80058B5C A7220034 */  sh    $v0, 0x34($t9)
.L80058B60:
/* 059760 80058B60 8D0A0000 */  lw    $t2, ($t0)
/* 059764 80058B64 00000000 */  nop   
/* 059768 80058B68 85490000 */  lh    $t1, ($t2)
/* 05976C 80058B6C 00000000 */  nop   
/* 059770 80058B70 A4E90196 */  sh    $t1, 0x196($a3)
/* 059774 80058B74 8FBF0014 */  lw    $ra, 0x14($sp)
/* 059778 80058B78 27BD0068 */  addiu $sp, $sp, 0x68
/* 05977C 80058B7C 03E00008 */  jr    $ra
/* 059780 80058B80 00000000 */   nop   

