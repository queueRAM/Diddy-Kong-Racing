.include "globals.inc"
.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # dont insert nops after branches
.set gp=64     # 64-bit instructions are used

/* 0C86A0 800C7AA0 8C8E0004 */  lw    $t6, 4($a0)
/* 0C86A4 800C7AA4 00803025 */  move  $a2, $a0
/* 0C86A8 800C7AA8 00804025 */  move  $t0, $a0
/* 0C86AC 800C7AAC ACAE0000 */  sw    $t6, ($a1)
/* 0C86B0 800C7AB0 8C8F000C */  lw    $t7, 0xc($a0)
/* 0C86B4 800C7AB4 00001025 */  move  $v0, $zero
/* 0C86B8 800C7AB8 00A01825 */  move  $v1, $a1
/* 0C86BC 800C7ABC ACAF0004 */  sw    $t7, 4($a1)
/* 0C86C0 800C7AC0 8C980010 */  lw    $t8, 0x10($a0)
/* 0C86C4 800C7AC4 24040010 */  li    $a0, 16
/* 0C86C8 800C7AC8 00A03825 */  move  $a3, $a1
/* 0C86CC 800C7ACC ACB80008 */  sw    $t8, 8($a1)
.L800C7AD0:
/* 0C86D0 800C7AD0 8CD90018 */  lw    $t9, 0x18($a2)
/* 0C86D4 800C7AD4 24420002 */  addiu $v0, $v0, 2
/* 0C86D8 800C7AD8 24630008 */  addiu $v1, $v1, 8
/* 0C86DC 800C7ADC AC790004 */  sw    $t9, 4($v1)
/* 0C86E0 800C7AE0 8CC90058 */  lw    $t1, 0x58($a2)
/* 0C86E4 800C7AE4 24C60008 */  addiu $a2, $a2, 8
/* 0C86E8 800C7AE8 24E70002 */  addiu $a3, $a3, 2
/* 0C86EC 800C7AEC AC690044 */  sw    $t1, 0x44($v1)
/* 0C86F0 800C7AF0 910A0098 */  lbu   $t2, 0x98($t0)
/* 0C86F4 800C7AF4 25080002 */  addiu $t0, $t0, 2
/* 0C86F8 800C7AF8 A0EA008A */  sb    $t2, 0x8a($a3)
/* 0C86FC 800C7AFC 910B00A6 */  lbu   $t3, 0xa6($t0)
/* 0C8700 800C7B00 A0EB009A */  sb    $t3, 0x9a($a3)
/* 0C8704 800C7B04 8CCC00B0 */  lw    $t4, 0xb0($a2)
/* 0C8708 800C7B08 AC6C00A4 */  sw    $t4, 0xa4($v1)
/* 0C870C 800C7B0C 8CCD0014 */  lw    $t5, 0x14($a2)
/* 0C8710 800C7B10 AC6D0008 */  sw    $t5, 8($v1)
/* 0C8714 800C7B14 8CCE0054 */  lw    $t6, 0x54($a2)
/* 0C8718 800C7B18 AC6E0048 */  sw    $t6, 0x48($v1)
/* 0C871C 800C7B1C 910F0097 */  lbu   $t7, 0x97($t0)
/* 0C8720 800C7B20 A0EF008B */  sb    $t7, 0x8b($a3)
/* 0C8724 800C7B24 911800A7 */  lbu   $t8, 0xa7($t0)
/* 0C8728 800C7B28 A0F8009B */  sb    $t8, 0x9b($a3)
/* 0C872C 800C7B2C 8CD900B4 */  lw    $t9, 0xb4($a2)
/* 0C8730 800C7B30 1444FFE7 */  bne   $v0, $a0, .L800C7AD0
/* 0C8734 800C7B34 AC7900A8 */   sw    $t9, 0xa8($v1)
/* 0C8738 800C7B38 03E00008 */  jr    $ra
/* 0C873C 800C7B3C 00000000 */   nop   

/* 0C8740 800C7B40 8CAE0000 */  lw    $t6, ($a1)
/* 0C8744 800C7B44 00801825 */  move  $v1, $a0
/* 0C8748 800C7B48 00803825 */  move  $a3, $a0
/* 0C874C 800C7B4C AC8E0004 */  sw    $t6, 4($a0)
/* 0C8750 800C7B50 8CAF0004 */  lw    $t7, 4($a1)
/* 0C8754 800C7B54 00001025 */  move  $v0, $zero
/* 0C8758 800C7B58 00A03025 */  move  $a2, $a1
/* 0C875C 800C7B5C AC8F000C */  sw    $t7, 0xc($a0)
/* 0C8760 800C7B60 8CB80008 */  lw    $t8, 8($a1)
/* 0C8764 800C7B64 00A04025 */  move  $t0, $a1
/* 0C8768 800C7B68 AC980010 */  sw    $t8, 0x10($a0)
/* 0C876C 800C7B6C 24040010 */  li    $a0, 16
.L800C7B70:
/* 0C8770 800C7B70 8CD9000C */  lw    $t9, 0xc($a2)
/* 0C8774 800C7B74 24420002 */  addiu $v0, $v0, 2
/* 0C8778 800C7B78 24630008 */  addiu $v1, $v1, 8
/* 0C877C 800C7B7C AC790010 */  sw    $t9, 0x10($v1)
/* 0C8780 800C7B80 8CC9004C */  lw    $t1, 0x4c($a2)
/* 0C8784 800C7B84 24C60008 */  addiu $a2, $a2, 8
/* 0C8788 800C7B88 24E70002 */  addiu $a3, $a3, 2
/* 0C878C 800C7B8C AC690050 */  sw    $t1, 0x50($v1)
/* 0C8790 800C7B90 910A008C */  lbu   $t2, 0x8c($t0)
/* 0C8794 800C7B94 25080002 */  addiu $t0, $t0, 2
/* 0C8798 800C7B98 A0EA0096 */  sb    $t2, 0x96($a3)
/* 0C879C 800C7B9C 910B009A */  lbu   $t3, 0x9a($t0)
/* 0C87A0 800C7BA0 A0EB00A6 */  sb    $t3, 0xa6($a3)
/* 0C87A4 800C7BA4 8CCC00A4 */  lw    $t4, 0xa4($a2)
/* 0C87A8 800C7BA8 AC6C00B0 */  sw    $t4, 0xb0($v1)
/* 0C87AC 800C7BAC 8CCD0008 */  lw    $t5, 8($a2)
/* 0C87B0 800C7BB0 AC6D0014 */  sw    $t5, 0x14($v1)
/* 0C87B4 800C7BB4 8CCE0048 */  lw    $t6, 0x48($a2)
/* 0C87B8 800C7BB8 AC6E0054 */  sw    $t6, 0x54($v1)
/* 0C87BC 800C7BBC 910F008B */  lbu   $t7, 0x8b($t0)
/* 0C87C0 800C7BC0 A0EF0097 */  sb    $t7, 0x97($a3)
/* 0C87C4 800C7BC4 9118009B */  lbu   $t8, 0x9b($t0)
/* 0C87C8 800C7BC8 A0F800A7 */  sb    $t8, 0xa7($a3)
/* 0C87CC 800C7BCC 8CD900A8 */  lw    $t9, 0xa8($a2)
/* 0C87D0 800C7BD0 1444FFE7 */  bne   $v0, $a0, .L800C7B70
/* 0C87D4 800C7BD4 AC7900B4 */   sw    $t9, 0xb4($v1)
/* 0C87D8 800C7BD8 03E00008 */  jr    $ra
/* 0C87DC 800C7BDC 00000000 */   nop   

