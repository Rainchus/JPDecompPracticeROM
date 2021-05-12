.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802415D8_A94D18
/* A94D18 802415D8 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* A94D1C 802415DC AFB3001C */  sw        $s3, 0x1c($sp)
/* A94D20 802415E0 0080982D */  daddu     $s3, $a0, $zero
/* A94D24 802415E4 AFBF0020 */  sw        $ra, 0x20($sp)
/* A94D28 802415E8 AFB20018 */  sw        $s2, 0x18($sp)
/* A94D2C 802415EC AFB10014 */  sw        $s1, 0x14($sp)
/* A94D30 802415F0 AFB00010 */  sw        $s0, 0x10($sp)
/* A94D34 802415F4 8E710148 */  lw        $s1, 0x148($s3)
/* A94D38 802415F8 86240008 */  lh        $a0, 8($s1)
/* A94D3C 802415FC 0C00EABB */  jal       get_npc_unsafe
/* A94D40 80241600 00A0902D */   daddu    $s2, $a1, $zero
/* A94D44 80241604 0040802D */  daddu     $s0, $v0, $zero
/* A94D48 80241608 8602008E */  lh        $v0, 0x8e($s0)
/* A94D4C 8024160C 9603008E */  lhu       $v1, 0x8e($s0)
/* A94D50 80241610 18400005 */  blez      $v0, .L80241628
/* A94D54 80241614 2462FFFF */   addiu    $v0, $v1, -1
/* A94D58 80241618 A602008E */  sh        $v0, 0x8e($s0)
/* A94D5C 8024161C 00021400 */  sll       $v0, $v0, 0x10
/* A94D60 80241620 1C400033 */  bgtz      $v0, .L802416F0
/* A94D64 80241624 00000000 */   nop
.L80241628:
/* A94D68 80241628 8602008C */  lh        $v0, 0x8c($s0)
/* A94D6C 8024162C 14400030 */  bnez      $v0, .L802416F0
/* A94D70 80241630 00000000 */   nop
/* A94D74 80241634 8E2200CC */  lw        $v0, 0xcc($s1)
/* A94D78 80241638 8C420024 */  lw        $v0, 0x24($v0)
/* A94D7C 8024163C AE020028 */  sw        $v0, 0x28($s0)
/* A94D80 80241640 C6400018 */  lwc1      $f0, 0x18($s2)
/* A94D84 80241644 E6000018 */  swc1      $f0, 0x18($s0)
/* A94D88 80241648 8E230088 */  lw        $v1, 0x88($s1)
/* A94D8C 8024164C 24020005 */  addiu     $v0, $zero, 5
/* A94D90 80241650 10620005 */  beq       $v1, $v0, .L80241668
/* A94D94 80241654 00000000 */   nop
/* A94D98 80241658 10600003 */  beqz      $v1, .L80241668
/* A94D9C 8024165C 24020001 */   addiu    $v0, $zero, 1
/* A94DA0 80241660 14620006 */  bne       $v1, $v0, .L8024167C
/* A94DA4 80241664 00000000 */   nop
.L80241668:
/* A94DA8 80241668 8E220084 */  lw        $v0, 0x84($s1)
/* A94DAC 8024166C 00021FC2 */  srl       $v1, $v0, 0x1f
/* A94DB0 80241670 00431021 */  addu      $v0, $v0, $v1
/* A94DB4 80241674 00021043 */  sra       $v0, $v0, 1
/* A94DB8 80241678 A60200A8 */  sh        $v0, 0xa8($s0)
.L8024167C:
/* A94DBC 8024167C 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* A94DC0 80241680 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* A94DC4 80241684 C60C0038 */  lwc1      $f12, 0x38($s0)
/* A94DC8 80241688 C60E0040 */  lwc1      $f14, 0x40($s0)
/* A94DCC 8024168C 8C460028 */  lw        $a2, 0x28($v0)
/* A94DD0 80241690 0C00A7B5 */  jal       dist2D
/* A94DD4 80241694 8C470030 */   lw       $a3, 0x30($v0)
/* A94DD8 80241698 C6020018 */  lwc1      $f2, 0x18($s0)
/* A94DDC 8024169C 46020003 */  div.s     $f0, $f0, $f2
/* A94DE0 802416A0 3C018024 */  lui       $at, %hi(D_80245CD8_A99418)
/* A94DE4 802416A4 D4225CD8 */  ldc1      $f2, %lo(D_80245CD8_A99418)($at)
/* A94DE8 802416A8 46000021 */  cvt.d.s   $f0, $f0
/* A94DEC 802416AC 46220000 */  add.d     $f0, $f0, $f2
/* A94DF0 802416B0 4620010D */  trunc.w.d $f4, $f0
/* A94DF4 802416B4 44022000 */  mfc1      $v0, $f4
/* A94DF8 802416B8 00000000 */  nop
/* A94DFC 802416BC A602008E */  sh        $v0, 0x8e($s0)
/* A94E00 802416C0 00021400 */  sll       $v0, $v0, 0x10
/* A94E04 802416C4 8E230078 */  lw        $v1, 0x78($s1)
/* A94E08 802416C8 00021403 */  sra       $v0, $v0, 0x10
/* A94E0C 802416CC 0043102A */  slt       $v0, $v0, $v1
/* A94E10 802416D0 10400003 */  beqz      $v0, .L802416E0
/* A94E14 802416D4 00000000 */   nop
/* A94E18 802416D8 9622007A */  lhu       $v0, 0x7a($s1)
/* A94E1C 802416DC A602008E */  sh        $v0, 0x8e($s0)
.L802416E0:
/* A94E20 802416E0 8602008E */  lh        $v0, 0x8e($s0)
/* A94E24 802416E4 AE22007C */  sw        $v0, 0x7c($s1)
/* A94E28 802416E8 2402000E */  addiu     $v0, $zero, 0xe
/* A94E2C 802416EC AE620070 */  sw        $v0, 0x70($s3)
.L802416F0:
/* A94E30 802416F0 8FBF0020 */  lw        $ra, 0x20($sp)
/* A94E34 802416F4 8FB3001C */  lw        $s3, 0x1c($sp)
/* A94E38 802416F8 8FB20018 */  lw        $s2, 0x18($sp)
/* A94E3C 802416FC 8FB10014 */  lw        $s1, 0x14($sp)
/* A94E40 80241700 8FB00010 */  lw        $s0, 0x10($sp)
/* A94E44 80241704 03E00008 */  jr        $ra
/* A94E48 80241708 27BD0028 */   addiu    $sp, $sp, 0x28
