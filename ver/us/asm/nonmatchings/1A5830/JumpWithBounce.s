.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel JumpWithBounce
/* 1A8008 80279728 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* 1A800C 8027972C AFB20020 */  sw        $s2, 0x20($sp)
/* 1A8010 80279730 0080902D */  daddu     $s2, $a0, $zero
/* 1A8014 80279734 AFBF0024 */  sw        $ra, 0x24($sp)
/* 1A8018 80279738 AFB1001C */  sw        $s1, 0x1c($sp)
/* 1A801C 8027973C AFB00018 */  sw        $s0, 0x18($sp)
/* 1A8020 80279740 F7BE0050 */  sdc1      $f30, 0x50($sp)
/* 1A8024 80279744 F7BC0048 */  sdc1      $f28, 0x48($sp)
/* 1A8028 80279748 F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 1A802C 8027974C F7B80038 */  sdc1      $f24, 0x38($sp)
/* 1A8030 80279750 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 1A8034 80279754 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 1A8038 80279758 8E51000C */  lw        $s1, 0xc($s2)
/* 1A803C 8027975C 54A00001 */  bnel      $a1, $zero, .L80279764
/* 1A8040 80279760 AE400070 */   sw       $zero, 0x70($s2)
.L80279764:
/* 1A8044 80279764 8E420070 */  lw        $v0, 0x70($s2)
/* 1A8048 80279768 14400079 */  bnez      $v0, .L80279950
/* 1A804C 8027976C 24040002 */   addiu    $a0, $zero, 2
/* 1A8050 80279770 8E250000 */  lw        $a1, ($s1)
/* 1A8054 80279774 26310004 */  addiu     $s1, $s1, 4
/* 1A8058 80279778 0C0B1EAF */  jal       get_variable
/* 1A805C 8027977C 0240202D */   daddu    $a0, $s2, $zero
/* 1A8060 80279780 0040202D */  daddu     $a0, $v0, $zero
/* 1A8064 80279784 2402FF81 */  addiu     $v0, $zero, -0x7f
/* 1A8068 80279788 14820002 */  bne       $a0, $v0, .L80279794
/* 1A806C 8027978C 00000000 */   nop
/* 1A8070 80279790 8E440148 */  lw        $a0, 0x148($s2)
.L80279794:
/* 1A8074 80279794 0C09A75B */  jal       get_actor
/* 1A8078 80279798 00000000 */   nop
/* 1A807C 8027979C 0040802D */  daddu     $s0, $v0, $zero
/* 1A8080 802797A0 AE500074 */  sw        $s0, 0x74($s2)
/* 1A8084 802797A4 8E250000 */  lw        $a1, ($s1)
/* 1A8088 802797A8 26310004 */  addiu     $s1, $s1, 4
/* 1A808C 802797AC 0C0B1EAF */  jal       get_variable
/* 1A8090 802797B0 0240202D */   daddu    $a0, $s2, $zero
/* 1A8094 802797B4 A6020070 */  sh        $v0, 0x70($s0)
/* 1A8098 802797B8 8E250000 */  lw        $a1, ($s1)
/* 1A809C 802797BC 0C0B210B */  jal       get_float_variable
/* 1A80A0 802797C0 0240202D */   daddu    $a0, $s2, $zero
/* 1A80A4 802797C4 C6020148 */  lwc1      $f2, 0x148($s0)
/* 1A80A8 802797C8 C61A0018 */  lwc1      $f26, 0x18($s0)
/* 1A80AC 802797CC C61C0020 */  lwc1      $f28, 0x20($s0)
/* 1A80B0 802797D0 C614014C */  lwc1      $f20, 0x14c($s0)
/* 1A80B4 802797D4 C618001C */  lwc1      $f24, 0x1c($s0)
/* 1A80B8 802797D8 2611000C */  addiu     $s1, $s0, 0xc
/* 1A80BC 802797DC E600005C */  swc1      $f0, 0x5c($s0)
/* 1A80C0 802797E0 E6020010 */  swc1      $f2, 0x10($s0)
/* 1A80C4 802797E4 46001786 */  mov.s     $f30, $f2
/* 1A80C8 802797E8 4406D000 */  mfc1      $a2, $f26
/* 1A80CC 802797EC 4407E000 */  mfc1      $a3, $f28
/* 1A80D0 802797F0 C6020144 */  lwc1      $f2, 0x144($s0)
/* 1A80D4 802797F4 4600A386 */  mov.s     $f14, $f20
/* 1A80D8 802797F8 E6140014 */  swc1      $f20, 0x14($s0)
/* 1A80DC 802797FC E602000C */  swc1      $f2, 0xc($s0)
/* 1A80E0 80279800 46001586 */  mov.s     $f22, $f2
/* 1A80E4 80279804 0C00A720 */  jal       atan2
/* 1A80E8 80279808 4600B306 */   mov.s    $f12, $f22
/* 1A80EC 8027980C 4600B306 */  mov.s     $f12, $f22
/* 1A80F0 80279810 4600A386 */  mov.s     $f14, $f20
/* 1A80F4 80279814 4406D000 */  mfc1      $a2, $f26
/* 1A80F8 80279818 4407E000 */  mfc1      $a3, $f28
/* 1A80FC 8027981C 461EC781 */  sub.s     $f30, $f24, $f30
/* 1A8100 80279820 0C00A7B5 */  jal       dist2D
/* 1A8104 80279824 E6000054 */   swc1     $f0, 0x54($s0)
/* 1A8108 80279828 86020070 */  lh        $v0, 0x70($s0)
/* 1A810C 8027982C 46000106 */  mov.s     $f4, $f0
/* 1A8110 80279830 14400012 */  bnez      $v0, .L8027987C
/* 1A8114 80279834 E6040058 */   swc1     $f4, 0x58($s0)
/* 1A8118 80279838 C600004C */  lwc1      $f0, 0x4c($s0)
/* 1A811C 8027983C C602004C */  lwc1      $f2, 0x4c($s0)
/* 1A8120 80279840 46002003 */  div.s     $f0, $f4, $f0
/* 1A8124 80279844 4600028D */  trunc.w.s $f10, $f0
/* 1A8128 80279848 44035000 */  mfc1      $v1, $f10
/* 1A812C 8027984C 00000000 */  nop
/* 1A8130 80279850 00031400 */  sll       $v0, $v1, 0x10
/* 1A8134 80279854 00021403 */  sra       $v0, $v0, 0x10
/* 1A8138 80279858 44820000 */  mtc1      $v0, $f0
/* 1A813C 8027985C 00000000 */  nop
/* 1A8140 80279860 46800020 */  cvt.s.w   $f0, $f0
/* 1A8144 80279864 46020002 */  mul.s     $f0, $f0, $f2
/* 1A8148 80279868 00000000 */  nop
/* 1A814C 8027986C 46002086 */  mov.s     $f2, $f4
/* 1A8150 80279870 A6030070 */  sh        $v1, 0x70($s0)
/* 1A8154 80279874 0809E62C */  j         .L802798B0
/* 1A8158 80279878 46001201 */   sub.s    $f8, $f2, $f0
.L8027987C:
/* 1A815C 8027987C 44821000 */  mtc1      $v0, $f2
/* 1A8160 80279880 00000000 */  nop
/* 1A8164 80279884 468010A0 */  cvt.s.w   $f2, $f2
/* 1A8168 80279888 86020070 */  lh        $v0, 0x70($s0)
/* 1A816C 8027988C 46022083 */  div.s     $f2, $f4, $f2
/* 1A8170 80279890 44820000 */  mtc1      $v0, $f0
/* 1A8174 80279894 00000000 */  nop
/* 1A8178 80279898 46800020 */  cvt.s.w   $f0, $f0
/* 1A817C 8027989C 46020002 */  mul.s     $f0, $f0, $f2
/* 1A8180 802798A0 00000000 */  nop
/* 1A8184 802798A4 C6040058 */  lwc1      $f4, 0x58($s0)
/* 1A8188 802798A8 E602004C */  swc1      $f2, 0x4c($s0)
/* 1A818C 802798AC 46002201 */  sub.s     $f8, $f4, $f0
.L802798B0:
/* 1A8190 802798B0 86220064 */  lh        $v0, 0x64($s1)
/* 1A8194 802798B4 14400003 */  bnez      $v0, .L802798C4
/* 1A8198 802798B8 00000000 */   nop
/* 1A819C 802798BC 0809E6A9 */  j         .L80279AA4
/* 1A81A0 802798C0 24020002 */   addiu    $v0, $zero, 2
.L802798C4:
/* 1A81A4 802798C4 C622003C */  lwc1      $f2, 0x3c($s1)
/* 1A81A8 802798C8 44823000 */  mtc1      $v0, $f6
/* 1A81AC 802798CC 00000000 */  nop
/* 1A81B0 802798D0 468031A0 */  cvt.s.w   $f6, $f6
/* 1A81B4 802798D4 46061082 */  mul.s     $f2, $f2, $f6
/* 1A81B8 802798D8 00000000 */  nop
/* 1A81BC 802798DC 3C013F00 */  lui       $at, 0x3f00
/* 1A81C0 802798E0 44810000 */  mtc1      $at, $f0
/* 1A81C4 802798E4 00000000 */  nop
/* 1A81C8 802798E8 46001082 */  mul.s     $f2, $f2, $f0
/* 1A81CC 802798EC 00000000 */  nop
/* 1A81D0 802798F0 86220064 */  lh        $v0, 0x64($s1)
/* 1A81D4 802798F4 C6240040 */  lwc1      $f4, 0x40($s1)
/* 1A81D8 802798F8 44820000 */  mtc1      $v0, $f0
/* 1A81DC 802798FC 00000000 */  nop
/* 1A81E0 80279900 46800020 */  cvt.s.w   $f0, $f0
/* 1A81E4 80279904 46004003 */  div.s     $f0, $f8, $f0
/* 1A81E8 80279908 46002100 */  add.s     $f4, $f4, $f0
/* 1A81EC 8027990C 4606F183 */  div.s     $f6, $f30, $f6
/* 1A81F0 80279910 46061080 */  add.s     $f2, $f2, $f6
/* 1A81F4 80279914 E6240040 */  swc1      $f4, 0x40($s1)
/* 1A81F8 80279918 E6220044 */  swc1      $f2, 0x44($s1)
/* 1A81FC 8027991C 8E0201AC */  lw        $v0, 0x1ac($s0)
/* 1A8200 80279920 10400009 */  beqz      $v0, .L80279948
/* 1A8204 80279924 24020001 */   addiu    $v0, $zero, 1
/* 1A8208 80279928 C600014C */  lwc1      $f0, 0x14c($s0)
/* 1A820C 8027992C E7A00010 */  swc1      $f0, 0x10($sp)
/* 1A8210 80279930 8E0401AC */  lw        $a0, 0x1ac($s0)
/* 1A8214 80279934 8E060144 */  lw        $a2, 0x144($s0)
/* 1A8218 80279938 8E070148 */  lw        $a3, 0x148($s0)
/* 1A821C 8027993C 0C052757 */  jal       sfx_play_sound_at_position
/* 1A8220 80279940 0000282D */   daddu    $a1, $zero, $zero
/* 1A8224 80279944 24020001 */  addiu     $v0, $zero, 1
.L80279948:
/* 1A8228 80279948 AE420070 */  sw        $v0, 0x70($s2)
/* 1A822C 8027994C 24040002 */  addiu     $a0, $zero, 2
.L80279950:
/* 1A8230 80279950 8E500074 */  lw        $s0, 0x74($s2)
/* 1A8234 80279954 8E430070 */  lw        $v1, 0x70($s2)
/* 1A8238 80279958 1064002D */  beq       $v1, $a0, .L80279A10
/* 1A823C 8027995C 2611000C */   addiu    $s1, $s0, 0xc
/* 1A8240 80279960 28620003 */  slti      $v0, $v1, 3
/* 1A8244 80279964 10400005 */  beqz      $v0, .L8027997C
/* 1A8248 80279968 24020001 */   addiu    $v0, $zero, 1
/* 1A824C 8027996C 10620008 */  beq       $v1, $v0, .L80279990
/* 1A8250 80279970 00000000 */   nop
/* 1A8254 80279974 0809E6A2 */  j         .L80279A88
/* 1A8258 80279978 00000000 */   nop
.L8027997C:
/* 1A825C 8027997C 24020003 */  addiu     $v0, $zero, 3
/* 1A8260 80279980 10620048 */  beq       $v1, $v0, .L80279AA4
/* 1A8264 80279984 24020002 */   addiu    $v0, $zero, 2
/* 1A8268 80279988 0809E6A2 */  j         .L80279A88
/* 1A826C 8027998C 00000000 */   nop
.L80279990:
/* 1A8270 80279990 C6000050 */  lwc1      $f0, 0x50($s0)
/* 1A8274 80279994 C6040010 */  lwc1      $f4, 0x10($s0)
/* 1A8278 80279998 46000086 */  mov.s     $f2, $f0
/* 1A827C 8027999C 46002100 */  add.s     $f4, $f4, $f0
/* 1A8280 802799A0 C6000048 */  lwc1      $f0, 0x48($s0)
/* 1A8284 802799A4 46001081 */  sub.s     $f2, $f2, $f0
/* 1A8288 802799A8 44800000 */  mtc1      $zero, $f0
/* 1A828C 802799AC E6040010 */  swc1      $f4, 0x10($s0)
/* 1A8290 802799B0 4600103C */  c.lt.s    $f2, $f0
/* 1A8294 802799B4 00000000 */  nop
/* 1A8298 802799B8 4500000F */  bc1f      .L802799F8
/* 1A829C 802799BC E6020050 */   swc1     $f2, 0x50($s0)
/* 1A82A0 802799C0 C600001C */  lwc1      $f0, 0x1c($s0)
/* 1A82A4 802799C4 46002086 */  mov.s     $f2, $f4
/* 1A82A8 802799C8 4600103C */  c.lt.s    $f2, $f0
/* 1A82AC 802799CC 00000000 */  nop
/* 1A82B0 802799D0 45000009 */  bc1f      .L802799F8
/* 1A82B4 802799D4 00000000 */   nop
/* 1A82B8 802799D8 C6020050 */  lwc1      $f2, 0x50($s0)
/* 1A82BC 802799DC C604005C */  lwc1      $f4, 0x5c($s0)
/* 1A82C0 802799E0 C6000048 */  lwc1      $f0, 0x48($s0)
/* 1A82C4 802799E4 46041083 */  div.s     $f2, $f2, $f4
/* 1A82C8 802799E8 46000007 */  neg.s     $f0, $f0
/* 1A82CC 802799EC E6000048 */  swc1      $f0, 0x48($s0)
/* 1A82D0 802799F0 E6020050 */  swc1      $f2, 0x50($s0)
/* 1A82D4 802799F4 AE440070 */  sw        $a0, 0x70($s2)
.L802799F8:
/* 1A82D8 802799F8 8E250040 */  lw        $a1, 0x40($s1)
/* 1A82DC 802799FC 8E260048 */  lw        $a2, 0x48($s1)
/* 1A82E0 80279A00 0C09904A */  jal       add_xz_vec3f
/* 1A82E4 80279A04 0220202D */   daddu    $a0, $s1, $zero
/* 1A82E8 80279A08 0809E6A2 */  j         .L80279A88
/* 1A82EC 80279A0C 00000000 */   nop
.L80279A10:
/* 1A82F0 80279A10 C6000050 */  lwc1      $f0, 0x50($s0)
/* 1A82F4 80279A14 C6040010 */  lwc1      $f4, 0x10($s0)
/* 1A82F8 80279A18 46000086 */  mov.s     $f2, $f0
/* 1A82FC 80279A1C 46002100 */  add.s     $f4, $f4, $f0
/* 1A8300 80279A20 C6000048 */  lwc1      $f0, 0x48($s0)
/* 1A8304 80279A24 46001081 */  sub.s     $f2, $f2, $f0
/* 1A8308 80279A28 44800000 */  mtc1      $zero, $f0
/* 1A830C 80279A2C E6040010 */  swc1      $f4, 0x10($s0)
/* 1A8310 80279A30 4602003C */  c.lt.s    $f0, $f2
/* 1A8314 80279A34 00000000 */  nop
/* 1A8318 80279A38 45000009 */  bc1f      .L80279A60
/* 1A831C 80279A3C E6020050 */   swc1     $f2, 0x50($s0)
/* 1A8320 80279A40 C602001C */  lwc1      $f2, 0x1c($s0)
/* 1A8324 80279A44 46002006 */  mov.s     $f0, $f4
/* 1A8328 80279A48 4600103C */  c.lt.s    $f2, $f0
/* 1A832C 80279A4C 00000000 */  nop
/* 1A8330 80279A50 45000003 */  bc1f      .L80279A60
/* 1A8334 80279A54 24020003 */   addiu    $v0, $zero, 3
/* 1A8338 80279A58 E6020010 */  swc1      $f2, 0x10($s0)
/* 1A833C 80279A5C AE420070 */  sw        $v0, 0x70($s2)
.L80279A60:
/* 1A8340 80279A60 8E250040 */  lw        $a1, 0x40($s1)
/* 1A8344 80279A64 8E260048 */  lw        $a2, 0x48($s1)
/* 1A8348 80279A68 0C09904A */  jal       add_xz_vec3f
/* 1A834C 80279A6C 0220202D */   daddu    $a0, $s1, $zero
/* 1A8350 80279A70 C6200000 */  lwc1      $f0, ($s1)
/* 1A8354 80279A74 E6000144 */  swc1      $f0, 0x144($s0)
/* 1A8358 80279A78 C6200004 */  lwc1      $f0, 4($s1)
/* 1A835C 80279A7C E6000148 */  swc1      $f0, 0x148($s0)
/* 1A8360 80279A80 C6200008 */  lwc1      $f0, 8($s1)
/* 1A8364 80279A84 E600014C */  swc1      $f0, 0x14c($s0)
.L80279A88:
/* 1A8368 80279A88 C6200000 */  lwc1      $f0, ($s1)
/* 1A836C 80279A8C E6000144 */  swc1      $f0, 0x144($s0)
/* 1A8370 80279A90 C6200004 */  lwc1      $f0, 4($s1)
/* 1A8374 80279A94 E6000148 */  swc1      $f0, 0x148($s0)
/* 1A8378 80279A98 C6200008 */  lwc1      $f0, 8($s1)
/* 1A837C 80279A9C 0000102D */  daddu     $v0, $zero, $zero
/* 1A8380 80279AA0 E600014C */  swc1      $f0, 0x14c($s0)
.L80279AA4:
/* 1A8384 80279AA4 8FBF0024 */  lw        $ra, 0x24($sp)
/* 1A8388 80279AA8 8FB20020 */  lw        $s2, 0x20($sp)
/* 1A838C 80279AAC 8FB1001C */  lw        $s1, 0x1c($sp)
/* 1A8390 80279AB0 8FB00018 */  lw        $s0, 0x18($sp)
/* 1A8394 80279AB4 D7BE0050 */  ldc1      $f30, 0x50($sp)
/* 1A8398 80279AB8 D7BC0048 */  ldc1      $f28, 0x48($sp)
/* 1A839C 80279ABC D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 1A83A0 80279AC0 D7B80038 */  ldc1      $f24, 0x38($sp)
/* 1A83A4 80279AC4 D7B60030 */  ldc1      $f22, 0x30($sp)
/* 1A83A8 80279AC8 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 1A83AC 80279ACC 03E00008 */  jr        $ra
/* 1A83B0 80279AD0 27BD0058 */   addiu    $sp, $sp, 0x58