glabel func_800C7BE0
/* 0C87E0 800C7BE0 00851021 */  addu  $v0, $a0, $a1
/* 0C87E4 800C7BE4 904E0098 */  lbu   $t6, 0x98($v0)
/* 0C87E8 800C7BE8 00057880 */  sll   $t7, $a1, 2
/* 0C87EC 800C7BEC 008F3021 */  addu  $a2, $a0, $t7
/* 0C87F0 800C7BF0 51C0000D */  beql  $t6, $zero, .L800C7C28
/* 0C87F4 800C7BF4 8CC70018 */   lw    $a3, 0x18($a2)
/* 0C87F8 800C7BF8 00057880 */  sll   $t7, $a1, 2
/* 0C87FC 800C7BFC 008F3021 */  addu  $a2, $a0, $t7
/* 0C8800 800C7C00 8CC70058 */  lw    $a3, 0x58($a2)
/* 0C8804 800C7C04 90E30000 */  lbu   $v1, ($a3)
/* 0C8808 800C7C08 24F80001 */  addiu $t8, $a3, 1
/* 0C880C 800C7C0C ACD80058 */  sw    $t8, 0x58($a2)
/* 0C8810 800C7C10 90590098 */  lbu   $t9, 0x98($v0)
/* 0C8814 800C7C14 272EFFFF */  addiu $t6, $t9, -1
/* 0C8818 800C7C18 A04E0098 */  sb    $t6, 0x98($v0)
/* 0C881C 800C7C1C 03E00008 */  jr    $ra
/* 0C8820 800C7C20 00601025 */   move  $v0, $v1

/* 0C8824 800C7C24 8CC70018 */  lw    $a3, 0x18($a2)
.L800C7C28:
/* 0C8828 800C7C28 240800FE */  li    $t0, 254
/* 0C882C 800C7C2C 90E30000 */  lbu   $v1, ($a3)
/* 0C8830 800C7C30 24F80001 */  addiu $t8, $a3, 1
/* 0C8834 800C7C34 ACD80018 */  sw    $t8, 0x18($a2)
/* 0C8838 800C7C38 15030018 */  bne   $t0, $v1, .L800C7C9C
/* 0C883C 800C7C3C 00000000 */   nop   
/* 0C8840 800C7C40 93040000 */  lbu   $a0, ($t8)
/* 0C8844 800C7C44 27190001 */  addiu $t9, $t8, 1
/* 0C8848 800C7C48 ACD90018 */  sw    $t9, 0x18($a2)
/* 0C884C 800C7C4C 11040013 */  beq   $t0, $a0, .L800C7C9C
/* 0C8850 800C7C50 272E0001 */   addiu $t6, $t9, 1
/* 0C8854 800C7C54 93230000 */  lbu   $v1, ($t9)
/* 0C8858 800C7C58 ACCE0018 */  sw    $t6, 0x18($a2)
/* 0C885C 800C7C5C 91C50000 */  lbu   $a1, ($t6)
/* 0C8860 800C7C60 25CF0001 */  addiu $t7, $t6, 1
/* 0C8864 800C7C64 0004CA00 */  sll   $t9, $a0, 8
/* 0C8868 800C7C68 ACCF0018 */  sw    $t7, 0x18($a2)
/* 0C886C 800C7C6C 03237021 */  addu  $t6, $t9, $v1
/* 0C8870 800C7C70 01EE7823 */  subu  $t7, $t7, $t6
/* 0C8874 800C7C74 25F9FFFC */  addiu $t9, $t7, -4
/* 0C8878 800C7C78 ACD90058 */  sw    $t9, 0x58($a2)
/* 0C887C 800C7C7C A0450098 */  sb    $a1, 0x98($v0)
/* 0C8880 800C7C80 8CC70058 */  lw    $a3, 0x58($a2)
/* 0C8884 800C7C84 90E30000 */  lbu   $v1, ($a3)
/* 0C8888 800C7C88 24F80001 */  addiu $t8, $a3, 1
/* 0C888C 800C7C8C ACD80058 */  sw    $t8, 0x58($a2)
/* 0C8890 800C7C90 904E0098 */  lbu   $t6, 0x98($v0)
/* 0C8894 800C7C94 25CFFFFF */  addiu $t7, $t6, -1
/* 0C8898 800C7C98 A04F0098 */  sb    $t7, 0x98($v0)
.L800C7C9C:
/* 0C889C 800C7C9C 03E00008 */  jr    $ra
/* 0C88A0 800C7CA0 00601025 */   move  $v0, $v1

glabel func_800C7CA4
/* 0C88A4 800C7CA4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C88A8 800C7CA8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C88AC 800C7CAC 01402025 */  move  $a0, $t2
/* 0C88B0 800C7CB0 0C031EF8 */  jal   func_800C7BE0
/* 0C88B4 800C7CB4 01602825 */   move  $a1, $t3
/* 0C88B8 800C7CB8 304E0080 */  andi  $t6, $v0, 0x80
/* 0C88BC 800C7CBC 11C0000A */  beqz  $t6, .L800C7CE8
/* 0C88C0 800C7CC0 00404825 */   move  $t1, $v0
/* 0C88C4 800C7CC4 3049007F */  andi  $t1, $v0, 0x7f
.L800C7CC8:
/* 0C88C8 800C7CC8 01402025 */  move  $a0, $t2
/* 0C88CC 800C7CCC 0C031EF8 */  jal   func_800C7BE0
/* 0C88D0 800C7CD0 01602825 */   move  $a1, $t3
/* 0C88D4 800C7CD4 000979C0 */  sll   $t7, $t1, 7
/* 0C88D8 800C7CD8 3058007F */  andi  $t8, $v0, 0x7f
/* 0C88DC 800C7CDC 30590080 */  andi  $t9, $v0, 0x80
/* 0C88E0 800C7CE0 1720FFF9 */  bnez  $t9, .L800C7CC8
/* 0C88E4 800C7CE4 01F84821 */   addu  $t1, $t7, $t8
.L800C7CE8:
/* 0C88E8 800C7CE8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C88EC 800C7CEC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C88F0 800C7CF0 01201025 */  move  $v0, $t1
/* 0C88F4 800C7CF4 03E00008 */  jr    $ra
/* 0C88F8 800C7CF8 00000000 */   nop   

/* 0C88FC 800C7CFC 03E00008 */  jr    $ra
/* 0C8900 800C7D00 00000000 */   nop   

