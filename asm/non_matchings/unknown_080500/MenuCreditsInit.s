glabel MenuCreditsInit
/* 09BB48 8009AF48 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 09BB4C 8009AF4C AFBF001C */  sw    $ra, 0x1c($sp)
/* 09BB50 8009AF50 0C01BAA4 */  jal   func_8006EA90
/* 09BB54 8009AF54 00000000 */   nop   
/* 09BB58 8009AF58 3C01800E */  lui   $at, %hi(D_800DF47C) # $at, 0x800e
/* 09BB5C 8009AF5C AC20F47C */  sw    $zero, %lo(D_800DF47C)($at)
/* 09BB60 8009AF60 3C018012 */  lui   $at, %hi(D_80126BC4) # $at, 0x8012
/* 09BB64 8009AF64 AC206BC4 */  sw    $zero, %lo(D_80126BC4)($at)
/* 09BB68 8009AF68 3C018012 */  lui   $at, %hi(D_80126BCC) # $at, 0x8012
/* 09BB6C 8009AF6C AC206BCC */  sw    $zero, %lo(D_80126BCC)($at)
/* 09BB70 8009AF70 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 09BB74 8009AF74 AC2063E0 */  sw    $zero, %lo(D_801263E0)($at)
/* 09BB78 8009AF78 3C018012 */  lui   $at, %hi(D_801263D8) # $at, 0x8012
/* 09BB7C 8009AF7C 240E0028 */  li    $t6, 40
/* 09BB80 8009AF80 AC2E63D8 */  sw    $t6, %lo(D_801263D8)($at)
/* 09BB84 8009AF84 3C01800E */  lui   $at, %hi(D_800DF460) # $at, 0x800e
/* 09BB88 8009AF88 AC20F460 */  sw    $zero, %lo(D_800DF460)($at)
/* 09BB8C 8009AF8C 3C018012 */  lui   $at, %hi(D_80126BD0) # $at, 0x8012
/* 09BB90 8009AF90 AC206BD0 */  sw    $zero, %lo(D_80126BD0)($at)
/* 09BB94 8009AF94 3C018012 */  lui   $at, %hi(D_80126BD8) # $at, 0x8012
/* 09BB98 8009AF98 AC206BD8 */  sw    $zero, %lo(D_80126BD8)($at)
/* 09BB9C 8009AF9C 3C018012 */  lui   $at, %hi(D_80126BE0) # $at, 0x8012
/* 09BBA0 8009AFA0 AFA20020 */  sw    $v0, 0x20($sp)
/* 09BBA4 8009AFA4 AC206BE0 */  sw    $zero, %lo(D_80126BE0)($at)
/* 09BBA8 8009AFA8 00002025 */  move  $a0, $zero
/* 09BBAC 8009AFAC 00002825 */  move  $a1, $zero
/* 09BBB0 8009AFB0 0C01DED7 */  jal   func_80077B5C
/* 09BBB4 8009AFB4 00003025 */   move  $a2, $zero
/* 09BBB8 8009AFB8 3C0F8000 */  lui   $t7, %hi(osTvType) # $t7, 0x8000
/* 09BBBC 8009AFBC 8DEF0300 */  lw    $t7, %lo(osTvType)($t7)
/* 09BBC0 8009AFC0 00002025 */  move  $a0, $zero
/* 09BBC4 8009AFC4 15E00011 */  bnez  $t7, .L8009B00C
/* 09BBC8 8009AFC8 00002825 */   move  $a1, $zero
/* 09BBCC 8009AFCC 241800E0 */  li    $t8, 224
/* 09BBD0 8009AFD0 AFB80010 */  sw    $t8, 0x10($sp)
/* 09BBD4 8009AFD4 00002025 */  move  $a0, $zero
/* 09BBD8 8009AFD8 00002825 */  move  $a1, $zero
/* 09BBDC 8009AFDC 24060026 */  li    $a2, 38
/* 09BBE0 8009AFE0 0C019A50 */  jal   func_80066940
/* 09BBE4 8009AFE4 24070140 */   li    $a3, 320
/* 09BBE8 8009AFE8 2419011C */  li    $t9, 284
/* 09BBEC 8009AFEC AFB90010 */  sw    $t9, 0x10($sp)
/* 09BBF0 8009AFF0 00002025 */  move  $a0, $zero
/* 09BBF4 8009AFF4 34058000 */  li    $a1, 32768
/* 09BBF8 8009AFF8 34068000 */  li    $a2, 32768
/* 09BBFC 8009AFFC 0C019AAA */  jal   func_80066AA8
/* 09BC00 8009B000 24070140 */   li    $a3, 320
/* 09BC04 8009B004 1000000D */  b     .L8009B03C
/* 09BC08 8009B008 00000000 */   nop   
.L8009B00C:
/* 09BC0C 8009B00C 240800C4 */  li    $t0, 196
/* 09BC10 8009B010 AFA80010 */  sw    $t0, 0x10($sp)
/* 09BC14 8009B014 24060028 */  li    $a2, 40
/* 09BC18 8009B018 0C019A50 */  jal   func_80066940
/* 09BC1C 8009B01C 24070140 */   li    $a3, 320
/* 09BC20 8009B020 240900F0 */  li    $t1, 240
/* 09BC24 8009B024 AFA90010 */  sw    $t1, 0x10($sp)
/* 09BC28 8009B028 00002025 */  move  $a0, $zero
/* 09BC2C 8009B02C 34058000 */  li    $a1, 32768
/* 09BC30 8009B030 34068000 */  li    $a2, 32768
/* 09BC34 8009B034 0C019AAA */  jal   func_80066AA8
/* 09BC38 8009B038 24070140 */   li    $a3, 320
.L8009B03C:
/* 09BC3C 8009B03C 0C019984 */  jal   func_80066610
/* 09BC40 8009B040 00000000 */   nop   
/* 09BC44 8009B044 00002025 */  move  $a0, $zero
/* 09BC48 8009B048 0C019A06 */  jal   func_80066818
/* 09BC4C 8009B04C 24050001 */   li    $a1, 1
/* 09BC50 8009B050 3C04800E */  lui   $a0, %hi(D_800E17D8) # $a0, 0x800e
/* 09BC54 8009B054 0C02719D */  jal   func_8009C674
/* 09BC58 8009B058 248417D8 */   addiu $a0, %lo(D_800E17D8) # addiu $a0, $a0, 0x17d8
/* 09BC5C 8009B05C 3C04800E */  lui   $a0, %hi(D_800E17F0) # $a0, 0x800e
/* 09BC60 8009B060 0C027229 */  jal   func_8009C8A4
/* 09BC64 8009B064 248417F0 */   addiu $a0, %lo(D_800E17F0) # addiu $a0, $a0, 0x17f0
/* 09BC68 8009B068 0C025181 */  jal   func_80094604
/* 09BC6C 8009B06C 00000000 */   nop   
/* 09BC70 8009B070 0C03105C */  jal   func_800C4170
/* 09BC74 8009B074 24040002 */   li    $a0, 2
/* 09BC78 8009B078 0C0002F8 */  jal   func_80000BE0
/* 09BC7C 8009B07C 24040018 */   li    $a0, 24
/* 09BC80 8009B080 3C0B800E */  lui   $t3, %hi(D_800E1B4C) # $t3, 0x800e
/* 09BC84 8009B084 8D6B1B4C */  lw    $t3, %lo(D_800E1B4C)($t3)
/* 09BC88 8009B088 240A1000 */  li    $t2, 4096
/* 09BC8C 8009B08C 3C01800E */  lui   $at, %hi(D_800E18F8) # $at, 0x800e
/* 09BC90 8009B090 11600010 */  beqz  $t3, .L8009B0D4
/* 09BC94 8009B094 A42A18F8 */   sh    $t2, %lo(D_800E18F8)($at)
/* 09BC98 8009B098 0C0002CD */  jal   func_80000B34
/* 09BC9C 8009B09C 24040008 */   li    $a0, 8
/* 09BCA0 8009B0A0 3C02800E */  lui   $v0, %hi(D_800E1AE4) # $v0, 0x800e
/* 09BCA4 8009B0A4 24421AE4 */  addiu $v0, %lo(D_800E1AE4) # addiu $v0, $v0, 0x1ae4
/* 09BCA8 8009B0A8 3C06800E */  lui   $a2, %hi(D_800E1938) # $a2, 0x800e
/* 09BCAC 8009B0AC 24C61938 */  addiu $a2, %lo(D_800E1938) # addiu $a2, $a2, 0x1938
/* 09BCB0 8009B0B0 8C4C0008 */  lw    $t4, 8($v0)
/* 09BCB4 8009B0B4 8C4D000C */  lw    $t5, 0xc($v0)
/* 09BCB8 8009B0B8 8C4E0010 */  lw    $t6, 0x10($v0)
/* 09BCBC 8009B0BC 3C01800E */  lui   $at, %hi(D_800E1B4C) # $at, 0x800e
/* 09BCC0 8009B0C0 ACCC0150 */  sw    $t4, 0x150($a2)
/* 09BCC4 8009B0C4 ACCD0154 */  sw    $t5, 0x154($a2)
/* 09BCC8 8009B0C8 ACCE0158 */  sw    $t6, 0x158($a2)
/* 09BCCC 8009B0CC 1000003B */  b     .L8009B1BC
/* 09BCD0 8009B0D0 AC201B4C */   sw    $zero, %lo(D_800E1B4C)($at)
.L8009B0D4:
/* 09BCD4 8009B0D4 8FAF0020 */  lw    $t7, 0x20($sp)
/* 09BCD8 8009B0D8 00000000 */  nop   
/* 09BCDC 8009B0DC 95F8000C */  lhu   $t8, 0xc($t7)
/* 09BCE0 8009B0E0 00000000 */  nop   
/* 09BCE4 8009B0E4 33190020 */  andi  $t9, $t8, 0x20
/* 09BCE8 8009B0E8 13200010 */  beqz  $t9, .L8009B12C
/* 09BCEC 8009B0EC 00000000 */   nop   
/* 09BCF0 8009B0F0 0C0002CD */  jal   func_80000B34
/* 09BCF4 8009B0F4 24040025 */   li    $a0, 37
/* 09BCF8 8009B0F8 3C02800E */  lui   $v0, %hi(D_800E1AE4) # $v0, 0x800e
/* 09BCFC 8009B0FC 24421AE4 */  addiu $v0, %lo(D_800E1AE4) # addiu $v0, $v0, 0x1ae4
/* 09BD00 8009B100 8C480004 */  lw    $t0, 4($v0)
/* 09BD04 8009B104 3C06800E */  lui   $a2, %hi(D_800E1938) # $a2, 0x800e
/* 09BD08 8009B108 24C61938 */  addiu $a2, %lo(D_800E1938) # addiu $a2, $a2, 0x1938
/* 09BD0C 8009B10C 240961F4 */  li    $t1, 25076
/* 09BD10 8009B110 3C01800E */  lui   $at, %hi(D_800E18F8) # $at, 0x800e
/* 09BD14 8009B114 ACC80150 */  sw    $t0, 0x150($a2)
/* 09BD18 8009B118 A42918F8 */  sh    $t1, %lo(D_800E18F8)($at)
/* 09BD1C 8009B11C 3C018012 */  lui   $at, %hi(D_80126BCC) # $at, 0x8012
/* 09BD20 8009B120 240A0009 */  li    $t2, 9
/* 09BD24 8009B124 10000009 */  b     .L8009B14C
/* 09BD28 8009B128 AC2A6BCC */   sw    $t2, %lo(D_80126BCC)($at)
.L8009B12C:
/* 09BD2C 8009B12C 0C0002CD */  jal   func_80000B34
/* 09BD30 8009B130 24040008 */   li    $a0, 8
/* 09BD34 8009B134 3C02800E */  lui   $v0, %hi(D_800E1AE4) # $v0, 0x800e
/* 09BD38 8009B138 24421AE4 */  addiu $v0, %lo(D_800E1AE4) # addiu $v0, $v0, 0x1ae4
/* 09BD3C 8009B13C 8C4B0000 */  lw    $t3, ($v0)
/* 09BD40 8009B140 3C06800E */  lui   $a2, %hi(D_800E1938) # $a2, 0x800e
/* 09BD44 8009B144 24C61938 */  addiu $a2, %lo(D_800E1938) # addiu $a2, $a2, 0x1938
/* 09BD48 8009B148 ACCB0150 */  sw    $t3, 0x150($a2)
.L8009B14C:
/* 09BD4C 8009B14C 00002025 */  move  $a0, $zero
/* 09BD50 8009B150 0C01BE53 */  jal   func_8006F94C
/* 09BD54 8009B154 24050014 */   li    $a1, 20
/* 09BD58 8009B158 00026080 */  sll   $t4, $v0, 2
/* 09BD5C 8009B15C 3C03800E */  lui   $v1, 0x800e
/* 09BD60 8009B160 006C1821 */  addu  $v1, $v1, $t4
/* 09BD64 8009B164 8C631AF8 */  lw    $v1, 0x1af8($v1)
/* 09BD68 8009B168 3C06800E */  lui   $a2, %hi(D_800E1938) # $a2, 0x800e
/* 09BD6C 8009B16C 24C61938 */  addiu $a2, %lo(D_800E1938) # addiu $a2, $a2, 0x1938
/* 09BD70 8009B170 10600005 */  beqz  $v1, .L8009B188
/* 09BD74 8009B174 2404FFFF */   li    $a0, -1
.L8009B178:
/* 09BD78 8009B178 00036843 */  sra   $t5, $v1, 1
/* 09BD7C 8009B17C 01A01825 */  move  $v1, $t5
/* 09BD80 8009B180 15A0FFFD */  bnez  $t5, .L8009B178
/* 09BD84 8009B184 24840001 */   addiu $a0, $a0, 1
.L8009B188:
/* 09BD88 8009B188 3C028012 */  lui   $v0, %hi(D_80126C30) # $v0, 0x8012
/* 09BD8C 8009B18C 8C426C30 */  lw    $v0, %lo(D_80126C30)($v0)
/* 09BD90 8009B190 00047880 */  sll   $t7, $a0, 2
/* 09BD94 8009B194 24450002 */  addiu $a1, $v0, 2
/* 09BD98 8009B198 00AF1821 */  addu  $v1, $a1, $t7
/* 09BD9C 8009B19C 94780002 */  lhu   $t8, 2($v1)
/* 09BDA0 8009B1A0 00000000 */  nop   
/* 09BDA4 8009B1A4 0302C821 */  addu  $t9, $t8, $v0
/* 09BDA8 8009B1A8 ACD90154 */  sw    $t9, 0x154($a2)
/* 09BDAC 8009B1AC 94680000 */  lhu   $t0, ($v1)
/* 09BDB0 8009B1B0 00000000 */  nop   
/* 09BDB4 8009B1B4 01024821 */  addu  $t1, $t0, $v0
/* 09BDB8 8009B1B8 ACC90158 */  sw    $t1, 0x158($a2)
.L8009B1BC:
/* 09BDBC 8009B1BC 0C0002C6 */  jal   func_80000B18
/* 09BDC0 8009B1C0 00000000 */   nop   
/* 09BDC4 8009B1C4 0C03005C */  jal   func_800C0170
/* 09BDC8 8009B1C8 00000000 */   nop   
/* 09BDCC 8009B1CC 0C01BD59 */  jal   func_8006F564
/* 09BDD0 8009B1D0 24040001 */   li    $a0, 1
/* 09BDD4 8009B1D4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 09BDD8 8009B1D8 27BD0030 */  addiu $sp, $sp, 0x30
/* 09BDDC 8009B1DC 03E00008 */  jr    $ra
/* 09BDE0 8009B1E0 00000000 */   nop   

