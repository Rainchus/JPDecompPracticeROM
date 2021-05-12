.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802406A4_A52F64
/* A52F64 802406A4 27BDFF90 */  addiu     $sp, $sp, -0x70
/* A52F68 802406A8 AFB3005C */  sw        $s3, 0x5c($sp)
/* A52F6C 802406AC 0080982D */  daddu     $s3, $a0, $zero
/* A52F70 802406B0 AFBF0068 */  sw        $ra, 0x68($sp)
/* A52F74 802406B4 AFB50064 */  sw        $s5, 0x64($sp)
/* A52F78 802406B8 AFB40060 */  sw        $s4, 0x60($sp)
/* A52F7C 802406BC AFB20058 */  sw        $s2, 0x58($sp)
/* A52F80 802406C0 AFB10054 */  sw        $s1, 0x54($sp)
/* A52F84 802406C4 AFB00050 */  sw        $s0, 0x50($sp)
/* A52F88 802406C8 8E710148 */  lw        $s1, 0x148($s3)
/* A52F8C 802406CC 86240008 */  lh        $a0, 8($s1)
/* A52F90 802406D0 0C00EABB */  jal       get_npc_unsafe
/* A52F94 802406D4 00A0802D */   daddu    $s0, $a1, $zero
/* A52F98 802406D8 8E63000C */  lw        $v1, 0xc($s3)
/* A52F9C 802406DC 0260202D */  daddu     $a0, $s3, $zero
/* A52FA0 802406E0 8C650000 */  lw        $a1, ($v1)
/* A52FA4 802406E4 0C0B1EAF */  jal       get_variable
/* A52FA8 802406E8 0040902D */   daddu    $s2, $v0, $zero
/* A52FAC 802406EC AFA00028 */  sw        $zero, 0x28($sp)
/* A52FB0 802406F0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A52FB4 802406F4 8C630030 */  lw        $v1, 0x30($v1)
/* A52FB8 802406F8 AFA3002C */  sw        $v1, 0x2c($sp)
/* A52FBC 802406FC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A52FC0 80240700 8C63001C */  lw        $v1, 0x1c($v1)
/* A52FC4 80240704 AFA30030 */  sw        $v1, 0x30($sp)
/* A52FC8 80240708 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A52FCC 8024070C 8C630024 */  lw        $v1, 0x24($v1)
/* A52FD0 80240710 AFA30034 */  sw        $v1, 0x34($sp)
/* A52FD4 80240714 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A52FD8 80240718 8C630028 */  lw        $v1, 0x28($v1)
/* A52FDC 8024071C 27B50028 */  addiu     $s5, $sp, 0x28
/* A52FE0 80240720 AFA30038 */  sw        $v1, 0x38($sp)
/* A52FE4 80240724 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A52FE8 80240728 3C0142C8 */  lui       $at, 0x42c8
/* A52FEC 8024072C 44810000 */  mtc1      $at, $f0
/* A52FF0 80240730 8C63002C */  lw        $v1, 0x2c($v1)
/* A52FF4 80240734 0040A02D */  daddu     $s4, $v0, $zero
/* A52FF8 80240738 E7A00040 */  swc1      $f0, 0x40($sp)
/* A52FFC 8024073C A7A00044 */  sh        $zero, 0x44($sp)
/* A53000 80240740 12000009 */  beqz      $s0, .L80240768
/* A53004 80240744 AFA3003C */   sw       $v1, 0x3c($sp)
/* A53008 80240748 864300A8 */  lh        $v1, 0xa8($s2)
/* A5300C 8024074C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A53010 80240750 AE20008C */  sw        $zero, 0x8c($s1)
/* A53014 80240754 A22000B5 */  sb        $zero, 0xb5($s1)
/* A53018 80240758 34420008 */  ori       $v0, $v0, 8
/* A5301C 8024075C AE230084 */  sw        $v1, 0x84($s1)
/* A53020 80240760 080901DE */  j         .L80240778
/* A53024 80240764 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240768:
/* A53028 80240768 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A5302C 8024076C 30420004 */  andi      $v0, $v0, 4
/* A53030 80240770 10400047 */  beqz      $v0, .L80240890
/* A53034 80240774 00000000 */   nop
.L80240778:
/* A53038 80240778 AE600070 */  sw        $zero, 0x70($s3)
/* A5303C 8024077C A640008E */  sh        $zero, 0x8e($s2)
/* A53040 80240780 8E2300CC */  lw        $v1, 0xcc($s1)
/* A53044 80240784 2404F7FF */  addiu     $a0, $zero, -0x801
/* A53048 80240788 A2200007 */  sb        $zero, 7($s1)
/* A5304C 8024078C 8E420000 */  lw        $v0, ($s2)
/* A53050 80240790 8C630000 */  lw        $v1, ($v1)
/* A53054 80240794 00441024 */  and       $v0, $v0, $a0
/* A53058 80240798 AE420000 */  sw        $v0, ($s2)
/* A5305C 8024079C AE430028 */  sw        $v1, 0x28($s2)
/* A53060 802407A0 96220086 */  lhu       $v0, 0x86($s1)
/* A53064 802407A4 A64200A8 */  sh        $v0, 0xa8($s2)
/* A53068 802407A8 8E2200D0 */  lw        $v0, 0xd0($s1)
/* A5306C 802407AC AE200090 */  sw        $zero, 0x90($s1)
/* A53070 802407B0 8C420034 */  lw        $v0, 0x34($v0)
/* A53074 802407B4 14400006 */  bnez      $v0, .L802407D0
/* A53078 802407B8 2403FDFF */   addiu    $v1, $zero, -0x201
/* A5307C 802407BC 8E420000 */  lw        $v0, ($s2)
/* A53080 802407C0 2403FFF7 */  addiu     $v1, $zero, -9
/* A53084 802407C4 34420200 */  ori       $v0, $v0, 0x200
/* A53088 802407C8 080901F7 */  j         .L802407DC
/* A5308C 802407CC 00431024 */   and      $v0, $v0, $v1
.L802407D0:
/* A53090 802407D0 8E420000 */  lw        $v0, ($s2)
/* A53094 802407D4 00431024 */  and       $v0, $v0, $v1
/* A53098 802407D8 34420008 */  ori       $v0, $v0, 8
.L802407DC:
/* A5309C 802407DC AE420000 */  sw        $v0, ($s2)
/* A530A0 802407E0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A530A4 802407E4 30420004 */  andi      $v0, $v0, 4
/* A530A8 802407E8 1040001E */  beqz      $v0, .L80240864
/* A530AC 802407EC 24040002 */   addiu    $a0, $zero, 2
/* A530B0 802407F0 0240282D */  daddu     $a1, $s2, $zero
/* A530B4 802407F4 0000302D */  daddu     $a2, $zero, $zero
/* A530B8 802407F8 24020063 */  addiu     $v0, $zero, 0x63
/* A530BC 802407FC AE620070 */  sw        $v0, 0x70($s3)
/* A530C0 80240800 AE600074 */  sw        $zero, 0x74($s3)
/* A530C4 80240804 864300A8 */  lh        $v1, 0xa8($s2)
/* A530C8 80240808 3C013F80 */  lui       $at, 0x3f80
/* A530CC 8024080C 44810000 */  mtc1      $at, $f0
/* A530D0 80240810 3C014000 */  lui       $at, 0x4000
/* A530D4 80240814 44811000 */  mtc1      $at, $f2
/* A530D8 80240818 3C01C1A0 */  lui       $at, 0xc1a0
/* A530DC 8024081C 44812000 */  mtc1      $at, $f4
/* A530E0 80240820 24020028 */  addiu     $v0, $zero, 0x28
/* A530E4 80240824 AFA2001C */  sw        $v0, 0x1c($sp)
/* A530E8 80240828 44833000 */  mtc1      $v1, $f6
/* A530EC 8024082C 00000000 */  nop
/* A530F0 80240830 468031A0 */  cvt.s.w   $f6, $f6
/* A530F4 80240834 44073000 */  mfc1      $a3, $f6
/* A530F8 80240838 27A20048 */  addiu     $v0, $sp, 0x48
/* A530FC 8024083C AFA20020 */  sw        $v0, 0x20($sp)
/* A53100 80240840 E7A00010 */  swc1      $f0, 0x10($sp)
/* A53104 80240844 E7A20014 */  swc1      $f2, 0x14($sp)
/* A53108 80240848 0C01BFA4 */  jal       fx_emote
/* A5310C 8024084C E7A40018 */   swc1     $f4, 0x18($sp)
/* A53110 80240850 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A53114 80240854 2403FFFB */  addiu     $v1, $zero, -5
/* A53118 80240858 00431024 */  and       $v0, $v0, $v1
/* A5311C 8024085C 08090224 */  j         .L80240890
/* A53120 80240860 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240864:
/* A53124 80240864 8E220000 */  lw        $v0, ($s1)
/* A53128 80240868 3C034000 */  lui       $v1, 0x4000
/* A5312C 8024086C 00431024 */  and       $v0, $v0, $v1
/* A53130 80240870 10400007 */  beqz      $v0, .L80240890
/* A53134 80240874 3C03BFFF */   lui      $v1, 0xbfff
/* A53138 80240878 2402000C */  addiu     $v0, $zero, 0xc
/* A5313C 8024087C AE620070 */  sw        $v0, 0x70($s3)
/* A53140 80240880 8E220000 */  lw        $v0, ($s1)
/* A53144 80240884 3463FFFF */  ori       $v1, $v1, 0xffff
/* A53148 80240888 00431024 */  and       $v0, $v0, $v1
/* A5314C 8024088C AE220000 */  sw        $v0, ($s1)
.L80240890:
/* A53150 80240890 8E220090 */  lw        $v0, 0x90($s1)
/* A53154 80240894 1840000C */  blez      $v0, .L802408C8
/* A53158 80240898 2442FFFF */   addiu    $v0, $v0, -1
/* A5315C 8024089C 14400087 */  bnez      $v0, L80240ABC_A5337C
/* A53160 802408A0 AE220090 */   sw       $v0, 0x90($s1)
/* A53164 802408A4 3C03FFAA */  lui       $v1, 0xffaa
/* A53168 802408A8 8E420028 */  lw        $v0, 0x28($s2)
/* A5316C 802408AC 3463FFD2 */  ori       $v1, $v1, 0xffd2
/* A53170 802408B0 00431021 */  addu      $v0, $v0, $v1
/* A53174 802408B4 2C420002 */  sltiu     $v0, $v0, 2
/* A53178 802408B8 10400003 */  beqz      $v0, .L802408C8
/* A5317C 802408BC 3C020055 */   lui      $v0, 0x55
/* A53180 802408C0 3442000C */  ori       $v0, $v0, 0xc
/* A53184 802408C4 AE420028 */  sw        $v0, 0x28($s2)
.L802408C8:
/* A53188 802408C8 8E630070 */  lw        $v1, 0x70($s3)
/* A5318C 802408CC 2402000C */  addiu     $v0, $zero, 0xc
/* A53190 802408D0 10620048 */  beq       $v1, $v0, .L802409F4
/* A53194 802408D4 2862000D */   slti     $v0, $v1, 0xd
/* A53198 802408D8 1040000F */  beqz      $v0, .L80240918
/* A5319C 802408DC 24100001 */   addiu    $s0, $zero, 1
/* A531A0 802408E0 1070001E */  beq       $v1, $s0, .L8024095C
/* A531A4 802408E4 28620002 */   slti     $v0, $v1, 2
/* A531A8 802408E8 10400005 */  beqz      $v0, .L80240900
/* A531AC 802408EC 24020002 */   addiu    $v0, $zero, 2
/* A531B0 802408F0 10600015 */  beqz      $v1, .L80240948
/* A531B4 802408F4 0260202D */   daddu    $a0, $s3, $zero
/* A531B8 802408F8 08090294 */  j         .L80240A50
/* A531BC 802408FC 00000000 */   nop
.L80240900:
/* A531C0 80240900 1062001C */  beq       $v1, $v0, .L80240974
/* A531C4 80240904 24020003 */   addiu    $v0, $zero, 3
/* A531C8 80240908 10620035 */  beq       $v1, $v0, .L802409E0
/* A531CC 8024090C 0260202D */   daddu    $a0, $s3, $zero
/* A531D0 80240910 08090294 */  j         .L80240A50
/* A531D4 80240914 00000000 */   nop
.L80240918:
/* A531D8 80240918 2402000E */  addiu     $v0, $zero, 0xe
/* A531DC 8024091C 1062003F */  beq       $v1, $v0, .L80240A1C
/* A531E0 80240920 0062102A */   slt      $v0, $v1, $v0
/* A531E4 80240924 14400038 */  bnez      $v0, .L80240A08
/* A531E8 80240928 0260202D */   daddu    $a0, $s3, $zero
/* A531EC 8024092C 2402000F */  addiu     $v0, $zero, 0xf
/* A531F0 80240930 10620040 */  beq       $v1, $v0, .L80240A34
/* A531F4 80240934 24020063 */   addiu    $v0, $zero, 0x63
/* A531F8 80240938 10620043 */  beq       $v1, $v0, .L80240A48
/* A531FC 8024093C 00000000 */   nop
/* A53200 80240940 08090294 */  j         .L80240A50
/* A53204 80240944 00000000 */   nop
.L80240948:
/* A53208 80240948 0280282D */  daddu     $a1, $s4, $zero
/* A5320C 8024094C 0C012568 */  jal       func_800495A0
/* A53210 80240950 02A0302D */   daddu    $a2, $s5, $zero
/* A53214 80240954 96220086 */  lhu       $v0, 0x86($s1)
/* A53218 80240958 A64200A8 */  sh        $v0, 0xa8($s2)
.L8024095C:
/* A5321C 8024095C 0260202D */  daddu     $a0, $s3, $zero
/* A53220 80240960 0280282D */  daddu     $a1, $s4, $zero
/* A53224 80240964 0C0125AE */  jal       func_800496B8
/* A53228 80240968 02A0302D */   daddu    $a2, $s5, $zero
/* A5322C 8024096C 08090294 */  j         .L80240A50
/* A53230 80240970 00000000 */   nop
.L80240974:
/* A53234 80240974 0260202D */  daddu     $a0, $s3, $zero
/* A53238 80240978 0280282D */  daddu     $a1, $s4, $zero
/* A5323C 8024097C 0C0126D1 */  jal       base_UnkNpcAIFunc1
/* A53240 80240980 02A0302D */   daddu    $a2, $s5, $zero
/* A53244 80240984 8E230088 */  lw        $v1, 0x88($s1)
/* A53248 80240988 24020006 */  addiu     $v0, $zero, 6
/* A5324C 8024098C 14620014 */  bne       $v1, $v0, .L802409E0
/* A53250 80240990 0260202D */   daddu    $a0, $s3, $zero
/* A53254 80240994 0C00A67F */  jal       rand_int
/* A53258 80240998 24040064 */   addiu    $a0, $zero, 0x64
/* A5325C 8024099C 28420021 */  slti      $v0, $v0, 0x21
/* A53260 802409A0 5040000F */  beql      $v0, $zero, .L802409E0
/* A53264 802409A4 0260202D */   daddu    $a0, $s3, $zero
/* A53268 802409A8 8E22008C */  lw        $v0, 0x8c($s1)
/* A5326C 802409AC 10400005 */  beqz      $v0, .L802409C4
/* A53270 802409B0 3C020055 */   lui      $v0, 0x55
/* A53274 802409B4 3442002F */  ori       $v0, $v0, 0x2f
/* A53278 802409B8 AE20008C */  sw        $zero, 0x8c($s1)
/* A5327C 802409BC 08090274 */  j         .L802409D0
/* A53280 802409C0 A22000B5 */   sb       $zero, 0xb5($s1)
.L802409C4:
/* A53284 802409C4 3442002E */  ori       $v0, $v0, 0x2e
/* A53288 802409C8 AE30008C */  sw        $s0, 0x8c($s1)
/* A5328C 802409CC A23000B5 */  sb        $s0, 0xb5($s1)
.L802409D0:
/* A53290 802409D0 AE420028 */  sw        $v0, 0x28($s2)
/* A53294 802409D4 24020007 */  addiu     $v0, $zero, 7
/* A53298 802409D8 080902AF */  j         L80240ABC_A5337C
/* A5329C 802409DC AE220090 */   sw       $v0, 0x90($s1)
.L802409E0:
/* A532A0 802409E0 0280282D */  daddu     $a1, $s4, $zero
/* A532A4 802409E4 0C012701 */  jal       func_80049C04
/* A532A8 802409E8 02A0302D */   daddu    $a2, $s5, $zero
/* A532AC 802409EC 08090294 */  j         .L80240A50
/* A532B0 802409F0 00000000 */   nop
.L802409F4:
/* A532B4 802409F4 0260202D */  daddu     $a0, $s3, $zero
/* A532B8 802409F8 0280282D */  daddu     $a1, $s4, $zero
/* A532BC 802409FC 0C0900C4 */  jal       kpa_11_set_script_owner_npc_anim
/* A532C0 80240A00 02A0302D */   daddu    $a2, $s5, $zero
/* A532C4 80240A04 0260202D */  daddu     $a0, $s3, $zero
.L80240A08:
/* A532C8 80240A08 0280282D */  daddu     $a1, $s4, $zero
/* A532CC 80240A0C 0C0900E3 */  jal       func_8024038C_A52C4C
/* A532D0 80240A10 02A0302D */   daddu    $a2, $s5, $zero
/* A532D4 80240A14 08090294 */  j         .L80240A50
/* A532D8 80240A18 00000000 */   nop
.L80240A1C:
/* A532DC 80240A1C 0260202D */  daddu     $a0, $s3, $zero
/* A532E0 80240A20 0280282D */  daddu     $a1, $s4, $zero
/* A532E4 80240A24 0C090130 */  jal       kpa_11_UnkNpcAIFunc12
/* A532E8 80240A28 02A0302D */   daddu    $a2, $s5, $zero
/* A532EC 80240A2C 08090294 */  j         .L80240A50
/* A532F0 80240A30 00000000 */   nop
.L80240A34:
/* A532F4 80240A34 0280282D */  daddu     $a1, $s4, $zero
/* A532F8 80240A38 0C090189 */  jal       kpa_11_set_script_owner_npc_col_height
/* A532FC 80240A3C 02A0302D */   daddu    $a2, $s5, $zero
/* A53300 80240A40 08090294 */  j         .L80240A50
/* A53304 80240A44 00000000 */   nop
.L80240A48:
/* A53308 80240A48 0C0129CF */  jal       func_8004A73C
/* A5330C 80240A4C 0260202D */   daddu    $a0, $s3, $zero
.L80240A50:
/* A53310 80240A50 8E230088 */  lw        $v1, 0x88($s1)
/* A53314 80240A54 24020006 */  addiu     $v0, $zero, 6
/* A53318 80240A58 14620019 */  bne       $v1, $v0, .L80240AC0
/* A5331C 80240A5C 0000102D */   daddu    $v0, $zero, $zero
/* A53320 80240A60 8E22008C */  lw        $v0, 0x8c($s1)
/* A53324 80240A64 10400003 */  beqz      $v0, .L80240A74
/* A53328 80240A68 24020001 */   addiu    $v0, $zero, 1
/* A5332C 80240A6C 0809029E */  j         .L80240A78
/* A53330 80240A70 A22200B5 */   sb       $v0, 0xb5($s1)
.L80240A74:
/* A53334 80240A74 A22000B5 */  sb        $zero, 0xb5($s1)
.L80240A78:
/* A53338 80240A78 8E22008C */  lw        $v0, 0x8c($s1)
/* A5333C 80240A7C 1040000F */  beqz      $v0, L80240ABC_A5337C
/* A53340 80240A80 3C03FFAA */   lui      $v1, 0xffaa
/* A53344 80240A84 8E420028 */  lw        $v0, 0x28($s2)
/* A53348 80240A88 3463FFFC */  ori       $v1, $v1, 0xfffc
/* A5334C 80240A8C 00431821 */  addu      $v1, $v0, $v1
/* A53350 80240A90 2C620015 */  sltiu     $v0, $v1, 0x15
/* A53354 80240A94 10400009 */  beqz      $v0, L80240ABC_A5337C
/* A53358 80240A98 00031080 */   sll      $v0, $v1, 2
/* A5335C 80240A9C 3C018024 */  lui       $at, %hi(jtbl_80242038_A548F8)
/* A53360 80240AA0 00220821 */  addu      $at, $at, $v0
/* A53364 80240AA4 8C222038 */  lw        $v0, %lo(jtbl_80242038_A548F8)($at)
/* A53368 80240AA8 00400008 */  jr        $v0
/* A5336C 80240AAC 00000000 */   nop
glabel L80240AB0_A53370
/* A53370 80240AB0 8E420028 */  lw        $v0, 0x28($s2)
/* A53374 80240AB4 24420001 */  addiu     $v0, $v0, 1
/* A53378 80240AB8 AE420028 */  sw        $v0, 0x28($s2)
glabel L80240ABC_A5337C
/* A5337C 80240ABC 0000102D */  daddu     $v0, $zero, $zero
.L80240AC0:
/* A53380 80240AC0 8FBF0068 */  lw        $ra, 0x68($sp)
/* A53384 80240AC4 8FB50064 */  lw        $s5, 0x64($sp)
/* A53388 80240AC8 8FB40060 */  lw        $s4, 0x60($sp)
/* A5338C 80240ACC 8FB3005C */  lw        $s3, 0x5c($sp)
/* A53390 80240AD0 8FB20058 */  lw        $s2, 0x58($sp)
/* A53394 80240AD4 8FB10054 */  lw        $s1, 0x54($sp)
/* A53398 80240AD8 8FB00050 */  lw        $s0, 0x50($sp)
/* A5339C 80240ADC 03E00008 */  jr        $ra
/* A533A0 80240AE0 27BD0070 */   addiu    $sp, $sp, 0x70
/* A533A4 80240AE4 00000000 */  nop
/* A533A8 80240AE8 00000000 */  nop
/* A533AC 80240AEC 00000000 */  nop