glabel func_800C7D04
/* 0C8904 800C7D04 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C8908 800C7D08 AFB00018 */  sw    $s0, 0x18($sp)
/* 0C890C 800C7D0C 00A08025 */  move  $s0, $a1
/* 0C8910 800C7D10 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0C8914 800C7D14 00806025 */  move  $t4, $a0
/* 0C8918 800C7D18 2409FFFF */  li    $t1, -1
/* 0C891C 800C7D1C 8C860010 */  lw    $a2, 0x10($a0)
/* 0C8920 800C7D20 24050010 */  li    $a1, 16
/* 0C8924 800C7D24 8FAB0024 */  lw    $t3, 0x24($sp)
/* 0C8928 800C7D28 00001025 */  move  $v0, $zero
/* 0C892C 800C7D2C 8D8E0004 */  lw    $t6, 4($t4)
.L800C7D30:
/* 0C8930 800C7D30 004E7806 */  srlv  $t7, $t6, $v0
/* 0C8934 800C7D34 31F80001 */  andi  $t8, $t7, 1
/* 0C8938 800C7D38 53000010 */  beql  $t8, $zero, .L800C7D7C
/* 0C893C 800C7D3C 24420001 */   addiu $v0, $v0, 1
/* 0C8940 800C7D40 8D8E0014 */  lw    $t6, 0x14($t4)
/* 0C8944 800C7D44 0002C880 */  sll   $t9, $v0, 2
/* 0C8948 800C7D48 01991821 */  addu  $v1, $t4, $t9
/* 0C894C 800C7D4C 51C00005 */  beql  $t6, $zero, .L800C7D64
/* 0C8950 800C7D50 8C6400B8 */   lw    $a0, 0xb8($v1)
/* 0C8954 800C7D54 8C6F00B8 */  lw    $t7, 0xb8($v1)
/* 0C8958 800C7D58 01E6C023 */  subu  $t8, $t7, $a2
/* 0C895C 800C7D5C AC7800B8 */  sw    $t8, 0xb8($v1)
/* 0C8960 800C7D60 8C6400B8 */  lw    $a0, 0xb8($v1)
.L800C7D64:
/* 0C8964 800C7D64 0089082B */  sltu  $at, $a0, $t1
/* 0C8968 800C7D68 50200004 */  beql  $at, $zero, .L800C7D7C
/* 0C896C 800C7D6C 24420001 */   addiu $v0, $v0, 1
/* 0C8970 800C7D70 00804825 */  move  $t1, $a0
/* 0C8974 800C7D74 00405825 */  move  $t3, $v0
/* 0C8978 800C7D78 24420001 */  addiu $v0, $v0, 1
.L800C7D7C:
/* 0C897C 800C7D7C 5445FFEC */  bnel  $v0, $a1, .L800C7D30
/* 0C8980 800C7D80 8D8E0004 */   lw    $t6, 4($t4)
/* 0C8984 800C7D84 01802025 */  move  $a0, $t4
/* 0C8988 800C7D88 0C031EF8 */  jal   func_800C7BE0
/* 0C898C 800C7D8C 01602825 */   move  $a1, $t3
/* 0C8990 800C7D90 240100FF */  li    $at, 255
/* 0C8994 800C7D94 304A00FF */  andi  $t2, $v0, 0xff
/* 0C8998 800C7D98 1441005A */  bne   $v0, $at, .L800C7F04
/* 0C899C 800C7D9C 00401825 */   move  $v1, $v0
/* 0C89A0 800C7DA0 01802025 */  move  $a0, $t4
/* 0C89A4 800C7DA4 0C031EF8 */  jal   func_800C7BE0
/* 0C89A8 800C7DA8 01602825 */   move  $a1, $t3
/* 0C89AC 800C7DAC 24010051 */  li    $at, 81
/* 0C89B0 800C7DB0 304600FF */  andi  $a2, $v0, 0xff
/* 0C89B4 800C7DB4 14410014 */  bne   $v0, $at, .L800C7E08
/* 0C89B8 800C7DB8 00401825 */   move  $v1, $v0
/* 0C89BC 800C7DBC 24190003 */  li    $t9, 3
/* 0C89C0 800C7DC0 A6190000 */  sh    $t9, ($s0)
/* 0C89C4 800C7DC4 A20A0008 */  sb    $t2, 8($s0)
/* 0C89C8 800C7DC8 A2060009 */  sb    $a2, 9($s0)
/* 0C89CC 800C7DCC 01802025 */  move  $a0, $t4
/* 0C89D0 800C7DD0 0C031EF8 */  jal   func_800C7BE0
/* 0C89D4 800C7DD4 01602825 */   move  $a1, $t3
/* 0C89D8 800C7DD8 A202000B */  sb    $v0, 0xb($s0)
/* 0C89DC 800C7DDC 01802025 */  move  $a0, $t4
/* 0C89E0 800C7DE0 0C031EF8 */  jal   func_800C7BE0
/* 0C89E4 800C7DE4 01602825 */   move  $a1, $t3
/* 0C89E8 800C7DE8 A202000C */  sb    $v0, 0xc($s0)
/* 0C89EC 800C7DEC 01802025 */  move  $a0, $t4
/* 0C89F0 800C7DF0 0C031EF8 */  jal   func_800C7BE0
/* 0C89F4 800C7DF4 01602825 */   move  $a1, $t3
/* 0C89F8 800C7DF8 A202000D */  sb    $v0, 0xd($s0)
/* 0C89FC 800C7DFC 018B7021 */  addu  $t6, $t4, $t3
/* 0C8A00 800C7E00 10000067 */  b     .L800C7FA0
/* 0C8A04 800C7E04 A1C000A8 */   sb    $zero, 0xa8($t6)
.L800C7E08:
/* 0C8A08 800C7E08 2401002F */  li    $at, 47
/* 0C8A0C 800C7E0C 5461000E */  bnel  $v1, $at, .L800C7E48
/* 0C8A10 800C7E10 2401002E */   li    $at, 46
/* 0C8A14 800C7E14 8D8F0004 */  lw    $t7, 4($t4)
/* 0C8A18 800C7E18 24180001 */  li    $t8, 1
/* 0C8A1C 800C7E1C 0178C804 */  sllv  $t9, $t8, $t3
/* 0C8A20 800C7E20 01F97026 */  xor   $t6, $t7, $t9
/* 0C8A24 800C7E24 11C00004 */  beqz  $t6, .L800C7E38
/* 0C8A28 800C7E28 AD8E0004 */   sw    $t6, 4($t4)
/* 0C8A2C 800C7E2C 240F0012 */  li    $t7, 18
/* 0C8A30 800C7E30 1000005B */  b     .L800C7FA0
/* 0C8A34 800C7E34 A60F0000 */   sh    $t7, ($s0)
.L800C7E38:
/* 0C8A38 800C7E38 24190004 */  li    $t9, 4
/* 0C8A3C 800C7E3C 10000058 */  b     .L800C7FA0
/* 0C8A40 800C7E40 A6190000 */   sh    $t9, ($s0)
/* 0C8A44 800C7E44 2401002E */  li    $at, 46
.L800C7E48:
/* 0C8A48 800C7E48 1461000B */  bne   $v1, $at, .L800C7E78
/* 0C8A4C 800C7E4C 01802025 */   move  $a0, $t4
/* 0C8A50 800C7E50 0C031EF8 */  jal   func_800C7BE0
/* 0C8A54 800C7E54 01602825 */   move  $a1, $t3
/* 0C8A58 800C7E58 01802025 */  move  $a0, $t4
/* 0C8A5C 800C7E5C 0C031EF8 */  jal   func_800C7BE0
/* 0C8A60 800C7E60 01602825 */   move  $a1, $t3
/* 0C8A64 800C7E64 018B7021 */  addu  $t6, $t4, $t3
/* 0C8A68 800C7E68 A1C000A8 */  sb    $zero, 0xa8($t6)
/* 0C8A6C 800C7E6C 24180013 */  li    $t8, 19
/* 0C8A70 800C7E70 1000004B */  b     .L800C7FA0
/* 0C8A74 800C7E74 A6180000 */   sh    $t8, ($s0)
.L800C7E78:
/* 0C8A78 800C7E78 2401002D */  li    $at, 45
/* 0C8A7C 800C7E7C 14610048 */  bne   $v1, $at, .L800C7FA0
/* 0C8A80 800C7E80 000B7880 */   sll   $t7, $t3, 2
/* 0C8A84 800C7E84 018F6821 */  addu  $t5, $t4, $t7
/* 0C8A88 800C7E88 8DA20018 */  lw    $v0, 0x18($t5)
/* 0C8A8C 800C7E8C 240100FF */  li    $at, 255
/* 0C8A90 800C7E90 90440001 */  lbu   $a0, 1($v0)
/* 0C8A94 800C7E94 24420001 */  addiu $v0, $v0, 1
/* 0C8A98 800C7E98 24590005 */  addiu $t9, $v0, 5
/* 0C8A9C 800C7E9C 14800004 */  bnez  $a0, .L800C7EB0
/* 0C8AA0 800C7EA0 9045FFFF */   lbu   $a1, -1($v0)
/* 0C8AA4 800C7EA4 A0450000 */  sb    $a1, ($v0)
/* 0C8AA8 800C7EA8 10000011 */  b     .L800C7EF0
/* 0C8AAC 800C7EAC ADB90018 */   sw    $t9, 0x18($t5)
.L800C7EB0:
/* 0C8AB0 800C7EB0 10810002 */  beq   $a0, $at, .L800C7EBC
/* 0C8AB4 800C7EB4 248EFFFF */   addiu $t6, $a0, -1
/* 0C8AB8 800C7EB8 A04E0000 */  sb    $t6, ($v0)
.L800C7EBC:
/* 0C8ABC 800C7EBC 904F0002 */  lbu   $t7, 2($v0)
/* 0C8AC0 800C7EC0 90430001 */  lbu   $v1, 1($v0)
/* 0C8AC4 800C7EC4 904E0003 */  lbu   $t6, 3($v0)
/* 0C8AC8 800C7EC8 000FCC00 */  sll   $t9, $t7, 0x10
/* 0C8ACC 800C7ECC 0003C600 */  sll   $t8, $v1, 0x18
/* 0C8AD0 800C7ED0 904F0004 */  lbu   $t7, 4($v0)
/* 0C8AD4 800C7ED4 03191821 */  addu  $v1, $t8, $t9
/* 0C8AD8 800C7ED8 000EC200 */  sll   $t8, $t6, 8
/* 0C8ADC 800C7EDC 00781821 */  addu  $v1, $v1, $t8
/* 0C8AE0 800C7EE0 24420005 */  addiu $v0, $v0, 5
/* 0C8AE4 800C7EE4 006F1821 */  addu  $v1, $v1, $t7
/* 0C8AE8 800C7EE8 0043C823 */  subu  $t9, $v0, $v1
/* 0C8AEC 800C7EEC ADB90018 */  sw    $t9, 0x18($t5)
.L800C7EF0:
/* 0C8AF0 800C7EF0 018B7021 */  addu  $t6, $t4, $t3
/* 0C8AF4 800C7EF4 A1C000A8 */  sb    $zero, 0xa8($t6)
/* 0C8AF8 800C7EF8 24180014 */  li    $t8, 20
/* 0C8AFC 800C7EFC 10000028 */  b     .L800C7FA0
/* 0C8B00 800C7F00 A6180000 */   sh    $t8, ($s0)
.L800C7F04:
/* 0C8B04 800C7F04 240F0001 */  li    $t7, 1
/* 0C8B08 800C7F08 30790080 */  andi  $t9, $v1, 0x80
/* 0C8B0C 800C7F0C 13200009 */  beqz  $t9, .L800C7F34
/* 0C8B10 800C7F10 A60F0000 */   sh    $t7, ($s0)
/* 0C8B14 800C7F14 A20A0008 */  sb    $t2, 8($s0)
/* 0C8B18 800C7F18 01802025 */  move  $a0, $t4
/* 0C8B1C 800C7F1C 0C031EF8 */  jal   func_800C7BE0
/* 0C8B20 800C7F20 01602825 */   move  $a1, $t3
/* 0C8B24 800C7F24 A2020009 */  sb    $v0, 9($s0)
/* 0C8B28 800C7F28 018B7021 */  addu  $t6, $t4, $t3
/* 0C8B2C 800C7F2C 10000005 */  b     .L800C7F44
/* 0C8B30 800C7F30 A1CA00A8 */   sb    $t2, 0xa8($t6)
.L800C7F34:
/* 0C8B34 800C7F34 018BC021 */  addu  $t8, $t4, $t3
/* 0C8B38 800C7F38 930F00A8 */  lbu   $t7, 0xa8($t8)
/* 0C8B3C 800C7F3C A2020009 */  sb    $v0, 9($s0)
/* 0C8B40 800C7F40 A20F0008 */  sb    $t7, 8($s0)
.L800C7F44:
/* 0C8B44 800C7F44 92020008 */  lbu   $v0, 8($s0)
/* 0C8B48 800C7F48 240100C0 */  li    $at, 192
/* 0C8B4C 800C7F4C 305900F0 */  andi  $t9, $v0, 0xf0
/* 0C8B50 800C7F50 13210012 */  beq   $t9, $at, .L800C7F9C
/* 0C8B54 800C7F54 240100D0 */   li    $at, 208
/* 0C8B58 800C7F58 13210010 */  beq   $t9, $at, .L800C7F9C
/* 0C8B5C 800C7F5C 01802025 */   move  $a0, $t4
/* 0C8B60 800C7F60 0C031EF8 */  jal   func_800C7BE0
/* 0C8B64 800C7F64 01602825 */   move  $a1, $t3
/* 0C8B68 800C7F68 920E0008 */  lbu   $t6, 8($s0)
/* 0C8B6C 800C7F6C 24010090 */  li    $at, 144
/* 0C8B70 800C7F70 A202000A */  sb    $v0, 0xa($s0)
/* 0C8B74 800C7F74 31D800F0 */  andi  $t8, $t6, 0xf0
/* 0C8B78 800C7F78 17010009 */  bne   $t8, $at, .L800C7FA0
/* 0C8B7C 800C7F7C 01805025 */   move  $t2, $t4
/* 0C8B80 800C7F80 AFA90028 */  sw    $t1, 0x28($sp)
/* 0C8B84 800C7F84 0C031F29 */  jal   func_800C7CA4
/* 0C8B88 800C7F88 AFAB0024 */   sw    $t3, 0x24($sp)
/* 0C8B8C 800C7F8C 8FA90028 */  lw    $t1, 0x28($sp)
/* 0C8B90 800C7F90 8FAB0024 */  lw    $t3, 0x24($sp)
/* 0C8B94 800C7F94 10000002 */  b     .L800C7FA0
/* 0C8B98 800C7F98 AE02000C */   sw    $v0, 0xc($s0)
.L800C7F9C:
/* 0C8B9C 800C7F9C A200000A */  sb    $zero, 0xa($s0)
.L800C7FA0:
/* 0C8BA0 800C7FA0 AE090004 */  sw    $t1, 4($s0)
/* 0C8BA4 800C7FA4 8D8F000C */  lw    $t7, 0xc($t4)
/* 0C8BA8 800C7FA8 AD890010 */  sw    $t1, 0x10($t4)
/* 0C8BAC 800C7FAC 24010012 */  li    $at, 18
/* 0C8BB0 800C7FB0 01E9C821 */  addu  $t9, $t7, $t1
/* 0C8BB4 800C7FB4 AD99000C */  sw    $t9, 0xc($t4)
/* 0C8BB8 800C7FB8 860E0000 */  lh    $t6, ($s0)
/* 0C8BBC 800C7FBC 01805025 */  move  $t2, $t4
/* 0C8BC0 800C7FC0 000BC080 */  sll   $t8, $t3, 2
/* 0C8BC4 800C7FC4 51C10007 */  beql  $t6, $at, .L800C7FE4
/* 0C8BC8 800C7FC8 240E0001 */   li    $t6, 1
/* 0C8BCC 800C7FCC 0C031F29 */  jal   func_800C7CA4
/* 0C8BD0 800C7FD0 01986821 */   addu  $t5, $t4, $t8
/* 0C8BD4 800C7FD4 8DAF00B8 */  lw    $t7, 0xb8($t5)
/* 0C8BD8 800C7FD8 01E2C821 */  addu  $t9, $t7, $v0
/* 0C8BDC 800C7FDC ADB900B8 */  sw    $t9, 0xb8($t5)
/* 0C8BE0 800C7FE0 240E0001 */  li    $t6, 1
.L800C7FE4:
/* 0C8BE4 800C7FE4 AD8E0014 */  sw    $t6, 0x14($t4)
/* 0C8BE8 800C7FE8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0C8BEC 800C7FEC 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C8BF0 800C7FF0 27BD0030 */  addiu $sp, $sp, 0x30
/* 0C8BF4 800C7FF4 03E00008 */  jr    $ra
/* 0C8BF8 800C7FF8 00000000 */   nop   

