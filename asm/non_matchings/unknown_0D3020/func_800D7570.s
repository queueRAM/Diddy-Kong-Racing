glabel func_800D7570
/* 0D8170 800D7570 00A6001A */  div   $zero, $a1, $a2
/* 0D8174 800D7574 00001012 */  mflo  $v0
/* 0D8178 800D7578 27BDFFF8 */  addiu $sp, $sp, -8
/* 0D817C 800D757C 14C00002 */  bnez  $a2, .L800D7588
/* 0D8180 800D7580 00000000 */   nop   
/* 0D8184 800D7584 0007000D */  break 7
.L800D7588:
/* 0D8188 800D7588 2401FFFF */  li    $at, -1
/* 0D818C 800D758C 14C10004 */  bne   $a2, $at, .L800D75A0
/* 0D8190 800D7590 3C018000 */   lui   $at, 0x8000
/* 0D8194 800D7594 14A10002 */  bne   $a1, $at, .L800D75A0
/* 0D8198 800D7598 00000000 */   nop   
/* 0D819C 800D759C 0006000D */  break 6
.L800D75A0:
/* 0D81A0 800D75A0 00C20019 */  multu $a2, $v0
/* 0D81A4 800D75A4 AFA20000 */  sw    $v0, ($sp)
/* 0D81A8 800D75A8 27AF0000 */  addiu $t7, $sp, 0
/* 0D81AC 800D75AC 00007012 */  mflo  $t6
/* 0D81B0 800D75B0 00AE1823 */  subu  $v1, $a1, $t6
/* 0D81B4 800D75B4 04410008 */  bgez  $v0, .L800D75D8
/* 0D81B8 800D75B8 AFA30004 */   sw    $v1, 4($sp)
/* 0D81BC 800D75BC AFA20000 */  sw    $v0, ($sp)
/* 0D81C0 800D75C0 18600005 */  blez  $v1, .L800D75D8
/* 0D81C4 800D75C4 AFA30004 */   sw    $v1, 4($sp)
/* 0D81C8 800D75C8 24420001 */  addiu $v0, $v0, 1
/* 0D81CC 800D75CC 00661823 */  subu  $v1, $v1, $a2
/* 0D81D0 800D75D0 AFA30004 */  sw    $v1, 4($sp)
/* 0D81D4 800D75D4 AFA20000 */  sw    $v0, ($sp)
.L800D75D8:
/* 0D81D8 800D75D8 8DE10000 */  lw    $at, ($t7)
/* 0D81DC 800D75DC 00801025 */  move  $v0, $a0
/* 0D81E0 800D75E0 AC810000 */  sw    $at, ($a0)
/* 0D81E4 800D75E4 8DE80004 */  lw    $t0, 4($t7)
/* 0D81E8 800D75E8 27BD0008 */  addiu $sp, $sp, 8
/* 0D81EC 800D75EC 03E00008 */  jr    $ra
/* 0D81F0 800D75F0 AC880004 */   sw    $t0, 4($a0)

/* 0D81F4 800D75F0 00000000 */  nop  
/* 0D81F8 800D75F8 00000000 */  nop  
/* 0D81FC 800D75FC 00000000 */  nop  
