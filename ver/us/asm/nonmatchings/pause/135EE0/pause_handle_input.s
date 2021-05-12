.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel pause_handle_input
/* 137764 80244424 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 137768 80244428 AFB50044 */  sw        $s5, 0x44($sp)
/* 13776C 8024442C 0080A82D */  daddu     $s5, $a0, $zero
/* 137770 80244430 AFB60048 */  sw        $s6, 0x48($sp)
/* 137774 80244434 00A0B02D */  daddu     $s6, $a1, $zero
/* 137778 80244438 0000202D */  daddu     $a0, $zero, $zero
/* 13777C 8024443C 3C028027 */  lui       $v0, %hi(gPauseMenuCurrentTab)
/* 137780 80244440 804200D4 */  lb        $v0, %lo(gPauseMenuCurrentTab)($v0)
/* 137784 80244444 3C05F840 */  lui       $a1, 0xf840
/* 137788 80244448 AFB3003C */  sw        $s3, 0x3c($sp)
/* 13778C 8024444C 3C138027 */  lui       $s3, %hi(gPauseMenuCurrentDescString)
/* 137790 80244450 8E7300C8 */  lw        $s3, %lo(gPauseMenuCurrentDescString)($s3)
/* 137794 80244454 AFBF004C */  sw        $ra, 0x4c($sp)
/* 137798 80244458 AFB40040 */  sw        $s4, 0x40($sp)
/* 13779C 8024445C AFB20038 */  sw        $s2, 0x38($sp)
/* 1377A0 80244460 AFB10034 */  sw        $s1, 0x34($sp)
/* 1377A4 80244464 AFB00030 */  sw        $s0, 0x30($sp)
/* 1377A8 80244468 00021080 */  sll       $v0, $v0, 2
/* 1377AC 8024446C 3C148025 */  lui       $s4, %hi(D_8024EF80)
/* 1377B0 80244470 0282A021 */  addu      $s4, $s4, $v0
/* 1377B4 80244474 8E94EF80 */  lw        $s4, %lo(D_8024EF80)($s4)
/* 1377B8 80244478 0C0B1EAF */  jal       get_variable
/* 1377BC 8024447C 34A55BDE */   ori      $a1, $a1, 0x5bde
/* 1377C0 80244480 1040000F */  beqz      $v0, .L802444C0
/* 1377C4 80244484 0000802D */   daddu    $s0, $zero, $zero
/* 1377C8 80244488 3C128027 */  lui       $s2, %hi(D_8027011C)
/* 1377CC 8024448C 2652011C */  addiu     $s2, $s2, %lo(D_8027011C)
/* 1377D0 80244490 3C118025 */  lui       $s1, %hi(D_8024F0CC)
/* 1377D4 80244494 2631F0CC */  addiu     $s1, $s1, %lo(D_8024F0CC)
.L80244498:
/* 1377D8 80244498 8E440000 */  lw        $a0, ($s2)
/* 1377DC 8024449C 26520004 */  addiu     $s2, $s2, 4
/* 1377E0 802444A0 8E250004 */  lw        $a1, 4($s1)
/* 1377E4 802444A4 26310010 */  addiu     $s1, $s1, 0x10
/* 1377E8 802444A8 3C063F80 */  lui       $a2, 0x3f80
/* 1377EC 802444AC 0C0B78AB */  jal       spr_update_sprite
/* 1377F0 802444B0 26100001 */   addiu    $s0, $s0, 1
/* 1377F4 802444B4 2A020003 */  slti      $v0, $s0, 3
/* 1377F8 802444B8 1440FFF7 */  bnez      $v0, .L80244498
/* 1377FC 802444BC 00000000 */   nop
.L802444C0:
/* 137800 802444C0 0000202D */  daddu     $a0, $zero, $zero
/* 137804 802444C4 3C05F840 */  lui       $a1, 0xf840
/* 137808 802444C8 34A55BDE */  ori       $a1, $a1, 0x5bde
/* 13780C 802444CC 3C108027 */  lui       $s0, %hi(gPauseMenuPressedButtons)
/* 137810 802444D0 261000C4 */  addiu     $s0, $s0, %lo(gPauseMenuPressedButtons)
/* 137814 802444D4 3C118027 */  lui       $s1, %hi(gPauseMenuHeldButtons)
/* 137818 802444D8 263100C0 */  addiu     $s1, $s1, %lo(gPauseMenuHeldButtons)
/* 13781C 802444DC AE150000 */  sw        $s5, ($s0)
/* 137820 802444E0 0C0B1EAF */  jal       get_variable
/* 137824 802444E4 AE360000 */   sw       $s6, ($s1)
/* 137828 802444E8 10400003 */  beqz      $v0, .L802444F8
/* 13782C 802444EC 0200202D */   daddu    $a0, $s0, $zero
/* 137830 802444F0 0C0910A8 */  jal       pause_tutorial_input
/* 137834 802444F4 0220282D */   daddu    $a1, $s1, $zero
.L802444F8:
/* 137838 802444F8 8E040000 */  lw        $a0, ($s0)
/* 13783C 802444FC 30821000 */  andi      $v0, $a0, 0x1000
/* 137840 80244500 14400007 */  bnez      $v0, .L80244520
/* 137844 80244504 00000000 */   nop
/* 137848 80244508 3C028027 */  lui       $v0, %hi(gPauseMenuCurrentTab)
/* 13784C 8024450C 804200D4 */  lb        $v0, %lo(gPauseMenuCurrentTab)($v0)
/* 137850 80244510 1440000B */  bnez      $v0, .L80244540
/* 137854 80244514 30824000 */   andi     $v0, $a0, 0x4000
/* 137858 80244518 10400009 */  beqz      $v0, .L80244540
/* 13785C 8024451C 00000000 */   nop
.L80244520:
/* 137860 80244520 0C039E1B */  jal       enforce_hpfp_limits
/* 137864 80244524 00000000 */   nop
/* 137868 80244528 0C05272D */  jal       sfx_play_sound
/* 13786C 8024452C 240400C6 */   addiu    $a0, $zero, 0xc6
/* 137870 80244530 0C00CD3C */  jal       set_game_mode
/* 137874 80244534 2404000B */   addiu    $a0, $zero, 0xb
/* 137878 80244538 080911B8 */  j         .L802446E0
/* 13787C 8024453C 00000000 */   nop
.L80244540:
/* 137880 80244540 3C048027 */  lui       $a0, %hi(D_80270118)
/* 137884 80244544 24840118 */  addiu     $a0, $a0, %lo(D_80270118)
/* 137888 80244548 3C038027 */  lui       $v1, %hi(gPauseMenuCurrentDescIconScript)
/* 13788C 8024454C 8C6300CC */  lw        $v1, %lo(gPauseMenuCurrentDescIconScript)($v1)
/* 137890 80244550 8C820000 */  lw        $v0, ($a0)
/* 137894 80244554 54620001 */  bnel      $v1, $v0, .L8024455C
/* 137898 80244558 AC830000 */   sw       $v1, ($a0)
.L8024455C:
/* 13789C 8024455C 3C038027 */  lui       $v1, %hi(D_80270108)
/* 1378A0 80244560 24630108 */  addiu     $v1, $v1, %lo(D_80270108)
/* 1378A4 80244564 8C620000 */  lw        $v0, ($v1)
/* 1378A8 80244568 12620020 */  beq       $s3, $v0, .L802445EC
/* 1378AC 8024456C 00000000 */   nop
/* 1378B0 80244570 AC730000 */  sw        $s3, ($v1)
/* 1378B4 80244574 3C018027 */  lui       $at, %hi(D_80270110)
/* 1378B8 80244578 AC200110 */  sw        $zero, %lo(D_80270110)($at)
/* 1378BC 8024457C 3C018027 */  lui       $at, %hi(D_80270114)
/* 1378C0 80244580 AC200114 */  sw        $zero, %lo(D_80270114)($at)
/* 1378C4 80244584 12600017 */  beqz      $s3, .L802445E4
/* 1378C8 80244588 0260202D */   daddu    $a0, $s3, $zero
/* 1378CC 8024458C 27A50020 */  addiu     $a1, $sp, 0x20
/* 1378D0 80244590 27A60024 */  addiu     $a2, $sp, 0x24
/* 1378D4 80244594 27A2002C */  addiu     $v0, $sp, 0x2c
/* 1378D8 80244598 27A70028 */  addiu     $a3, $sp, 0x28
/* 1378DC 8024459C AFA20010 */  sw        $v0, 0x10($sp)
/* 1378E0 802445A0 AFA00014 */  sw        $zero, 0x14($sp)
/* 1378E4 802445A4 AFA00018 */  sw        $zero, 0x18($sp)
/* 1378E8 802445A8 0C0497DA */  jal       get_string_properties
/* 1378EC 802445AC AFA0001C */   sw       $zero, 0x1c($sp)
/* 1378F0 802445B0 8FA3002C */  lw        $v1, 0x2c($sp)
/* 1378F4 802445B4 30620001 */  andi      $v0, $v1, 1
/* 1378F8 802445B8 10400002 */  beqz      $v0, .L802445C4
/* 1378FC 802445BC 24620001 */   addiu    $v0, $v1, 1
/* 137900 802445C0 AFA2002C */  sw        $v0, 0x2c($sp)
.L802445C4:
/* 137904 802445C4 8FA2002C */  lw        $v0, 0x2c($sp)
/* 137908 802445C8 3C038027 */  lui       $v1, %hi(D_8027010C)
/* 13790C 802445CC 2463010C */  addiu     $v1, $v1, %lo(D_8027010C)
/* 137910 802445D0 2442FFFE */  addiu     $v0, $v0, -2
/* 137914 802445D4 04410005 */  bgez      $v0, .L802445EC
/* 137918 802445D8 AC620000 */   sw       $v0, ($v1)
/* 13791C 802445DC 0809117B */  j         .L802445EC
/* 137920 802445E0 AC600000 */   sw       $zero, ($v1)
.L802445E4:
/* 137924 802445E4 3C018027 */  lui       $at, %hi(D_8027010C)
/* 137928 802445E8 AC20010C */  sw        $zero, %lo(D_8027010C)($at)
.L802445EC:
/* 13792C 802445EC 3C028027 */  lui       $v0, %hi(gPauseMenuHeldButtons)
/* 137930 802445F0 8C4200C0 */  lw        $v0, %lo(gPauseMenuHeldButtons)($v0)
/* 137934 802445F4 30420008 */  andi      $v0, $v0, 8
/* 137938 802445F8 10400008 */  beqz      $v0, .L8024461C
/* 13793C 802445FC 00000000 */   nop
/* 137940 80244600 3C038027 */  lui       $v1, %hi(D_80270110)
/* 137944 80244604 24630110 */  addiu     $v1, $v1, %lo(D_80270110)
/* 137948 80244608 8C620000 */  lw        $v0, ($v1)
/* 13794C 8024460C 2442FFFE */  addiu     $v0, $v0, -2
/* 137950 80244610 04410002 */  bgez      $v0, .L8024461C
/* 137954 80244614 AC620000 */   sw       $v0, ($v1)
/* 137958 80244618 AC600000 */  sw        $zero, ($v1)
.L8024461C:
/* 13795C 8024461C 3C028027 */  lui       $v0, %hi(gPauseMenuHeldButtons)
/* 137960 80244620 8C4200C0 */  lw        $v0, %lo(gPauseMenuHeldButtons)($v0)
/* 137964 80244624 30420004 */  andi      $v0, $v0, 4
/* 137968 80244628 1040000B */  beqz      $v0, .L80244658
/* 13796C 8024462C 00000000 */   nop
/* 137970 80244630 3C038027 */  lui       $v1, %hi(D_80270110)
/* 137974 80244634 24630110 */  addiu     $v1, $v1, %lo(D_80270110)
/* 137978 80244638 8C620000 */  lw        $v0, ($v1)
/* 13797C 8024463C 3C048027 */  lui       $a0, %hi(D_8027010C)
/* 137980 80244640 8C84010C */  lw        $a0, %lo(D_8027010C)($a0)
/* 137984 80244644 24420002 */  addiu     $v0, $v0, 2
/* 137988 80244648 AC620000 */  sw        $v0, ($v1)
/* 13798C 8024464C 0082102A */  slt       $v0, $a0, $v0
/* 137990 80244650 54400001 */  bnel      $v0, $zero, .L80244658
/* 137994 80244654 AC640000 */   sw       $a0, ($v1)
.L80244658:
/* 137998 80244658 3C108027 */  lui       $s0, %hi(D_80270114)
/* 13799C 8024465C 26100114 */  addiu     $s0, $s0, %lo(D_80270114)
/* 1379A0 80244660 3C048027 */  lui       $a0, %hi(D_80270110)
/* 1379A4 80244664 8C840110 */  lw        $a0, %lo(D_80270110)($a0)
/* 1379A8 80244668 8E020000 */  lw        $v0, ($s0)
/* 1379AC 8024466C 00042100 */  sll       $a0, $a0, 4
/* 1379B0 80244670 0C090D06 */  jal       pause_interp_text_scroll
/* 1379B4 80244674 00822023 */   subu     $a0, $a0, $v0
/* 1379B8 80244678 8E030000 */  lw        $v1, ($s0)
/* 1379BC 8024467C 00621821 */  addu      $v1, $v1, $v0
/* 1379C0 80244680 AE030000 */  sw        $v1, ($s0)
/* 1379C4 80244684 92820000 */  lbu       $v0, ($s4)
/* 1379C8 80244688 10400006 */  beqz      $v0, .L802446A4
/* 1379CC 8024468C 00000000 */   nop
/* 1379D0 80244690 8E820010 */  lw        $v0, 0x10($s4)
/* 1379D4 80244694 10400003 */  beqz      $v0, .L802446A4
/* 1379D8 80244698 00000000 */   nop
/* 1379DC 8024469C 0040F809 */  jalr      $v0
/* 1379E0 802446A0 0280202D */   daddu    $a0, $s4, $zero
.L802446A4:
/* 1379E4 802446A4 3C118025 */  lui       $s1, %hi(D_8024EF80)
/* 1379E8 802446A8 2631EF80 */  addiu     $s1, $s1, %lo(D_8024EF80)
/* 1379EC 802446AC 0000802D */  daddu     $s0, $zero, $zero
.L802446B0:
/* 1379F0 802446B0 8E240000 */  lw        $a0, ($s1)
/* 1379F4 802446B4 90820000 */  lbu       $v0, ($a0)
/* 1379F8 802446B8 10400006 */  beqz      $v0, .L802446D4
/* 1379FC 802446BC 26100001 */   addiu    $s0, $s0, 1
/* 137A00 802446C0 8C820014 */  lw        $v0, 0x14($a0)
/* 137A04 802446C4 10400003 */  beqz      $v0, .L802446D4
/* 137A08 802446C8 00000000 */   nop
/* 137A0C 802446CC 0040F809 */  jalr      $v0
/* 137A10 802446D0 00000000 */   nop
.L802446D4:
/* 137A14 802446D4 2A020007 */  slti      $v0, $s0, 7
/* 137A18 802446D8 1440FFF5 */  bnez      $v0, .L802446B0
/* 137A1C 802446DC 26310004 */   addiu    $s1, $s1, 4
.L802446E0:
/* 137A20 802446E0 8FBF004C */  lw        $ra, 0x4c($sp)
/* 137A24 802446E4 8FB60048 */  lw        $s6, 0x48($sp)
/* 137A28 802446E8 8FB50044 */  lw        $s5, 0x44($sp)
/* 137A2C 802446EC 8FB40040 */  lw        $s4, 0x40($sp)
/* 137A30 802446F0 8FB3003C */  lw        $s3, 0x3c($sp)
/* 137A34 802446F4 8FB20038 */  lw        $s2, 0x38($sp)
/* 137A38 802446F8 8FB10034 */  lw        $s1, 0x34($sp)
/* 137A3C 802446FC 8FB00030 */  lw        $s0, 0x30($sp)
/* 137A40 80244700 03E00008 */  jr        $ra
/* 137A44 80244704 27BD0050 */   addiu    $sp, $sp, 0x50