glabel func_800C7FFC
/* 0C8BFC 800C7FFC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C8C00 800C8000 AFB40028 */  sw    $s4, 0x28($sp)
/* 0C8C04 800C8004 AFB30024 */  sw    $s3, 0x24($sp)
/* 0C8C08 800C8008 AFB20020 */  sw    $s2, 0x20($sp)
/* 0C8C0C 800C800C AFB1001C */  sw    $s1, 0x1c($sp)
/* 0C8C10 800C8010 AFB00018 */  sw    $s0, 0x18($sp)
/* 0C8C14 800C8014 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C8C18 800C8018 240E0001 */  li    $t6, 1
/* 0C8C1C 800C801C 00808025 */  move  $s0, $a0
/* 0C8C20 800C8020 00A0A025 */  move  $s4, $a1
/* 0C8C24 800C8024 AC850000 */  sw    $a1, ($a0)
/* 0C8C28 800C8028 AC800004 */  sw    $zero, 4($a0)
/* 0C8C2C 800C802C AC800010 */  sw    $zero, 0x10($a0)
/* 0C8C30 800C8030 AC80000C */  sw    $zero, 0xc($a0)
/* 0C8C34 800C8034 AC8E0014 */  sw    $t6, 0x14($a0)
/* 0C8C38 800C8038 00808825 */  move  $s1, $a0
/* 0C8C3C 800C803C 00009025 */  move  $s2, $zero
/* 0C8C40 800C8040 24130010 */  li    $s3, 16
/* 0C8C44 800C8044 00006825 */  move  $t5, $zero
/* 0C8C48 800C8048 00806025 */  move  $t4, $a0
.L800C804C:
/* 0C8C4C 800C804C A22000A8 */  sb    $zero, 0xa8($s1)
/* 0C8C50 800C8050 AD800058 */  sw    $zero, 0x58($t4)
/* 0C8C54 800C8054 A2200098 */  sb    $zero, 0x98($s1)
/* 0C8C58 800C8058 8E0F0000 */  lw    $t7, ($s0)
/* 0C8C5C 800C805C 240E0001 */  li    $t6, 1
/* 0C8C60 800C8060 01F2C021 */  addu  $t8, $t7, $s2
/* 0C8C64 800C8064 8F020000 */  lw    $v0, ($t8)
/* 0C8C68 800C8068 01AE7804 */  sllv  $t7, $t6, $t5
/* 0C8C6C 800C806C 1040000A */  beqz  $v0, .L800C8098
/* 0C8C70 800C8070 02827021 */   addu  $t6, $s4, $v0
/* 0C8C74 800C8074 8E190004 */  lw    $t9, 4($s0)
/* 0C8C78 800C8078 02005025 */  move  $t2, $s0
/* 0C8C7C 800C807C 01A05825 */  move  $t3, $t5
/* 0C8C80 800C8080 032FC025 */  or    $t8, $t9, $t7
/* 0C8C84 800C8084 AE180004 */  sw    $t8, 4($s0)
/* 0C8C88 800C8088 0C031F29 */  jal   func_800C7CA4
/* 0C8C8C 800C808C AD8E0018 */   sw    $t6, 0x18($t4)
/* 0C8C90 800C8090 10000002 */  b     .L800C809C
/* 0C8C94 800C8094 AD8200B8 */   sw    $v0, 0xb8($t4)
.L800C8098:
/* 0C8C98 800C8098 AD800018 */  sw    $zero, 0x18($t4)
.L800C809C:
/* 0C8C9C 800C809C 25AD0001 */  addiu $t5, $t5, 1
/* 0C8CA0 800C80A0 26310001 */  addiu $s1, $s1, 1
/* 0C8CA4 800C80A4 26520004 */  addiu $s2, $s2, 4
/* 0C8CA8 800C80A8 15B3FFE8 */  bne   $t5, $s3, .L800C804C
/* 0C8CAC 800C80AC 258C0004 */   addiu $t4, $t4, 4
/* 0C8CB0 800C80B0 8E190000 */  lw    $t9, ($s0)
/* 0C8CB4 800C80B4 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 0C8CB8 800C80B8 44812800 */  mtc1  $at, $f5
/* 0C8CBC 800C80BC 8F2F0040 */  lw    $t7, 0x40($t9)
/* 0C8CC0 800C80C0 44802000 */  mtc1  $zero, $f4
/* 0C8CC4 800C80C4 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0C8CC8 800C80C8 448F3000 */  mtc1  $t7, $f6
/* 0C8CCC 800C80CC 05E10004 */  bgez  $t7, .L800C80E0
/* 0C8CD0 800C80D0 46803220 */   cvt.s.w $f8, $f6
/* 0C8CD4 800C80D4 44815000 */  mtc1  $at, $f10
/* 0C8CD8 800C80D8 00000000 */  nop   
/* 0C8CDC 800C80DC 460A4200 */  add.s $f8, $f8, $f10
.L800C80E0:
/* 0C8CE0 800C80E0 460041A1 */  cvt.d.s $f6, $f8
/* 0C8CE4 800C80E4 46262283 */  div.d $f10, $f4, $f6
/* 0C8CE8 800C80E8 46205220 */  cvt.s.d $f8, $f10
/* 0C8CEC 800C80EC E6080008 */  swc1  $f8, 8($s0)
/* 0C8CF0 800C80F0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0C8CF4 800C80F4 8FB40028 */  lw    $s4, 0x28($sp)
/* 0C8CF8 800C80F8 8FB30024 */  lw    $s3, 0x24($sp)
/* 0C8CFC 800C80FC 8FB20020 */  lw    $s2, 0x20($sp)
/* 0C8D00 800C8100 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0C8D04 800C8104 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C8D08 800C8108 03E00008 */  jr    $ra
/* 0C8D0C 800C810C 27BD0030 */   addiu $sp, $sp, 0x30

