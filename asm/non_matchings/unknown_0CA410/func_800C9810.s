glabel func_800C9810
/* 0CA410 800C9810 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CA414 800C9814 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CA418 800C9818 AFA40018 */  sw    $a0, 0x18($sp)
/* 0CA41C 800C981C AFA60020 */  sw    $a2, 0x20($sp)
/* 0CA420 800C9820 8CAE0008 */  lw    $t6, 8($a1)
/* 0CA424 800C9824 51C0001C */  beql  $t6, $zero, .L800C9898
/* 0CA428 800C9828 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0CA42C 800C982C 0C01959A */  jal   func_80065668
/* 0CA430 800C9830 AFA5001C */   sw    $a1, 0x1c($sp)
/* 0CA434 800C9834 8FA7001C */  lw    $a3, 0x1c($sp)
/* 0CA438 800C9838 10400016 */  beqz  $v0, .L800C9894
/* 0CA43C 800C983C 00403025 */   move  $a2, $v0
/* 0CA440 800C9840 8FAF0018 */  lw    $t7, 0x18($sp)
/* 0CA444 800C9844 8CF90008 */  lw    $t9, 8($a3)
/* 0CA448 800C9848 240A0010 */  li    $t2, 16
/* 0CA44C 800C984C 8DF8001C */  lw    $t8, 0x1c($t7)
/* 0CA450 800C9850 8F2800D8 */  lw    $t0, 0xd8($t9)
/* 0CA454 800C9854 A44A0008 */  sh    $t2, 8($v0)
/* 0CA458 800C9858 03084821 */  addu  $t1, $t8, $t0
/* 0CA45C 800C985C AC490004 */  sw    $t1, 4($v0)
/* 0CA460 800C9860 93A30023 */  lbu   $v1, 0x23($sp)
/* 0CA464 800C9864 04610003 */  bgez  $v1, .L800C9874
/* 0CA468 800C9868 00035823 */   negu  $t3, $v1
/* 0CA46C 800C986C 10000002 */  b     .L800C9878
/* 0CA470 800C9870 AC4B000C */   sw    $t3, 0xc($v0)
.L800C9874:
/* 0CA474 800C9874 AC43000C */  sw    $v1, 0xc($v0)
.L800C9878:
/* 0CA478 800C9878 ACC00000 */  sw    $zero, ($a2)
/* 0CA47C 800C987C 8CEC0008 */  lw    $t4, 8($a3)
/* 0CA480 800C9880 24050003 */  li    $a1, 3
/* 0CA484 800C9884 8D84000C */  lw    $a0, 0xc($t4)
/* 0CA488 800C9888 8C990008 */  lw    $t9, 8($a0)
/* 0CA48C 800C988C 0320F809 */  jalr  $t9
/* 0CA490 800C9890 00000000 */  nop   
.L800C9894:
/* 0CA494 800C9894 8FBF0014 */  lw    $ra, 0x14($sp)
.L800C9898:
/* 0CA498 800C9898 27BD0018 */  addiu $sp, $sp, 0x18
/* 0CA49C 800C989C 03E00008 */  jr    $ra
/* 0CA4A0 800C98A0 00000000 */   nop   

/* 0CA4A4 800C98A4 00000000 */  nop   
/* 0CA4A8 800C98A8 00000000 */  nop   
/* 0CA4AC 800C98AC 00000000 */  nop   
