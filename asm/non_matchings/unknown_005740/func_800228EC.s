glabel func_800228EC
/* 0234EC 800228EC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0234F0 800228F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0234F4 800228F4 AFA40018 */  sw    $a0, 0x18($sp)
/* 0234F8 800228F8 240E0003 */  li    $t6, 3
/* 0234FC 800228FC 3C018012 */  lui   $at, %hi(D_8011AEF7) # $at, 0x8012
/* 023500 80022900 A02EAEF7 */  sb    $t6, %lo(D_8011AEF7)($at)
/* 023504 80022904 0C006EB2 */  jal   func_8001BAC8
/* 023508 80022908 00002025 */   move  $a0, $zero
/* 02350C 8002290C 8C430064 */  lw    $v1, 0x64($v0)
/* 023510 80022910 00000000 */  nop   
/* 023514 80022914 A4600190 */  sh    $zero, 0x190($v1)
/* 023518 80022918 A0600192 */  sb    $zero, 0x192($v1)
/* 02351C 8002291C A0600193 */  sb    $zero, 0x193($v1)
/* 023520 80022920 A46001BA */  sh    $zero, 0x1ba($v1)
/* 023524 80022924 8FA40018 */  lw    $a0, 0x18($sp)
/* 023528 80022928 0C005F9D */  jal   func_80017E74
/* 02352C 8002292C 00000000 */   nop   
/* 023530 80022930 0C01BCE2 */  jal   func_8006F388
/* 023534 80022934 2404000A */   li    $a0, 10
/* 023538 80022938 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02353C 8002293C 27BD0018 */  addiu $sp, $sp, 0x18
/* 023540 80022940 03E00008 */  jr    $ra
/* 023544 80022944 00000000 */   nop   