/* 0C8D10 800C8110 27BDFEB0 */  addiu $sp, $sp, -0x150
/* 0C8D14 800C8114 AFB30020 */  sw    $s3, 0x20($sp)
/* 0C8D18 800C8118 AFB10018 */  sw    $s1, 0x18($sp)
/* 0C8D1C 800C811C 00A08825 */  move  $s1, $a1
/* 0C8D20 800C8120 27B30048 */  addiu $s3, $sp, 0x48
/* 0C8D24 800C8124 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C8D28 800C8128 AFB50028 */  sw    $s5, 0x28($sp)
/* 0C8D2C 800C812C AFB40024 */  sw    $s4, 0x24($sp)
/* 0C8D30 800C8130 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0C8D34 800C8134 AFB00014 */  sw    $s0, 0x14($sp)
/* 0C8D38 800C8138 00803825 */  move  $a3, $a0
/* 0C8D3C 800C813C 00C09025 */  move  $s2, $a2
/* 0C8D40 800C8140 8CE50000 */  lw    $a1, ($a3)
/* 0C8D44 800C8144 0C031FFF */  jal   func_800C7FFC
/* 0C8D48 800C8148 02602025 */   move  $a0, $s3
/* 0C8D4C 800C814C 24150004 */  li    $s5, 4
/* 0C8D50 800C8150 27B40140 */  addiu $s4, $sp, 0x140
/* 0C8D54 800C8154 27B00058 */  addiu $s0, $sp, 0x58
/* 0C8D58 800C8158 8FAE004C */  lw    $t6, 0x4c($sp)
.L800C815C:
/* 0C8D5C 800C815C 27A40048 */  addiu $a0, $sp, 0x48
/* 0C8D60 800C8160 00801825 */  move  $v1, $a0
/* 0C8D64 800C8164 AE2E0000 */  sw    $t6, ($s1)
/* 0C8D68 800C8168 8FAF0054 */  lw    $t7, 0x54($sp)
/* 0C8D6C 800C816C 02201025 */  move  $v0, $s1
/* 0C8D70 800C8170 02202825 */  move  $a1, $s1
/* 0C8D74 800C8174 AE2F0004 */  sw    $t7, 4($s1)
/* 0C8D78 800C8178 8FB80058 */  lw    $t8, 0x58($sp)
/* 0C8D7C 800C817C AE380008 */  sw    $t8, 8($s1)
.L800C8180:
/* 0C8D80 800C8180 8C680018 */  lw    $t0, 0x18($v1)
/* 0C8D84 800C8184 24840004 */  addiu $a0, $a0, 4
/* 0C8D88 800C8188 24420010 */  addiu $v0, $v0, 0x10
/* 0C8D8C 800C818C AC48FFFC */  sw    $t0, -4($v0)
/* 0C8D90 800C8190 8C690058 */  lw    $t1, 0x58($v1)
/* 0C8D94 800C8194 24630010 */  addiu $v1, $v1, 0x10
/* 0C8D98 800C8198 24A50004 */  addiu $a1, $a1, 4
/* 0C8D9C 800C819C AC49003C */  sw    $t1, 0x3c($v0)
/* 0C8DA0 800C81A0 908A0094 */  lbu   $t2, 0x94($a0)
/* 0C8DA4 800C81A4 A0AA0088 */  sb    $t2, 0x88($a1)
/* 0C8DA8 800C81A8 908B00A4 */  lbu   $t3, 0xa4($a0)
/* 0C8DAC 800C81AC A0AB0098 */  sb    $t3, 0x98($a1)
/* 0C8DB0 800C81B0 8C6C00A8 */  lw    $t4, 0xa8($v1)
/* 0C8DB4 800C81B4 AC4C009C */  sw    $t4, 0x9c($v0)
/* 0C8DB8 800C81B8 8C6D000C */  lw    $t5, 0xc($v1)
/* 0C8DBC 800C81BC AC4D0000 */  sw    $t5, ($v0)
/* 0C8DC0 800C81C0 8C6E004C */  lw    $t6, 0x4c($v1)
/* 0C8DC4 800C81C4 AC4E0040 */  sw    $t6, 0x40($v0)
/* 0C8DC8 800C81C8 908F0095 */  lbu   $t7, 0x95($a0)
/* 0C8DCC 800C81CC A0AF0089 */  sb    $t7, 0x89($a1)
/* 0C8DD0 800C81D0 909800A5 */  lbu   $t8, 0xa5($a0)
/* 0C8DD4 800C81D4 A0B80099 */  sb    $t8, 0x99($a1)
/* 0C8DD8 800C81D8 8C7900AC */  lw    $t9, 0xac($v1)
/* 0C8DDC 800C81DC AC5900A0 */  sw    $t9, 0xa0($v0)
/* 0C8DE0 800C81E0 8C680010 */  lw    $t0, 0x10($v1)
/* 0C8DE4 800C81E4 AC480004 */  sw    $t0, 4($v0)
/* 0C8DE8 800C81E8 8C690050 */  lw    $t1, 0x50($v1)
/* 0C8DEC 800C81EC AC490044 */  sw    $t1, 0x44($v0)
/* 0C8DF0 800C81F0 908A0096 */  lbu   $t2, 0x96($a0)
/* 0C8DF4 800C81F4 A0AA008A */  sb    $t2, 0x8a($a1)
/* 0C8DF8 800C81F8 908B00A6 */  lbu   $t3, 0xa6($a0)
/* 0C8DFC 800C81FC A0AB009A */  sb    $t3, 0x9a($a1)
/* 0C8E00 800C8200 8C6C00B0 */  lw    $t4, 0xb0($v1)
/* 0C8E04 800C8204 AC4C00A4 */  sw    $t4, 0xa4($v0)
/* 0C8E08 800C8208 8C6D0014 */  lw    $t5, 0x14($v1)
/* 0C8E0C 800C820C AC4D0008 */  sw    $t5, 8($v0)
/* 0C8E10 800C8210 8C6E0054 */  lw    $t6, 0x54($v1)
/* 0C8E14 800C8214 AC4E0048 */  sw    $t6, 0x48($v0)
/* 0C8E18 800C8218 908F0097 */  lbu   $t7, 0x97($a0)
/* 0C8E1C 800C821C A0AF008B */  sb    $t7, 0x8b($a1)
/* 0C8E20 800C8220 909800A7 */  lbu   $t8, 0xa7($a0)
/* 0C8E24 800C8224 A0B8009B */  sb    $t8, 0x9b($a1)
/* 0C8E28 800C8228 8C7900B4 */  lw    $t9, 0xb4($v1)
/* 0C8E2C 800C822C 1490FFD4 */  bne   $a0, $s0, .L800C8180
/* 0C8E30 800C8230 AC5900A8 */   sw    $t9, 0xa8($v0)
/* 0C8E34 800C8234 02602025 */  move  $a0, $s3
/* 0C8E38 800C8238 0C031F41 */  jal   func_800C7D04
/* 0C8E3C 800C823C 02802825 */   move  $a1, $s4
/* 0C8E40 800C8240 87A80140 */  lh    $t0, 0x140($sp)
/* 0C8E44 800C8244 8FA90054 */  lw    $t1, 0x54($sp)
/* 0C8E48 800C8248 11150003 */  beq   $t0, $s5, .L800C8258
/* 0C8E4C 800C824C 0132082B */   sltu  $at, $t1, $s2
/* 0C8E50 800C8250 5420FFC2 */  bnezl $at, .L800C815C
/* 0C8E54 800C8254 8FAE004C */   lw    $t6, 0x4c($sp)
.L800C8258:
/* 0C8E58 800C8258 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0C8E5C 800C825C 8FB00014 */  lw    $s0, 0x14($sp)
/* 0C8E60 800C8260 8FB10018 */  lw    $s1, 0x18($sp)
/* 0C8E64 800C8264 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0C8E68 800C8268 8FB30020 */  lw    $s3, 0x20($sp)
/* 0C8E6C 800C826C 8FB40024 */  lw    $s4, 0x24($sp)
/* 0C8E70 800C8270 8FB50028 */  lw    $s5, 0x28($sp)
/* 0C8E74 800C8274 03E00008 */  jr    $ra
/* 0C8E78 800C8278 27BD0150 */   addiu $sp, $sp, 0x150

