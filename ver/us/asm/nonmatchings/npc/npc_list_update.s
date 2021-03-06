.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel npc_list_update
/* 14D30 80039930 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 14D34 80039934 3C02FFFF */  lui       $v0, 0xffff
/* 14D38 80039938 34427FFF */  ori       $v0, $v0, 0x7fff
/* 14D3C 8003993C AFB3003C */  sw        $s3, 0x3c($sp)
/* 14D40 80039940 3C138011 */  lui       $s3, %hi(gPlayerStatus)
/* 14D44 80039944 2673EFC8 */  addiu     $s3, $s3, %lo(gPlayerStatus)
/* 14D48 80039948 AFBF0040 */  sw        $ra, 0x40($sp)
/* 14D4C 8003994C AFB20038 */  sw        $s2, 0x38($sp)
/* 14D50 80039950 AFB10034 */  sw        $s1, 0x34($sp)
/* 14D54 80039954 AFB00030 */  sw        $s0, 0x30($sp)
/* 14D58 80039958 F7B40048 */  sdc1      $f20, 0x48($sp)
/* 14D5C 8003995C 8E630004 */  lw        $v1, 4($s3)
/* 14D60 80039960 3C04800A */  lui       $a0, %hi(gOverrideFlags)
/* 14D64 80039964 8C84A650 */  lw        $a0, %lo(gOverrideFlags)($a0)
/* 14D68 80039968 00621824 */  and       $v1, $v1, $v0
/* 14D6C 8003996C 30840C00 */  andi      $a0, $a0, 0xc00
/* 14D70 80039970 14800104 */  bnez      $a0, .L80039D84
/* 14D74 80039974 AE630004 */   sw       $v1, 4($s3)
/* 14D78 80039978 0000902D */  daddu     $s2, $zero, $zero
/* 14D7C 8003997C 4480A000 */  mtc1      $zero, $f20
.L80039980:
/* 14D80 80039980 3C03800A */  lui       $v1, %hi(gCurrentNpcListPtr)
/* 14D84 80039984 8C630B90 */  lw        $v1, %lo(gCurrentNpcListPtr)($v1)
/* 14D88 80039988 00121080 */  sll       $v0, $s2, 2
/* 14D8C 8003998C 00431021 */  addu      $v0, $v0, $v1
/* 14D90 80039990 8C500000 */  lw        $s0, ($v0)
/* 14D94 80039994 520000F8 */  beql      $s0, $zero, .L80039D78
/* 14D98 80039998 26520001 */   addiu    $s2, $s2, 1
/* 14D9C 8003999C 8E030000 */  lw        $v1, ($s0)
/* 14DA0 800399A0 506000F5 */  beql      $v1, $zero, .L80039D78
/* 14DA4 800399A4 26520001 */   addiu    $s2, $s2, 1
/* 14DA8 800399A8 3C028000 */  lui       $v0, 0x8000
/* 14DAC 800399AC 34420004 */  ori       $v0, $v0, 4
/* 14DB0 800399B0 00621024 */  and       $v0, $v1, $v0
/* 14DB4 800399B4 10400005 */  beqz      $v0, .L800399CC
/* 14DB8 800399B8 00000000 */   nop
/* 14DBC 800399BC 0C00E2BF */  jal       npc_do_world_collision
/* 14DC0 800399C0 0200202D */   daddu    $a0, $s0, $zero
/* 14DC4 800399C4 0800E75E */  j         .L80039D78
/* 14DC8 800399C8 26520001 */   addiu    $s2, $s2, 1
.L800399CC:
/* 14DCC 800399CC 8E020004 */  lw        $v0, 4($s0)
/* 14DD0 800399D0 0040F809 */  jalr      $v0
/* 14DD4 800399D4 0200202D */   daddu    $a0, $s0, $zero
/* 14DD8 800399D8 8E020000 */  lw        $v0, ($s0)
/* 14DDC 800399DC 30428000 */  andi      $v0, $v0, 0x8000
/* 14DE0 800399E0 10400004 */  beqz      $v0, .L800399F4
/* 14DE4 800399E4 3C030004 */   lui      $v1, 4
/* 14DE8 800399E8 8E020080 */  lw        $v0, 0x80($s0)
/* 14DEC 800399EC 0800E681 */  j         .L80039A04
/* 14DF0 800399F0 00431025 */   or       $v0, $v0, $v1
.L800399F4:
/* 14DF4 800399F4 3C03FFFB */  lui       $v1, 0xfffb
/* 14DF8 800399F8 8E020080 */  lw        $v0, 0x80($s0)
/* 14DFC 800399FC 3463FFFF */  ori       $v1, $v1, 0xffff
/* 14E00 80039A00 00431024 */  and       $v0, $v0, $v1
.L80039A04:
/* 14E04 80039A04 AE020080 */  sw        $v0, 0x80($s0)
/* 14E08 80039A08 0200202D */  daddu     $a0, $s0, $zero
/* 14E0C 80039A0C 2402FFFF */  addiu     $v0, $zero, -1
/* 14E10 80039A10 A6020084 */  sh        $v0, 0x84($s0)
/* 14E14 80039A14 A6020086 */  sh        $v0, 0x86($s0)
/* 14E18 80039A18 8E020000 */  lw        $v0, ($s0)
/* 14E1C 80039A1C 24039FFF */  addiu     $v1, $zero, -0x6001
/* 14E20 80039A20 00431024 */  and       $v0, $v0, $v1
/* 14E24 80039A24 0C00E2BF */  jal       npc_do_world_collision
/* 14E28 80039A28 AE020000 */   sw       $v0, ($s0)
/* 14E2C 80039A2C 0C00E5A2 */  jal       npc_do_gravity
/* 14E30 80039A30 0200202D */   daddu    $a0, $s0, $zero
/* 14E34 80039A34 4405A000 */  mfc1      $a1, $f20
/* 14E38 80039A38 0C00E5FA */  jal       func_800397E8
/* 14E3C 80039A3C 0200202D */   daddu    $a0, $s0, $zero
/* 14E40 80039A40 0C00E4B6 */  jal       npc_do_player_collision
/* 14E44 80039A44 0200202D */   daddu    $a0, $s0, $zero
/* 14E48 80039A48 0C00E403 */  jal       npc_do_other_npc_collision
/* 14E4C 80039A4C 0200202D */   daddu    $a0, $s0, $zero
/* 14E50 80039A50 8E020000 */  lw        $v0, ($s0)
/* 14E54 80039A54 3C030010 */  lui       $v1, 0x10
/* 14E58 80039A58 00431024 */  and       $v0, $v0, $v1
/* 14E5C 80039A5C 10400003 */  beqz      $v0, .L80039A6C
/* 14E60 80039A60 00000000 */   nop
/* 14E64 80039A64 0C00EB7E */  jal       update_npc_blur
/* 14E68 80039A68 0200202D */   daddu    $a0, $s0, $zero
.L80039A6C:
/* 14E6C 80039A6C C602003C */  lwc1      $f2, 0x3c($s0)
/* 14E70 80039A70 3C01C4FA */  lui       $at, 0xc4fa
/* 14E74 80039A74 44810000 */  mtc1      $at, $f0
/* 14E78 80039A78 00000000 */  nop
/* 14E7C 80039A7C 4600103C */  c.lt.s    $f2, $f0
/* 14E80 80039A80 00000000 */  nop
/* 14E84 80039A84 4500000D */  bc1f      .L80039ABC
/* 14E88 80039A88 3C030400 */   lui      $v1, 0x400
/* 14E8C 80039A8C 8E020000 */  lw        $v0, ($s0)
/* 14E90 80039A90 00431024 */  and       $v0, $v0, $v1
/* 14E94 80039A94 14400009 */  bnez      $v0, .L80039ABC
/* 14E98 80039A98 2403F7FF */   addiu    $v1, $zero, -0x801
/* 14E9C 80039A9C C660002C */  lwc1      $f0, 0x2c($s3)
/* 14EA0 80039AA0 8E020000 */  lw        $v0, ($s0)
/* 14EA4 80039AA4 E614001C */  swc1      $f20, 0x1c($s0)
/* 14EA8 80039AA8 E6140018 */  swc1      $f20, 0x18($s0)
/* 14EAC 80039AAC E6140014 */  swc1      $f20, 0x14($s0)
/* 14EB0 80039AB0 00431024 */  and       $v0, $v0, $v1
/* 14EB4 80039AB4 E600003C */  swc1      $f0, 0x3c($s0)
/* 14EB8 80039AB8 AE020000 */  sw        $v0, ($s0)
.L80039ABC:
/* 14EBC 80039ABC 8E030000 */  lw        $v1, ($s0)
/* 14EC0 80039AC0 3C024000 */  lui       $v0, 0x4000
/* 14EC4 80039AC4 00621024 */  and       $v0, $v1, $v0
/* 14EC8 80039AC8 1440000E */  bnez      $v0, .L80039B04
/* 14ECC 80039ACC 3C020100 */   lui      $v0, 0x100
/* 14ED0 80039AD0 00621024 */  and       $v0, $v1, $v0
/* 14ED4 80039AD4 1440000F */  bnez      $v0, .L80039B14
/* 14ED8 80039AD8 00000000 */   nop
/* 14EDC 80039ADC 8E050028 */  lw        $a1, 0x28($s0)
/* 14EE0 80039AE0 10A0000C */  beqz      $a1, .L80039B14
/* 14EE4 80039AE4 00000000 */   nop
/* 14EE8 80039AE8 8E040024 */  lw        $a0, 0x24($s0)
/* 14EEC 80039AEC 04800009 */  bltz      $a0, .L80039B14
/* 14EF0 80039AF0 00000000 */   nop
/* 14EF4 80039AF4 0C0B78AB */  jal       spr_update_sprite
/* 14EF8 80039AF8 8E060030 */   lw       $a2, 0x30($s0)
/* 14EFC 80039AFC 0800E6C5 */  j         .L80039B14
/* 14F00 80039B00 00000000 */   nop
.L80039B04:
/* 14F04 80039B04 8E050028 */  lw        $a1, 0x28($s0)
/* 14F08 80039B08 8E060030 */  lw        $a2, 0x30($s0)
/* 14F0C 80039B0C 0C0B76A3 */  jal       func_802DDA8C
/* 14F10 80039B10 24040001 */   addiu    $a0, $zero, 1
.L80039B14:
/* 14F14 80039B14 8E020000 */  lw        $v0, ($s0)
/* 14F18 80039B18 30420010 */  andi      $v0, $v0, 0x10
/* 14F1C 80039B1C 10400072 */  beqz      $v0, .L80039CE8
/* 14F20 80039B20 00000000 */   nop
/* 14F24 80039B24 0C044181 */  jal       get_shadow_by_index
/* 14F28 80039B28 8E040078 */   lw       $a0, 0x78($s0)
/* 14F2C 80039B2C 84440008 */  lh        $a0, 8($v0)
/* 14F30 80039B30 0C048B77 */  jal       get_entity_model
/* 14F34 80039B34 0040882D */   daddu    $s1, $v0, $zero
/* 14F38 80039B38 0040202D */  daddu     $a0, $v0, $zero
/* 14F3C 80039B3C 8C430000 */  lw        $v1, ($v0)
/* 14F40 80039B40 2402FDFF */  addiu     $v0, $zero, -0x201
/* 14F44 80039B44 00622824 */  and       $a1, $v1, $v0
/* 14F48 80039B48 AC850000 */  sw        $a1, ($a0)
/* 14F4C 80039B4C 8E020000 */  lw        $v0, ($s0)
/* 14F50 80039B50 3C030002 */  lui       $v1, 2
/* 14F54 80039B54 00431024 */  and       $v0, $v0, $v1
/* 14F58 80039B58 10400002 */  beqz      $v0, .L80039B64
/* 14F5C 80039B5C 34A20200 */   ori      $v0, $a1, 0x200
/* 14F60 80039B60 AC820000 */  sw        $v0, ($a0)
.L80039B64:
/* 14F64 80039B64 C6020038 */  lwc1      $f2, 0x38($s0)
/* 14F68 80039B68 C604003C */  lwc1      $f4, 0x3c($s0)
/* 14F6C 80039B6C 8E030000 */  lw        $v1, ($s0)
/* 14F70 80039B70 C6060040 */  lwc1      $f6, 0x40($s0)
/* 14F74 80039B74 30620020 */  andi      $v0, $v1, 0x20
/* 14F78 80039B78 E7A20018 */  swc1      $f2, 0x18($sp)
/* 14F7C 80039B7C E7A4001C */  swc1      $f4, 0x1c($sp)
/* 14F80 80039B80 1440004D */  bnez      $v0, .L80039CB8
/* 14F84 80039B84 E7A60020 */   swc1     $f6, 0x20($sp)
/* 14F88 80039B88 C600006C */  lwc1      $f0, 0x6c($s0)
/* 14F8C 80039B8C 46001032 */  c.eq.s    $f2, $f0
/* 14F90 80039B90 00000000 */  nop
/* 14F94 80039B94 4500000E */  bc1f      .L80039BD0
/* 14F98 80039B98 27A40018 */   addiu    $a0, $sp, 0x18
/* 14F9C 80039B9C C6000070 */  lwc1      $f0, 0x70($s0)
/* 14FA0 80039BA0 46002032 */  c.eq.s    $f4, $f0
/* 14FA4 80039BA4 00000000 */  nop
/* 14FA8 80039BA8 4502000A */  bc1fl     .L80039BD4
/* 14FAC 80039BAC 27A5001C */   addiu    $a1, $sp, 0x1c
/* 14FB0 80039BB0 C6000074 */  lwc1      $f0, 0x74($s0)
/* 14FB4 80039BB4 46003032 */  c.eq.s    $f6, $f0
/* 14FB8 80039BB8 00000000 */  nop
/* 14FBC 80039BBC 45000004 */  bc1f      .L80039BD0
/* 14FC0 80039BC0 3C020001 */   lui      $v0, 1
/* 14FC4 80039BC4 00621024 */  and       $v0, $v1, $v0
/* 14FC8 80039BC8 10400047 */  beqz      $v0, .L80039CE8
/* 14FCC 80039BCC 00000000 */   nop
.L80039BD0:
/* 14FD0 80039BD0 27A5001C */  addiu     $a1, $sp, 0x1c
.L80039BD4:
/* 14FD4 80039BD4 27A60020 */  addiu     $a2, $sp, 0x20
/* 14FD8 80039BD8 27A70024 */  addiu     $a3, $sp, 0x24
/* 14FDC 80039BDC C6000038 */  lwc1      $f0, 0x38($s0)
/* 14FE0 80039BE0 960300A8 */  lhu       $v1, 0xa8($s0)
/* 14FE4 80039BE4 3C01447A */  lui       $at, 0x447a
/* 14FE8 80039BE8 44812000 */  mtc1      $at, $f4
/* 14FEC 80039BEC 00031C00 */  sll       $v1, $v1, 0x10
/* 14FF0 80039BF0 00031403 */  sra       $v0, $v1, 0x10
/* 14FF4 80039BF4 00031FC2 */  srl       $v1, $v1, 0x1f
/* 14FF8 80039BF8 00431021 */  addu      $v0, $v0, $v1
/* 14FFC 80039BFC 00021043 */  sra       $v0, $v0, 1
/* 15000 80039C00 44823000 */  mtc1      $v0, $f6
/* 15004 80039C04 00000000 */  nop
/* 15008 80039C08 468031A0 */  cvt.s.w   $f6, $f6
/* 1500C 80039C0C 27A20028 */  addiu     $v0, $sp, 0x28
/* 15010 80039C10 E7A00018 */  swc1      $f0, 0x18($sp)
/* 15014 80039C14 C600003C */  lwc1      $f0, 0x3c($s0)
/* 15018 80039C18 C6020040 */  lwc1      $f2, 0x40($s0)
/* 1501C 80039C1C 46060000 */  add.s     $f0, $f0, $f6
/* 15020 80039C20 E7A4002C */  swc1      $f4, 0x2c($sp)
/* 15024 80039C24 E7A20020 */  swc1      $f2, 0x20($sp)
/* 15028 80039C28 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 1502C 80039C2C AFA20010 */  sw        $v0, 0x10($sp)
/* 15030 80039C30 27A2002C */  addiu     $v0, $sp, 0x2c
/* 15034 80039C34 0C04497A */  jal       func_801125E8
/* 15038 80039C38 AFA20014 */   sw       $v0, 0x14($sp)
/* 1503C 80039C3C 860200A6 */  lh        $v0, 0xa6($s0)
/* 15040 80039C40 8FA5002C */  lw        $a1, 0x2c($sp)
/* 15044 80039C44 44824000 */  mtc1      $v0, $f8
/* 15048 80039C48 00000000 */  nop
/* 1504C 80039C4C 46804220 */  cvt.s.w   $f8, $f8
/* 15050 80039C50 44064000 */  mfc1      $a2, $f8
/* 15054 80039C54 0C044A40 */  jal       set_npc_shadow_scale
/* 15058 80039C58 0220202D */   daddu    $a0, $s1, $zero
/* 1505C 80039C5C C7A00018 */  lwc1      $f0, 0x18($sp)
/* 15060 80039C60 C7A2001C */  lwc1      $f2, 0x1c($sp)
/* 15064 80039C64 C7A40020 */  lwc1      $f4, 0x20($sp)
/* 15068 80039C68 C7A60024 */  lwc1      $f6, 0x24($sp)
/* 1506C 80039C6C E6200010 */  swc1      $f0, 0x10($s1)
/* 15070 80039C70 E6220014 */  swc1      $f2, 0x14($s1)
/* 15074 80039C74 E6240018 */  swc1      $f4, 0x18($s1)
/* 15078 80039C78 E6260028 */  swc1      $f6, 0x28($s1)
/* 1507C 80039C7C C6020034 */  lwc1      $f2, 0x34($s0)
/* 15080 80039C80 C7A00028 */  lwc1      $f0, 0x28($sp)
/* 15084 80039C84 E622002C */  swc1      $f2, 0x2c($s1)
/* 15088 80039C88 C622001C */  lwc1      $f2, 0x1c($s1)
/* 1508C 80039C8C E6200030 */  swc1      $f0, 0x30($s1)
/* 15090 80039C90 C600007C */  lwc1      $f0, 0x7c($s0)
/* 15094 80039C94 46001082 */  mul.s     $f2, $f2, $f0
/* 15098 80039C98 00000000 */  nop
/* 1509C 80039C9C 3C03FFFE */  lui       $v1, 0xfffe
/* 150A0 80039CA0 E622001C */  swc1      $f2, 0x1c($s1)
/* 150A4 80039CA4 8E020000 */  lw        $v0, ($s0)
/* 150A8 80039CA8 3463FFFF */  ori       $v1, $v1, 0xffff
/* 150AC 80039CAC 00431024 */  and       $v0, $v0, $v1
/* 150B0 80039CB0 0800E73A */  j         .L80039CE8
/* 150B4 80039CB4 AE020000 */   sw       $v0, ($s0)
.L80039CB8:
/* 150B8 80039CB8 30620400 */  andi      $v0, $v1, 0x400
/* 150BC 80039CBC 10400004 */  beqz      $v0, .L80039CD0
/* 150C0 80039CC0 00000000 */   nop
/* 150C4 80039CC4 C6000038 */  lwc1      $f0, 0x38($s0)
/* 150C8 80039CC8 0800E738 */  j         .L80039CE0
/* 150CC 80039CCC E6200010 */   swc1     $f0, 0x10($s1)
.L80039CD0:
/* 150D0 80039CD0 C6000038 */  lwc1      $f0, 0x38($s0)
/* 150D4 80039CD4 E6200010 */  swc1      $f0, 0x10($s1)
/* 150D8 80039CD8 C600003C */  lwc1      $f0, 0x3c($s0)
/* 150DC 80039CDC E6200014 */  swc1      $f0, 0x14($s1)
.L80039CE0:
/* 150E0 80039CE0 C6000040 */  lwc1      $f0, 0x40($s0)
/* 150E4 80039CE4 E6200018 */  swc1      $f0, 0x18($s1)
.L80039CE8:
/* 150E8 80039CE8 C6000038 */  lwc1      $f0, 0x38($s0)
/* 150EC 80039CEC C602003C */  lwc1      $f2, 0x3c($s0)
/* 150F0 80039CF0 C6040040 */  lwc1      $f4, 0x40($s0)
/* 150F4 80039CF4 0200202D */  daddu     $a0, $s0, $zero
/* 150F8 80039CF8 E600006C */  swc1      $f0, 0x6c($s0)
/* 150FC 80039CFC E6020070 */  swc1      $f2, 0x70($s0)
/* 15100 80039D00 0C00F111 */  jal       npc_update_decorations
/* 15104 80039D04 E6040074 */   swc1     $f4, 0x74($s0)
/* 15108 80039D08 8E030000 */  lw        $v1, ($s0)
/* 1510C 80039D0C 3C024000 */  lui       $v0, 0x4000
/* 15110 80039D10 00621024 */  and       $v0, $v1, $v0
/* 15114 80039D14 54400018 */  bnel      $v0, $zero, .L80039D78
/* 15118 80039D18 26520001 */   addiu    $s2, $s2, 1
/* 1511C 80039D1C 3C020100 */  lui       $v0, 0x100
/* 15120 80039D20 00621024 */  and       $v0, $v1, $v0
/* 15124 80039D24 54400014 */  bnel      $v0, $zero, .L80039D78
/* 15128 80039D28 26520001 */   addiu    $s2, $s2, 1
/* 1512C 80039D2C 8E030024 */  lw        $v1, 0x24($s0)
/* 15130 80039D30 04630011 */  bgezl     $v1, .L80039D78
/* 15134 80039D34 26520001 */   addiu    $s2, $s2, 1
/* 15138 80039D38 24630001 */  addiu     $v1, $v1, 1
/* 1513C 80039D3C 2402FFFF */  addiu     $v0, $zero, -1
/* 15140 80039D40 1462000C */  bne       $v1, $v0, .L80039D74
/* 15144 80039D44 AE030024 */   sw       $v1, 0x24($s0)
/* 15148 80039D48 8E040028 */  lw        $a0, 0x28($s0)
/* 1514C 80039D4C 0C0B783B */  jal       func_802DE0EC
/* 15150 80039D50 8E0500B0 */   lw       $a1, 0xb0($s0)
/* 15154 80039D54 04410003 */  bgez      $v0, .L80039D64
/* 15158 80039D58 AE020024 */   sw       $v0, 0x24($s0)
.L80039D5C:
/* 1515C 80039D5C 0800E757 */  j         .L80039D5C
/* 15160 80039D60 00000000 */   nop
.L80039D64:
/* 15164 80039D64 8E040024 */  lw        $a0, 0x24($s0)
/* 15168 80039D68 8E050028 */  lw        $a1, 0x28($s0)
/* 1516C 80039D6C 0C0B78AB */  jal       spr_update_sprite
/* 15170 80039D70 8E060030 */   lw       $a2, 0x30($s0)
.L80039D74:
/* 15174 80039D74 26520001 */  addiu     $s2, $s2, 1
.L80039D78:
/* 15178 80039D78 2A420040 */  slti      $v0, $s2, 0x40
/* 1517C 80039D7C 1440FF00 */  bnez      $v0, .L80039980
/* 15180 80039D80 00000000 */   nop
.L80039D84:
/* 15184 80039D84 8FBF0040 */  lw        $ra, 0x40($sp)
/* 15188 80039D88 8FB3003C */  lw        $s3, 0x3c($sp)
/* 1518C 80039D8C 8FB20038 */  lw        $s2, 0x38($sp)
/* 15190 80039D90 8FB10034 */  lw        $s1, 0x34($sp)
/* 15194 80039D94 8FB00030 */  lw        $s0, 0x30($sp)
/* 15198 80039D98 D7B40048 */  ldc1      $f20, 0x48($sp)
/* 1519C 80039D9C 03E00008 */  jr        $ra
/* 151A0 80039DA0 27BD0050 */   addiu    $sp, $sp, 0x50
