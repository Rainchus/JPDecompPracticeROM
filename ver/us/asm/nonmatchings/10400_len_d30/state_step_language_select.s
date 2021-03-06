.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel state_step_language_select
/* 105C8 800351C8 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 105CC 800351CC AFB10014 */  sw        $s1, 0x14($sp)
/* 105D0 800351D0 3C11800A */  lui       $s1, %hi(D_800A0931)
/* 105D4 800351D4 26310931 */  addiu     $s1, $s1, %lo(D_800A0931)
/* 105D8 800351D8 AFBF0020 */  sw        $ra, 0x20($sp)
/* 105DC 800351DC AFB3001C */  sw        $s3, 0x1c($sp)
/* 105E0 800351E0 AFB20018 */  sw        $s2, 0x18($sp)
/* 105E4 800351E4 AFB00010 */  sw        $s0, 0x10($sp)
/* 105E8 800351E8 82230000 */  lb        $v1, ($s1)
/* 105EC 800351EC 24120001 */  addiu     $s2, $zero, 1
/* 105F0 800351F0 10720030 */  beq       $v1, $s2, .L800352B4
/* 105F4 800351F4 28620002 */   slti     $v0, $v1, 2
/* 105F8 800351F8 10400005 */  beqz      $v0, .L80035210
/* 105FC 800351FC 24130002 */   addiu    $s3, $zero, 2
/* 10600 80035200 10600009 */  beqz      $v1, .L80035228
/* 10604 80035204 00000000 */   nop
/* 10608 80035208 0800D534 */  j         .L800354D0
/* 1060C 8003520C 00000000 */   nop
.L80035210:
/* 10610 80035210 10730033 */  beq       $v1, $s3, .L800352E0
/* 10614 80035214 24020003 */   addiu    $v0, $zero, 3
/* 10618 80035218 10620055 */  beq       $v1, $v0, .L80035370
/* 1061C 8003521C 00000000 */   nop
/* 10620 80035220 0800D534 */  j         .L800354D0
/* 10624 80035224 00000000 */   nop
.L80035228:
/* 10628 80035228 0C037DD0 */  jal       update_player
/* 1062C 8003522C 00000000 */   nop
/* 10630 80035230 0C00E64C */  jal       npc_list_update
/* 10634 80035234 00000000 */   nop
/* 10638 80035238 0C00F949 */  jal       update_counters
/* 1063C 8003523C 00000000 */   nop
/* 10640 80035240 0C016754 */  jal       update_effects
/* 10644 80035244 00000000 */   nop
/* 10648 80035248 3C10800A */  lui       $s0, %hi(D_800A0932)
/* 1064C 8003524C 26100932 */  addiu     $s0, $s0, %lo(D_800A0932)
/* 10650 80035250 86020000 */  lh        $v0, ($s0)
/* 10654 80035254 96030000 */  lhu       $v1, ($s0)
/* 10658 80035258 284200FF */  slti      $v0, $v0, 0xff
/* 1065C 8003525C 10400013 */  beqz      $v0, .L800352AC
/* 10660 80035260 24620014 */   addiu    $v0, $v1, 0x14
/* 10664 80035264 A6020000 */  sh        $v0, ($s0)
/* 10668 80035268 00021400 */  sll       $v0, $v0, 0x10
/* 1066C 8003526C 00021403 */  sra       $v0, $v0, 0x10
/* 10670 80035270 28420100 */  slti      $v0, $v0, 0x100
/* 10674 80035274 14400002 */  bnez      $v0, .L80035280
/* 10678 80035278 240200FF */   addiu    $v0, $zero, 0xff
/* 1067C 8003527C A6020000 */  sh        $v0, ($s0)
.L80035280:
/* 10680 80035280 86020000 */  lh        $v0, ($s0)
/* 10684 80035284 44820000 */  mtc1      $v0, $f0
/* 10688 80035288 00000000 */  nop
/* 1068C 8003528C 46800020 */  cvt.s.w   $f0, $f0
/* 10690 80035290 44050000 */  mfc1      $a1, $f0
/* 10694 80035294 0C04DF62 */  jal       set_transition_stencil_zoom_0
/* 10698 80035298 0000202D */   daddu    $a0, $zero, $zero
/* 1069C 8003529C 86030000 */  lh        $v1, ($s0)
/* 106A0 800352A0 240200FF */  addiu     $v0, $zero, 0xff
/* 106A4 800352A4 1462008A */  bne       $v1, $v0, .L800354D0
/* 106A8 800352A8 00000000 */   nop
.L800352AC:
/* 106AC 800352AC 0800D534 */  j         .L800354D0
/* 106B0 800352B0 A2320000 */   sb       $s2, ($s1)
.L800352B4:
/* 106B4 800352B4 24020005 */  addiu     $v0, $zero, 5
/* 106B8 800352B8 3C04800A */  lui       $a0, %hi(gOverrideFlags)
/* 106BC 800352BC 2484A650 */  addiu     $a0, $a0, %lo(gOverrideFlags)
/* 106C0 800352C0 3C01800A */  lui       $at, %hi(D_800A0930)
/* 106C4 800352C4 A0220930 */  sb        $v0, %lo(D_800A0930)($at)
/* 106C8 800352C8 8C820000 */  lw        $v0, ($a0)
/* 106CC 800352CC 24030002 */  addiu     $v1, $zero, 2
/* 106D0 800352D0 A2230000 */  sb        $v1, ($s1)
/* 106D4 800352D4 34420008 */  ori       $v0, $v0, 8
/* 106D8 800352D8 0800D534 */  j         .L800354D0
/* 106DC 800352DC AC820000 */   sw       $v0, ($a0)
.L800352E0:
/* 106E0 800352E0 3C10800A */  lui       $s0, %hi(D_800A0930)
/* 106E4 800352E4 26100930 */  addiu     $s0, $s0, %lo(D_800A0930)
/* 106E8 800352E8 92020000 */  lbu       $v0, ($s0)
/* 106EC 800352EC 2442FFFF */  addiu     $v0, $v0, -1
/* 106F0 800352F0 A2020000 */  sb        $v0, ($s0)
/* 106F4 800352F4 00021600 */  sll       $v0, $v0, 0x18
/* 106F8 800352F8 14400075 */  bnez      $v0, .L800354D0
/* 106FC 800352FC 00000000 */   nop
/* 10700 80035300 3C048007 */  lui       $a0, %hi(D_80077980)
/* 10704 80035304 24847980 */  addiu     $a0, $a0, %lo(D_80077980)
/* 10708 80035308 0C017CBC */  jal       nuGfxSetCfb
/* 1070C 8003530C 24050002 */   addiu    $a1, $zero, 2
/* 10710 80035310 3C02800A */  lui       $v0, %hi(D_8009A658)
/* 10714 80035314 8C42A658 */  lw        $v0, %lo(D_8009A658)($v0)
/* 10718 80035318 8C430008 */  lw        $v1, 8($v0)
/* 1071C 8003531C 3C02800A */  lui       $v0, %hi(D_8009A64C)
/* 10720 80035320 8C42A64C */  lw        $v0, %lo(D_8009A64C)($v0)
/* 10724 80035324 14620008 */  bne       $v1, $v0, .L80035348
/* 10728 80035328 24040003 */   addiu    $a0, $zero, 3
/* 1072C 8003532C 3C02800A */  lui       $v0, %hi(gOverrideFlags)
/* 10730 80035330 2442A650 */  addiu     $v0, $v0, %lo(gOverrideFlags)
/* 10734 80035334 8C430000 */  lw        $v1, ($v0)
/* 10738 80035338 2404FFF7 */  addiu     $a0, $zero, -9
/* 1073C 8003533C 00641824 */  and       $v1, $v1, $a0
/* 10740 80035340 0800D534 */  j         .L800354D0
/* 10744 80035344 AC430000 */   sw       $v1, ($v0)
.L80035348:
/* 10748 80035348 3C02800A */  lui       $v0, %hi(gOverrideFlags)
/* 1074C 8003534C 2442A650 */  addiu     $v0, $v0, %lo(gOverrideFlags)
/* 10750 80035350 8C430000 */  lw        $v1, ($v0)
/* 10754 80035354 34630008 */  ori       $v1, $v1, 8
/* 10758 80035358 0C051FB1 */  jal       set_windows_visible
/* 1075C 8003535C AC430000 */   sw       $v1, ($v0)
/* 10760 80035360 24020003 */  addiu     $v0, $zero, 3
/* 10764 80035364 A2120000 */  sb        $s2, ($s0)
/* 10768 80035368 0800D534 */  j         .L800354D0
/* 1076C 8003536C A2220000 */   sb       $v0, ($s1)
.L80035370:
/* 10770 80035370 3C10800A */  lui       $s0, %hi(D_800A0930)
/* 10774 80035374 26100930 */  addiu     $s0, $s0, %lo(D_800A0930)
/* 10778 80035378 82020000 */  lb        $v0, ($s0)
/* 1077C 8003537C 92030000 */  lbu       $v1, ($s0)
/* 10780 80035380 04400042 */  bltz      $v0, .L8003548C
/* 10784 80035384 2462FFFF */   addiu    $v0, $v1, -1
/* 10788 80035388 A2020000 */  sb        $v0, ($s0)
/* 1078C 8003538C 00021600 */  sll       $v0, $v0, 0x18
/* 10790 80035390 1440003B */  bnez      $v0, .L80035480
/* 10794 80035394 2402FFFF */   addiu    $v0, $zero, -1
/* 10798 80035398 0C05260E */  jal       sfx_stop_env_sounds
/* 1079C 8003539C A2020000 */   sb       $v0, ($s0)
/* 107A0 800353A0 0C00EC6A */  jal       func_8003B1A8
/* 107A4 800353A4 00000000 */   nop
/* 107A8 800353A8 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 107AC 800353AC 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 107B0 800353B0 0C016BA8 */  jal       allocate_hit_tables
/* 107B4 800353B4 A0530070 */   sb       $s3, 0x70($v0)
/* 107B8 800353B8 0C00AB28 */  jal       battle_heap_create
/* 107BC 800353BC 00000000 */   nop
/* 107C0 800353C0 0C05259C */  jal       func_80149670
/* 107C4 800353C4 0000202D */   daddu    $a0, $zero, $zero
/* 107C8 800353C8 0C0B763E */  jal       spr_init_sprites
/* 107CC 800353CC 0000202D */   daddu    $a0, $zero, $zero
/* 107D0 800353D0 0C045751 */  jal       clear_model_data
/* 107D4 800353D4 00000000 */   nop
/* 107D8 800353D8 0C052010 */  jal       func_80148040
/* 107DC 800353DC 00000000 */   nop
/* 107E0 800353E0 0C05177E */  jal       use_default_background_settings
/* 107E4 800353E4 00000000 */   nop
/* 107E8 800353E8 0C0482EC */  jal       clear_entity_models
/* 107EC 800353EC 00000000 */   nop
/* 107F0 800353F0 0C047889 */  jal       func_8011E224
/* 107F4 800353F4 00000000 */   nop
/* 107F8 800353F8 0C048C2E */  jal       clear_dynamic_entity_list
/* 107FC 800353FC 00000000 */   nop
/* 10800 80035400 3C048020 */  lui       $a0, %hi(func_80200000)
/* 10804 80035404 24840000 */  addiu     $a0, $a0, %lo(func_80200000)
/* 10808 80035408 0C0514BA */  jal       func_801452E8
/* 1080C 8003540C 3C050002 */   lui      $a1, 2
/* 10810 80035410 0C050440 */  jal       func_80141100
/* 10814 80035414 00000000 */   nop
/* 10818 80035418 0C03A6EC */  jal       reset_status_menu
/* 1081C 8003541C 00000000 */   nop
/* 10820 80035420 0C04C3FC */  jal       clear_item_entity_data
/* 10824 80035424 00000000 */   nop
/* 10828 80035428 0C0B0C77 */  jal       clear_script_list
/* 1082C 8003542C 00000000 */   nop
/* 10830 80035430 0C00E12F */  jal       npc_list_clear
/* 10834 80035434 00000000 */   nop
/* 10838 80035438 0C04432E */  jal       clear_entity_data
/* 1083C 8003543C 0000202D */   daddu    $a0, $zero, $zero
/* 10840 80035440 0C0515A0 */  jal       clear_trigger_data
/* 10844 80035444 00000000 */   nop
/* 10848 80035448 3C048007 */  lui       $a0, %hi(D_8007798C)
/* 1084C 8003544C 0C018038 */  jal       nuPiReadRomOverlay
/* 10850 80035450 2484798C */   addiu    $a0, $a0, %lo(D_8007798C)
/* 10854 80035454 0C091238 */  jal       func_802448E0
/* 10858 80035458 24040001 */   addiu    $a0, $zero, 1
/* 1085C 8003545C 240400FF */  addiu     $a0, $zero, 0xff
/* 10860 80035460 3C06800A */  lui       $a2, %hi(gOverrideFlags)
/* 10864 80035464 24C6A650 */  addiu     $a2, $a2, %lo(gOverrideFlags)
/* 10868 80035468 2403FFF7 */  addiu     $v1, $zero, -9
/* 1086C 8003546C 8CC20000 */  lw        $v0, ($a2)
/* 10870 80035470 3C05437F */  lui       $a1, 0x437f
/* 10874 80035474 00431024 */  and       $v0, $v0, $v1
/* 10878 80035478 0C04DF62 */  jal       set_transition_stencil_zoom_0
/* 1087C 8003547C ACC20000 */   sw       $v0, ($a2)
.L80035480:
/* 10880 80035480 82020000 */  lb        $v0, ($s0)
/* 10884 80035484 04410012 */  bgez      $v0, .L800354D0
/* 10888 80035488 00000000 */   nop
.L8003548C:
/* 1088C 8003548C 0C090C68 */  jal       func_802431A0
/* 10890 80035490 00000000 */   nop
/* 10894 80035494 3C03800A */  lui       $v1, %hi(D_800A0932)
/* 10898 80035498 24630932 */  addiu     $v1, $v1, %lo(D_800A0932)
/* 1089C 8003549C 94620000 */  lhu       $v0, ($v1)
/* 108A0 800354A0 2442FFEC */  addiu     $v0, $v0, -0x14
/* 108A4 800354A4 A4620000 */  sh        $v0, ($v1)
/* 108A8 800354A8 00021400 */  sll       $v0, $v0, 0x10
/* 108AC 800354AC 04420001 */  bltzl     $v0, .L800354B4
/* 108B0 800354B0 A4600000 */   sh       $zero, ($v1)
.L800354B4:
/* 108B4 800354B4 84620000 */  lh        $v0, ($v1)
/* 108B8 800354B8 44820000 */  mtc1      $v0, $f0
/* 108BC 800354BC 00000000 */  nop
/* 108C0 800354C0 46800020 */  cvt.s.w   $f0, $f0
/* 108C4 800354C4 44050000 */  mfc1      $a1, $f0
/* 108C8 800354C8 0C04DF62 */  jal       set_transition_stencil_zoom_0
/* 108CC 800354CC 0000202D */   daddu    $a0, $zero, $zero
.L800354D0:
/* 108D0 800354D0 8FBF0020 */  lw        $ra, 0x20($sp)
/* 108D4 800354D4 8FB3001C */  lw        $s3, 0x1c($sp)
/* 108D8 800354D8 8FB20018 */  lw        $s2, 0x18($sp)
/* 108DC 800354DC 8FB10014 */  lw        $s1, 0x14($sp)
/* 108E0 800354E0 8FB00010 */  lw        $s0, 0x10($sp)
/* 108E4 800354E4 03E00008 */  jr        $ra
/* 108E8 800354E8 27BD0028 */   addiu    $sp, $sp, 0x28