/* 0C8E7C 800C827C 03E00008 */  jr    $ra
/* 0C8E80 800C8280 8C82000C */   lw    $v0, 0xc($a0)

/* 0C8E84 800C8284 8C8E0000 */  lw    $t6, ($a0)
/* 0C8E88 800C8288 44856000 */  mtc1  $a1, $f12
/* 0C8E8C 800C828C 3C01800F */  lui   $at, 0x800f
/* 0C8E90 800C8290 8DCF0040 */  lw    $t7, 0x40($t6)
/* 0C8E94 800C8294 D42694B0 */  ldc1  $f6, -0x6b50($at)
/* 0C8E98 800C8298 46006121 */  cvt.d.s $f4, $f12
/* 0C8E9C 800C829C 448F5000 */  mtc1  $t7, $f10
/* 0C8EA0 800C82A0 46262202 */  mul.d $f8, $f4, $f6
/* 0C8EA4 800C82A4 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 0C8EA8 800C82A8 05E10005 */  bgez  $t7, .L800C82C0
/* 0C8EAC 800C82AC 46805421 */   cvt.d.w $f16, $f10
/* 0C8EB0 800C82B0 44819800 */  mtc1  $at, $f19
/* 0C8EB4 800C82B4 44809000 */  mtc1  $zero, $f18
/* 0C8EB8 800C82B8 00000000 */  nop   
/* 0C8EBC 800C82BC 46328400 */  add.d $f16, $f16, $f18
.L800C82C0:
/* 0C8EC0 800C82C0 44863000 */  mtc1  $a2, $f6
/* 0C8EC4 800C82C4 46304102 */  mul.d $f4, $f8, $f16
/* 0C8EC8 800C82C8 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 0C8ECC 800C82CC 04C10005 */  bgez  $a2, .L800C82E4
/* 0C8ED0 800C82D0 468032A1 */   cvt.d.w $f10, $f6
/* 0C8ED4 800C82D4 44819800 */  mtc1  $at, $f19
/* 0C8ED8 800C82D8 44809000 */  mtc1  $zero, $f18
/* 0C8EDC 800C82DC 00000000 */  nop   
/* 0C8EE0 800C82E0 46325280 */  add.d $f10, $f10, $f18
.L800C82E4:
/* 0C8EE4 800C82E4 462A2203 */  div.d $f8, $f4, $f10
/* 0C8EE8 800C82E8 24020001 */  li    $v0, 1
/* 0C8EEC 800C82EC 3C0141E0 */  li    $at, 0x41E00000 # 28.000000
/* 0C8EF0 800C82F0 4458F800 */  cfc1  $t8, $31
/* 0C8EF4 800C82F4 44C2F800 */  ctc1  $v0, $31
/* 0C8EF8 800C82F8 00000000 */  nop   
/* 0C8EFC 800C82FC 46204424 */  cvt.w.d $f16, $f8
/* 0C8F00 800C8300 4442F800 */  cfc1  $v0, $31
/* 0C8F04 800C8304 00000000 */  nop   
/* 0C8F08 800C8308 30420078 */  andi  $v0, $v0, 0x78
/* 0C8F0C 800C830C 50400016 */  beql  $v0, $zero, .L800C8368
/* 0C8F10 800C8310 44028000 */   mfc1  $v0, $f16
/* 0C8F14 800C8314 44818800 */  mtc1  $at, $f17
/* 0C8F18 800C8318 44808000 */  mtc1  $zero, $f16
/* 0C8F1C 800C831C 24020001 */  li    $v0, 1
/* 0C8F20 800C8320 3C018000 */  lui   $at, 0x8000
/* 0C8F24 800C8324 46304401 */  sub.d $f16, $f8, $f16
/* 0C8F28 800C8328 44C2F800 */  ctc1  $v0, $31
/* 0C8F2C 800C832C 00000000 */  nop   
/* 0C8F30 800C8330 46208424 */  cvt.w.d $f16, $f16
/* 0C8F34 800C8334 4442F800 */  cfc1  $v0, $31
/* 0C8F38 800C8338 00000000 */  nop   
/* 0C8F3C 800C833C 30420078 */  andi  $v0, $v0, 0x78
/* 0C8F40 800C8340 54400006 */  bnezl $v0, .L800C835C
/* 0C8F44 800C8344 44D8F800 */   ctc1  $t8, $31
/* 0C8F48 800C8348 44028000 */  mfc1  $v0, $f16
/* 0C8F4C 800C834C 44D8F800 */  ctc1  $t8, $31
/* 0C8F50 800C8350 03E00008 */  jr    $ra
/* 0C8F54 800C8354 00411025 */   or    $v0, $v0, $at

/* 0C8F58 800C8358 44D8F800 */  ctc1  $t8, $31
.L800C835C:
/* 0C8F5C 800C835C 03E00008 */  jr    $ra
/* 0C8F60 800C8360 2402FFFF */   li    $v0, -1

/* 0C8F64 800C8364 44028000 */  mfc1  $v0, $f16
.L800C8368:
/* 0C8F68 800C8368 00000000 */  nop   
/* 0C8F6C 800C836C 0442FFFB */  bltzl $v0, .L800C835C
/* 0C8F70 800C8370 44D8F800 */   ctc1  $t8, $31
/* 0C8F74 800C8374 44D8F800 */  ctc1  $t8, $31
/* 0C8F78 800C8378 03E00008 */  jr    $ra
/* 0C8F7C 800C837C 00000000 */   nop   

/* 0C8F80 800C8380 44852000 */  mtc1  $a1, $f4
/* 0C8F84 800C8384 44864000 */  mtc1  $a2, $f8
/* 0C8F88 800C8388 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0C8F8C 800C838C 468021A0 */  cvt.s.w $f6, $f4
/* 0C8F90 800C8390 04C10004 */  bgez  $a2, .L800C83A4
/* 0C8F94 800C8394 468042A0 */   cvt.s.w $f10, $f8
/* 0C8F98 800C8398 44818000 */  mtc1  $at, $f16
/* 0C8F9C 800C839C 00000000 */  nop   
/* 0C8FA0 800C83A0 46105280 */  add.s $f10, $f10, $f16
.L800C83A4:
/* 0C8FA4 800C83A4 8C8E0000 */  lw    $t6, ($a0)
/* 0C8FA8 800C83A8 460A3482 */  mul.s $f18, $f6, $f10
/* 0C8FAC 800C83AC 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0C8FB0 800C83B0 8DCF0040 */  lw    $t7, 0x40($t6)
/* 0C8FB4 800C83B4 448F4000 */  mtc1  $t7, $f8
/* 0C8FB8 800C83B8 46009121 */  cvt.d.s $f4, $f18
/* 0C8FBC 800C83BC 05E10004 */  bgez  $t7, .L800C83D0
/* 0C8FC0 800C83C0 46804420 */   cvt.s.w $f16, $f8
/* 0C8FC4 800C83C4 44813000 */  mtc1  $at, $f6
/* 0C8FC8 800C83C8 00000000 */  nop   
/* 0C8FCC 800C83CC 46068400 */  add.s $f16, $f16, $f6
.L800C83D0:
/* 0C8FD0 800C83D0 3C01800F */  lui   $at, 0x800f
/* 0C8FD4 800C83D4 D43294B8 */  ldc1  $f18, -0x6b48($at)
/* 0C8FD8 800C83D8 460082A1 */  cvt.d.s $f10, $f16
/* 0C8FDC 800C83DC 46325202 */  mul.d $f8, $f10, $f18
/* 0C8FE0 800C83E0 46282183 */  div.d $f6, $f4, $f8
/* 0C8FE4 800C83E4 03E00008 */  jr    $ra
/* 0C8FE8 800C83E8 46203020 */   cvt.s.d $f0, $f6

glabel func_800C83EC
/* 0C8FEC 800C83EC 8C8E0004 */  lw    $t6, 4($a0)
/* 0C8FF0 800C83F0 00A04825 */  move  $t1, $a1
/* 0C8FF4 800C83F4 2403FFFF */  li    $v1, -1
/* 0C8FF8 800C83F8 15C00003 */  bnez  $t6, .L800C8408
/* 0C8FFC 800C83FC 8C820010 */   lw    $v0, 0x10($a0)
/* 0C9000 800C8400 03E00008 */  jr    $ra
/* 0C9004 800C8404 00001025 */   move  $v0, $zero

.L800C8408:
/* 0C9008 800C8408 00003025 */  move  $a2, $zero
/* 0C900C 800C840C 240A0010 */  li    $t2, 16
/* 0C9010 800C8410 8C850004 */  lw    $a1, 4($a0)
.L800C8414:
/* 0C9014 800C8414 24CE0001 */  addiu $t6, $a2, 1
/* 0C9018 800C8418 00C57806 */  srlv  $t7, $a1, $a2
/* 0C901C 800C841C 31F80001 */  andi  $t8, $t7, 1
/* 0C9020 800C8420 53000010 */  beql  $t8, $zero, .L800C8464
/* 0C9024 800C8424 01C57806 */   srlv  $t7, $a1, $t6
/* 0C9028 800C8428 8C8B0014 */  lw    $t3, 0x14($a0)
/* 0C902C 800C842C 0006C880 */  sll   $t9, $a2, 2
/* 0C9030 800C8430 00993821 */  addu  $a3, $a0, $t9
/* 0C9034 800C8434 51600006 */  beql  $t3, $zero, .L800C8450
/* 0C9038 800C8438 8CE800B8 */   lw    $t0, 0xb8($a3)
/* 0C903C 800C843C 8CEC00B8 */  lw    $t4, 0xb8($a3)
/* 0C9040 800C8440 01826823 */  subu  $t5, $t4, $v0
/* 0C9044 800C8444 ACED00B8 */  sw    $t5, 0xb8($a3)
/* 0C9048 800C8448 8C850004 */  lw    $a1, 4($a0)
/* 0C904C 800C844C 8CE800B8 */  lw    $t0, 0xb8($a3)
.L800C8450:
/* 0C9050 800C8450 0103082B */  sltu  $at, $t0, $v1
/* 0C9054 800C8454 50200003 */  beql  $at, $zero, .L800C8464
/* 0C9058 800C8458 01C57806 */   srlv  $t7, $a1, $t6
/* 0C905C 800C845C 01001825 */  move  $v1, $t0
/* 0C9060 800C8460 01C57806 */  srlv  $t7, $a1, $t6
.L800C8464:
/* 0C9064 800C8464 31F80001 */  andi  $t8, $t7, 1
/* 0C9068 800C8468 1300000F */  beqz  $t8, .L800C84A8
/* 0C906C 800C846C 24CE0002 */   addiu $t6, $a2, 2
/* 0C9070 800C8470 8C8B0014 */  lw    $t3, 0x14($a0)
/* 0C9074 800C8474 0006C880 */  sll   $t9, $a2, 2
/* 0C9078 800C8478 00993821 */  addu  $a3, $a0, $t9
/* 0C907C 800C847C 51600006 */  beql  $t3, $zero, .L800C8498
/* 0C9080 800C8480 8CE800BC */   lw    $t0, 0xbc($a3)
/* 0C9084 800C8484 8CEC00BC */  lw    $t4, 0xbc($a3)
/* 0C9088 800C8488 01826823 */  subu  $t5, $t4, $v0
/* 0C908C 800C848C ACED00BC */  sw    $t5, 0xbc($a3)
/* 0C9090 800C8490 8C850004 */  lw    $a1, 4($a0)
/* 0C9094 800C8494 8CE800BC */  lw    $t0, 0xbc($a3)
.L800C8498:
/* 0C9098 800C8498 0103082B */  sltu  $at, $t0, $v1
/* 0C909C 800C849C 50200003 */  beql  $at, $zero, .L800C84AC
/* 0C90A0 800C84A0 01C57806 */   srlv  $t7, $a1, $t6
/* 0C90A4 800C84A4 01001825 */  move  $v1, $t0
.L800C84A8:
/* 0C90A8 800C84A8 01C57806 */  srlv  $t7, $a1, $t6
.L800C84AC:
/* 0C90AC 800C84AC 31F80001 */  andi  $t8, $t7, 1
/* 0C90B0 800C84B0 1300000F */  beqz  $t8, .L800C84F0
/* 0C90B4 800C84B4 24CE0003 */   addiu $t6, $a2, 3
/* 0C90B8 800C84B8 8C8B0014 */  lw    $t3, 0x14($a0)
/* 0C90BC 800C84BC 0006C880 */  sll   $t9, $a2, 2
/* 0C90C0 800C84C0 00993821 */  addu  $a3, $a0, $t9
/* 0C90C4 800C84C4 51600006 */  beql  $t3, $zero, .L800C84E0
/* 0C90C8 800C84C8 8CE800C0 */   lw    $t0, 0xc0($a3)
/* 0C90CC 800C84CC 8CEC00C0 */  lw    $t4, 0xc0($a3)
/* 0C90D0 800C84D0 01826823 */  subu  $t5, $t4, $v0
/* 0C90D4 800C84D4 ACED00C0 */  sw    $t5, 0xc0($a3)
/* 0C90D8 800C84D8 8C850004 */  lw    $a1, 4($a0)
/* 0C90DC 800C84DC 8CE800C0 */  lw    $t0, 0xc0($a3)
.L800C84E0:
/* 0C90E0 800C84E0 0103082B */  sltu  $at, $t0, $v1
/* 0C90E4 800C84E4 50200003 */  beql  $at, $zero, .L800C84F4
/* 0C90E8 800C84E8 01C57806 */   srlv  $t7, $a1, $t6
/* 0C90EC 800C84EC 01001825 */  move  $v1, $t0
.L800C84F0:
/* 0C90F0 800C84F0 01C57806 */  srlv  $t7, $a1, $t6
.L800C84F4:
/* 0C90F4 800C84F4 31F80001 */  andi  $t8, $t7, 1
/* 0C90F8 800C84F8 5300000F */  beql  $t8, $zero, .L800C8538
/* 0C90FC 800C84FC 24C60004 */   addiu $a2, $a2, 4
/* 0C9100 800C8500 8C8B0014 */  lw    $t3, 0x14($a0)
/* 0C9104 800C8504 0006C880 */  sll   $t9, $a2, 2
/* 0C9108 800C8508 00993821 */  addu  $a3, $a0, $t9
/* 0C910C 800C850C 51600005 */  beql  $t3, $zero, .L800C8524
/* 0C9110 800C8510 8CE500C4 */   lw    $a1, 0xc4($a3)
/* 0C9114 800C8514 8CEC00C4 */  lw    $t4, 0xc4($a3)
/* 0C9118 800C8518 01826823 */  subu  $t5, $t4, $v0
/* 0C911C 800C851C ACED00C4 */  sw    $t5, 0xc4($a3)
/* 0C9120 800C8520 8CE500C4 */  lw    $a1, 0xc4($a3)
.L800C8524:
/* 0C9124 800C8524 00A3082B */  sltu  $at, $a1, $v1
/* 0C9128 800C8528 50200003 */  beql  $at, $zero, .L800C8538
/* 0C912C 800C852C 24C60004 */   addiu $a2, $a2, 4
/* 0C9130 800C8530 00A01825 */  move  $v1, $a1
/* 0C9134 800C8534 24C60004 */  addiu $a2, $a2, 4
.L800C8538:
/* 0C9138 800C8538 54CAFFB6 */  bnel  $a2, $t2, .L800C8414
/* 0C913C 800C853C 8C850004 */   lw    $a1, 4($a0)
/* 0C9140 800C8540 AC800014 */  sw    $zero, 0x14($a0)
/* 0C9144 800C8544 AD230000 */  sw    $v1, ($t1)
/* 0C9148 800C8548 24020001 */  li    $v0, 1
/* 0C914C 800C854C 03E00008 */  jr    $ra
/* 0C9150 800C8550 00000000 */   nop   

/* 0C9154 800C8554 00000000 */  nop   
/* 0C9158 800C8558 00000000 */  nop   
/* 0C915C 800C855C 00000000 */  nop   
