.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240600_D30280
/* D30280 80240600 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* D30284 80240604 AFB60040 */  sw        $s6, 0x40($sp)
/* D30288 80240608 0080B02D */  daddu     $s6, $a0, $zero
/* D3028C 8024060C AFB00028 */  sw        $s0, 0x28($sp)
/* D30290 80240610 00A0802D */  daddu     $s0, $a1, $zero
/* D30294 80240614 AFBF0044 */  sw        $ra, 0x44($sp)
/* D30298 80240618 AFB5003C */  sw        $s5, 0x3c($sp)
/* D3029C 8024061C AFB40038 */  sw        $s4, 0x38($sp)
/* D302A0 80240620 AFB30034 */  sw        $s3, 0x34($sp)
/* D302A4 80240624 AFB20030 */  sw        $s2, 0x30($sp)
/* D302A8 80240628 AFB1002C */  sw        $s1, 0x2c($sp)
/* D302AC 8024062C F7B80058 */  sdc1      $f24, 0x58($sp)
/* D302B0 80240630 F7B60050 */  sdc1      $f22, 0x50($sp)
/* D302B4 80240634 F7B40048 */  sdc1      $f20, 0x48($sp)
/* D302B8 80240638 8ED3000C */  lw        $s3, 0xc($s6)
/* D302BC 8024063C 0C00EAD2 */  jal       get_npc_safe
/* D302C0 80240640 2404FFFC */   addiu    $a0, $zero, -4
/* D302C4 80240644 27A50018 */  addiu     $a1, $sp, 0x18
/* D302C8 80240648 3C048007 */  lui       $a0, %hi(gCurrentCameraID)
/* D302CC 8024064C 8C847410 */  lw        $a0, %lo(gCurrentCameraID)($a0)
/* D302D0 80240650 27A6001C */  addiu     $a2, $sp, 0x1c
/* D302D4 80240654 00041880 */  sll       $v1, $a0, 2
/* D302D8 80240658 00641821 */  addu      $v1, $v1, $a0
/* D302DC 8024065C 00031880 */  sll       $v1, $v1, 2
/* D302E0 80240660 00641823 */  subu      $v1, $v1, $a0
/* D302E4 80240664 000320C0 */  sll       $a0, $v1, 3
/* D302E8 80240668 00641821 */  addu      $v1, $v1, $a0
/* D302EC 8024066C 000318C0 */  sll       $v1, $v1, 3
/* D302F0 80240670 3C01800B */  lui       $at, %hi(gCameras+0x6C)
/* D302F4 80240674 00230821 */  addu      $at, $at, $v1
/* D302F8 80240678 C42C1DEC */  lwc1      $f12, %lo(gCameras+0x6C)($at)
/* D302FC 8024067C 0C00A88D */  jal       sin_cos_deg
/* D30300 80240680 0040A82D */   daddu    $s5, $v0, $zero
/* D30304 80240684 1200005D */  beqz      $s0, .L802407FC
/* D30308 80240688 00000000 */   nop
/* D3030C 8024068C 0C00AB0A */  jal       general_heap_malloc
/* D30310 80240690 24040068 */   addiu    $a0, $zero, 0x68
/* D30314 80240694 0040902D */  daddu     $s2, $v0, $zero
/* D30318 80240698 02C0202D */  daddu     $a0, $s6, $zero
/* D3031C 8024069C 0000882D */  daddu     $s1, $zero, $zero
/* D30320 802406A0 2414FFFF */  addiu     $s4, $zero, -1
/* D30324 802406A4 AED20060 */  sw        $s2, 0x60($s6)
/* D30328 802406A8 8E650000 */  lw        $a1, ($s3)
/* D3032C 802406AC 3C014148 */  lui       $at, 0x4148
/* D30330 802406B0 4481C000 */  mtc1      $at, $f24
/* D30334 802406B4 3C013F80 */  lui       $at, 0x3f80
/* D30338 802406B8 4481B000 */  mtc1      $at, $f22
/* D3033C 802406BC 4480A000 */  mtc1      $zero, $f20
/* D30340 802406C0 0C0B1EAF */  jal       get_variable
/* D30344 802406C4 0240802D */   daddu    $s0, $s2, $zero
/* D30348 802406C8 0C04417A */  jal       get_entity_by_index
/* D3034C 802406CC 0040202D */   daddu    $a0, $v0, $zero
/* D30350 802406D0 AE42005C */  sw        $v0, 0x5c($s2)
.L802406D4:
/* D30354 802406D4 8E42005C */  lw        $v0, 0x5c($s2)
/* D30358 802406D8 C440004C */  lwc1      $f0, 0x4c($v0)
/* D3035C 802406DC 0000202D */  daddu     $a0, $zero, $zero
/* D30360 802406E0 E7B60010 */  swc1      $f22, 0x10($sp)
/* D30364 802406E4 AFB40014 */  sw        $s4, 0x14($sp)
/* D30368 802406E8 46180000 */  add.s     $f0, $f0, $f24
/* D3036C 802406EC 8C450048 */  lw        $a1, 0x48($v0)
/* D30370 802406F0 8C470050 */  lw        $a3, 0x50($v0)
/* D30374 802406F4 44060000 */  mfc1      $a2, $f0
/* D30378 802406F8 0C01C5BC */  jal       func_800716F0
/* D3037C 802406FC 26310001 */   addiu    $s1, $s1, 1
/* D30380 80240700 AE020008 */  sw        $v0, 8($s0)
/* D30384 80240704 E614002C */  swc1      $f20, 0x2c($s0)
/* D30388 80240708 E6140020 */  swc1      $f20, 0x20($s0)
/* D3038C 8024070C E6140014 */  swc1      $f20, 0x14($s0)
/* D30390 80240710 E6140050 */  swc1      $f20, 0x50($s0)
/* D30394 80240714 E6140044 */  swc1      $f20, 0x44($s0)
/* D30398 80240718 E6140038 */  swc1      $f20, 0x38($s0)
/* D3039C 8024071C 2A220003 */  slti      $v0, $s1, 3
/* D303A0 80240720 1440FFEC */  bnez      $v0, .L802406D4
/* D303A4 80240724 26100004 */   addiu    $s0, $s0, 4
/* D303A8 80240728 0000882D */  daddu     $s1, $zero, $zero
/* D303AC 8024072C 0240802D */  daddu     $s0, $s2, $zero
/* D303B0 80240730 3C148024 */  lui       $s4, %hi(D_80241B38_D317B8)
/* D303B4 80240734 26941B38 */  addiu     $s4, $s4, %lo(D_80241B38_D317B8)
/* D303B8 80240738 3C014248 */  lui       $at, 0x4248
/* D303BC 8024073C 4481A000 */  mtc1      $at, $f20
/* D303C0 80240740 24130044 */  addiu     $s3, $zero, 0x44
/* D303C4 80240744 AE400000 */  sw        $zero, ($s2)
/* D303C8 80240748 AE400004 */  sw        $zero, 4($s2)
/* D303CC 8024074C AE400060 */  sw        $zero, 0x60($s2)
/* D303D0 80240750 AE400064 */  sw        $zero, 0x64($s2)
.L80240754:
/* D303D4 80240754 27A40020 */  addiu     $a0, $sp, 0x20
/* D303D8 80240758 4406A000 */  mfc1      $a2, $f20
/* D303DC 8024075C 8E870000 */  lw        $a3, ($s4)
/* D303E0 80240760 02532821 */  addu      $a1, $s2, $s3
/* D303E4 80240764 0C00A7E7 */  jal       add_vec2D_polar
/* D303E8 80240768 AFA00020 */   sw       $zero, 0x20($sp)
/* D303EC 8024076C C7A2001C */  lwc1      $f2, 0x1c($sp)
/* D303F0 80240770 C7A40020 */  lwc1      $f4, 0x20($sp)
/* D303F4 80240774 46041082 */  mul.s     $f2, $f2, $f4
/* D303F8 80240778 00000000 */  nop
/* D303FC 8024077C C7A00018 */  lwc1      $f0, 0x18($sp)
/* D30400 80240780 46040002 */  mul.s     $f0, $f0, $f4
/* D30404 80240784 00000000 */  nop
/* D30408 80240788 E6020038 */  swc1      $f2, 0x38($s0)
/* D3040C 8024078C E6000050 */  swc1      $f0, 0x50($s0)
/* D30410 80240790 8E42005C */  lw        $v0, 0x5c($s2)
/* D30414 80240794 C6000038 */  lwc1      $f0, 0x38($s0)
/* D30418 80240798 C4420048 */  lwc1      $f2, 0x48($v0)
/* D3041C 8024079C 46001080 */  add.s     $f2, $f2, $f0
/* D30420 802407A0 C6A00038 */  lwc1      $f0, 0x38($s5)
/* D30424 802407A4 46020001 */  sub.s     $f0, $f0, $f2
/* D30428 802407A8 E6000038 */  swc1      $f0, 0x38($s0)
/* D3042C 802407AC 8E42005C */  lw        $v0, 0x5c($s2)
/* D30430 802407B0 C6000044 */  lwc1      $f0, 0x44($s0)
/* D30434 802407B4 C442004C */  lwc1      $f2, 0x4c($v0)
/* D30438 802407B8 46001080 */  add.s     $f2, $f2, $f0
/* D3043C 802407BC C6A0003C */  lwc1      $f0, 0x3c($s5)
/* D30440 802407C0 46020001 */  sub.s     $f0, $f0, $f2
/* D30444 802407C4 E6000044 */  swc1      $f0, 0x44($s0)
/* D30448 802407C8 8E42005C */  lw        $v0, 0x5c($s2)
/* D3044C 802407CC C6000050 */  lwc1      $f0, 0x50($s0)
/* D30450 802407D0 C4420050 */  lwc1      $f2, 0x50($v0)
/* D30454 802407D4 26940004 */  addiu     $s4, $s4, 4
/* D30458 802407D8 46001080 */  add.s     $f2, $f2, $f0
/* D3045C 802407DC C6A00040 */  lwc1      $f0, 0x40($s5)
/* D30460 802407E0 26730004 */  addiu     $s3, $s3, 4
/* D30464 802407E4 46020001 */  sub.s     $f0, $f0, $f2
/* D30468 802407E8 26310001 */  addiu     $s1, $s1, 1
/* D3046C 802407EC 2A220003 */  slti      $v0, $s1, 3
/* D30470 802407F0 E6000050 */  swc1      $f0, 0x50($s0)
/* D30474 802407F4 1440FFD7 */  bnez      $v0, .L80240754
/* D30478 802407F8 26100004 */   addiu    $s0, $s0, 4
.L802407FC:
/* D3047C 802407FC 8ED20060 */  lw        $s2, 0x60($s6)
/* D30480 80240800 8E430000 */  lw        $v1, ($s2)
/* D30484 80240804 24020001 */  addiu     $v0, $zero, 1
/* D30488 80240808 10620038 */  beq       $v1, $v0, .L802408EC
/* D3048C 8024080C 28620002 */   slti     $v0, $v1, 2
/* D30490 80240810 50400005 */  beql      $v0, $zero, .L80240828
/* D30494 80240814 24020002 */   addiu    $v0, $zero, 2
/* D30498 80240818 10600007 */  beqz      $v1, .L80240838
/* D3049C 8024081C 24040005 */   addiu    $a0, $zero, 5
/* D304A0 80240820 08090274 */  j         .L802409D0
/* D304A4 80240824 00000000 */   nop
.L80240828:
/* D304A8 80240828 10620058 */  beq       $v1, $v0, .L8024098C
/* D304AC 8024082C 00000000 */   nop
/* D304B0 80240830 08090274 */  j         .L802409D0
/* D304B4 80240834 00000000 */   nop
.L80240838:
/* D304B8 80240838 0000882D */  daddu     $s1, $zero, $zero
/* D304BC 8024083C 3C148024 */  lui       $s4, %hi(D_80241B38_D317B8)
/* D304C0 80240840 26941B38 */  addiu     $s4, $s4, %lo(D_80241B38_D317B8)
/* D304C4 80240844 24130020 */  addiu     $s3, $zero, 0x20
/* D304C8 80240848 3C064248 */  lui       $a2, 0x4248
/* D304CC 8024084C 44800000 */  mtc1      $zero, $f0
/* D304D0 80240850 24020014 */  addiu     $v0, $zero, 0x14
/* D304D4 80240854 AFA20010 */  sw        $v0, 0x10($sp)
/* D304D8 80240858 44050000 */  mfc1      $a1, $f0
/* D304DC 8024085C 8E470060 */  lw        $a3, 0x60($s2)
/* D304E0 80240860 4485B000 */  mtc1      $a1, $f22
/* D304E4 80240864 0C00A8ED */  jal       update_lerp
/* D304E8 80240868 0240802D */   daddu    $s0, $s2, $zero
/* D304EC 8024086C 46000506 */  mov.s     $f20, $f0
.L80240870:
/* D304F0 80240870 4406A000 */  mfc1      $a2, $f20
/* D304F4 80240874 27A40020 */  addiu     $a0, $sp, 0x20
/* D304F8 80240878 E6160020 */  swc1      $f22, 0x20($s0)
/* D304FC 8024087C 8E870000 */  lw        $a3, ($s4)
/* D30500 80240880 02532821 */  addu      $a1, $s2, $s3
/* D30504 80240884 0C00A7E7 */  jal       add_vec2D_polar
/* D30508 80240888 E7B60020 */   swc1     $f22, 0x20($sp)
/* D3050C 8024088C C7A4001C */  lwc1      $f4, 0x1c($sp)
/* D30510 80240890 C7A00020 */  lwc1      $f0, 0x20($sp)
/* D30514 80240894 46002102 */  mul.s     $f4, $f4, $f0
/* D30518 80240898 00000000 */  nop
/* D3051C 8024089C C7A20018 */  lwc1      $f2, 0x18($sp)
/* D30520 802408A0 26940004 */  addiu     $s4, $s4, 4
/* D30524 802408A4 46001082 */  mul.s     $f2, $f2, $f0
/* D30528 802408A8 00000000 */  nop
/* D3052C 802408AC 26730004 */  addiu     $s3, $s3, 4
/* D30530 802408B0 26310001 */  addiu     $s1, $s1, 1
/* D30534 802408B4 2A220003 */  slti      $v0, $s1, 3
/* D30538 802408B8 E6040014 */  swc1      $f4, 0x14($s0)
/* D3053C 802408BC E602002C */  swc1      $f2, 0x2c($s0)
/* D30540 802408C0 1440FFEB */  bnez      $v0, .L80240870
/* D30544 802408C4 26100004 */   addiu    $s0, $s0, 4
/* D30548 802408C8 8E420060 */  lw        $v0, 0x60($s2)
/* D3054C 802408CC 24420001 */  addiu     $v0, $v0, 1
/* D30550 802408D0 AE420060 */  sw        $v0, 0x60($s2)
/* D30554 802408D4 28420015 */  slti      $v0, $v0, 0x15
/* D30558 802408D8 1440003D */  bnez      $v0, .L802409D0
/* D3055C 802408DC 24020001 */   addiu    $v0, $zero, 1
/* D30560 802408E0 AE420000 */  sw        $v0, ($s2)
/* D30564 802408E4 08090274 */  j         .L802409D0
/* D30568 802408E8 AE400060 */   sw       $zero, 0x60($s2)
.L802408EC:
/* D3056C 802408EC 0000882D */  daddu     $s1, $zero, $zero
/* D30570 802408F0 3C148024 */  lui       $s4, %hi(D_80241B38_D317B8)
/* D30574 802408F4 26941B38 */  addiu     $s4, $s4, %lo(D_80241B38_D317B8)
/* D30578 802408F8 24130020 */  addiu     $s3, $zero, 0x20
/* D3057C 802408FC 0240802D */  daddu     $s0, $s2, $zero
/* D30580 80240900 3C014248 */  lui       $at, 0x4248
/* D30584 80240904 4481A000 */  mtc1      $at, $f20
/* D30588 80240908 4480B000 */  mtc1      $zero, $f22
.L8024090C:
/* D3058C 8024090C 4406A000 */  mfc1      $a2, $f20
/* D30590 80240910 27A40020 */  addiu     $a0, $sp, 0x20
/* D30594 80240914 E6160020 */  swc1      $f22, 0x20($s0)
/* D30598 80240918 8E870000 */  lw        $a3, ($s4)
/* D3059C 8024091C 02532821 */  addu      $a1, $s2, $s3
/* D305A0 80240920 0C00A7E7 */  jal       add_vec2D_polar
/* D305A4 80240924 E7B60020 */   swc1     $f22, 0x20($sp)
/* D305A8 80240928 C7A4001C */  lwc1      $f4, 0x1c($sp)
/* D305AC 8024092C C7A00020 */  lwc1      $f0, 0x20($sp)
/* D305B0 80240930 46002102 */  mul.s     $f4, $f4, $f0
/* D305B4 80240934 00000000 */  nop
/* D305B8 80240938 C7A20018 */  lwc1      $f2, 0x18($sp)
/* D305BC 8024093C 26940004 */  addiu     $s4, $s4, 4
/* D305C0 80240940 46001082 */  mul.s     $f2, $f2, $f0
/* D305C4 80240944 00000000 */  nop
/* D305C8 80240948 26730004 */  addiu     $s3, $s3, 4
/* D305CC 8024094C 26310001 */  addiu     $s1, $s1, 1
/* D305D0 80240950 2A220003 */  slti      $v0, $s1, 3
/* D305D4 80240954 E6040014 */  swc1      $f4, 0x14($s0)
/* D305D8 80240958 E602002C */  swc1      $f2, 0x2c($s0)
/* D305DC 8024095C 1440FFEB */  bnez      $v0, .L8024090C
/* D305E0 80240960 26100004 */   addiu    $s0, $s0, 4
/* D305E4 80240964 8E420060 */  lw        $v0, 0x60($s2)
/* D305E8 80240968 24420001 */  addiu     $v0, $v0, 1
/* D305EC 8024096C AE420060 */  sw        $v0, 0x60($s2)
/* D305F0 80240970 28420010 */  slti      $v0, $v0, 0x10
/* D305F4 80240974 14400016 */  bnez      $v0, .L802409D0
/* D305F8 80240978 2402000F */   addiu    $v0, $zero, 0xf
/* D305FC 8024097C AE420060 */  sw        $v0, 0x60($s2)
/* D30600 80240980 24020002 */  addiu     $v0, $zero, 2
/* D30604 80240984 08090274 */  j         .L802409D0
/* D30608 80240988 AE420000 */   sw       $v0, ($s2)
.L8024098C:
/* D3060C 8024098C 8E420060 */  lw        $v0, 0x60($s2)
/* D30610 80240990 24420001 */  addiu     $v0, $v0, 1
/* D30614 80240994 AE420060 */  sw        $v0, 0x60($s2)
/* D30618 80240998 2842001F */  slti      $v0, $v0, 0x1f
/* D3061C 8024099C 1440000C */  bnez      $v0, .L802409D0
/* D30620 802409A0 0000882D */   daddu    $s1, $zero, $zero
/* D30624 802409A4 0240282D */  daddu     $a1, $s2, $zero
.L802409A8:
/* D30628 802409A8 8CA20008 */  lw        $v0, 8($a1)
/* D3062C 802409AC 8C430000 */  lw        $v1, ($v0)
/* D30630 802409B0 26310001 */  addiu     $s1, $s1, 1
/* D30634 802409B4 34630010 */  ori       $v1, $v1, 0x10
/* D30638 802409B8 AC430000 */  sw        $v1, ($v0)
/* D3063C 802409BC 2A220003 */  slti      $v0, $s1, 3
/* D30640 802409C0 1440FFF9 */  bnez      $v0, .L802409A8
/* D30644 802409C4 24A50004 */   addiu    $a1, $a1, 4
/* D30648 802409C8 080902C1 */  j         .L80240B04
/* D3064C 802409CC 24020002 */   addiu    $v0, $zero, 2
.L802409D0:
/* D30650 802409D0 8E430004 */  lw        $v1, 4($s2)
/* D30654 802409D4 10600005 */  beqz      $v1, .L802409EC
/* D30658 802409D8 24020001 */   addiu    $v0, $zero, 1
/* D3065C 802409DC 1062000B */  beq       $v1, $v0, .L80240A0C
/* D30660 802409E0 0000882D */   daddu    $s1, $zero, $zero
/* D30664 802409E4 080902B0 */  j         .L80240AC0
/* D30668 802409E8 0240282D */   daddu    $a1, $s2, $zero
.L802409EC:
/* D3066C 802409EC 8E420064 */  lw        $v0, 0x64($s2)
/* D30670 802409F0 24420001 */  addiu     $v0, $v0, 1
/* D30674 802409F4 AE420064 */  sw        $v0, 0x64($s2)
/* D30678 802409F8 28420010 */  slti      $v0, $v0, 0x10
/* D3067C 802409FC 1440002F */  bnez      $v0, .L80240ABC
/* D30680 80240A00 0000882D */   daddu    $s1, $zero, $zero
/* D30684 80240A04 080902AC */  j         .L80240AB0
/* D30688 80240A08 24020001 */   addiu    $v0, $zero, 1
.L80240A0C:
/* D3068C 80240A0C 4480A000 */  mtc1      $zero, $f20
/* D30690 80240A10 24130014 */  addiu     $s3, $zero, 0x14
/* D30694 80240A14 0240802D */  daddu     $s0, $s2, $zero
.L80240A18:
/* D30698 80240A18 4405A000 */  mfc1      $a1, $f20
/* D3069C 80240A1C AFB30010 */  sw        $s3, 0x10($sp)
/* D306A0 80240A20 8E060038 */  lw        $a2, 0x38($s0)
/* D306A4 80240A24 8E470064 */  lw        $a3, 0x64($s2)
/* D306A8 80240A28 0C00A8ED */  jal       update_lerp
/* D306AC 80240A2C 24040001 */   addiu    $a0, $zero, 1
/* D306B0 80240A30 C6020014 */  lwc1      $f2, 0x14($s0)
/* D306B4 80240A34 46001080 */  add.s     $f2, $f2, $f0
/* D306B8 80240A38 4405A000 */  mfc1      $a1, $f20
/* D306BC 80240A3C E6020014 */  swc1      $f2, 0x14($s0)
/* D306C0 80240A40 AFB30010 */  sw        $s3, 0x10($sp)
/* D306C4 80240A44 8E060044 */  lw        $a2, 0x44($s0)
/* D306C8 80240A48 8E470064 */  lw        $a3, 0x64($s2)
/* D306CC 80240A4C 0C00A8ED */  jal       update_lerp
/* D306D0 80240A50 24040001 */   addiu    $a0, $zero, 1
/* D306D4 80240A54 C6020020 */  lwc1      $f2, 0x20($s0)
/* D306D8 80240A58 46001080 */  add.s     $f2, $f2, $f0
/* D306DC 80240A5C 4405A000 */  mfc1      $a1, $f20
/* D306E0 80240A60 E6020020 */  swc1      $f2, 0x20($s0)
/* D306E4 80240A64 AFB30010 */  sw        $s3, 0x10($sp)
/* D306E8 80240A68 8E060050 */  lw        $a2, 0x50($s0)
/* D306EC 80240A6C 8E470064 */  lw        $a3, 0x64($s2)
/* D306F0 80240A70 0C00A8ED */  jal       update_lerp
/* D306F4 80240A74 24040001 */   addiu    $a0, $zero, 1
/* D306F8 80240A78 C602002C */  lwc1      $f2, 0x2c($s0)
/* D306FC 80240A7C 46001080 */  add.s     $f2, $f2, $f0
/* D30700 80240A80 26310001 */  addiu     $s1, $s1, 1
/* D30704 80240A84 2A220003 */  slti      $v0, $s1, 3
/* D30708 80240A88 E602002C */  swc1      $f2, 0x2c($s0)
/* D3070C 80240A8C 1440FFE2 */  bnez      $v0, .L80240A18
/* D30710 80240A90 26100004 */   addiu    $s0, $s0, 4
/* D30714 80240A94 8E420064 */  lw        $v0, 0x64($s2)
/* D30718 80240A98 24420001 */  addiu     $v0, $v0, 1
/* D3071C 80240A9C AE420064 */  sw        $v0, 0x64($s2)
/* D30720 80240AA0 28420015 */  slti      $v0, $v0, 0x15
/* D30724 80240AA4 14400005 */  bnez      $v0, .L80240ABC
/* D30728 80240AA8 0000882D */   daddu    $s1, $zero, $zero
/* D3072C 80240AAC 24020002 */  addiu     $v0, $zero, 2
.L80240AB0:
/* D30730 80240AB0 AE420004 */  sw        $v0, 4($s2)
/* D30734 80240AB4 AE400064 */  sw        $zero, 0x64($s2)
/* D30738 80240AB8 0000882D */  daddu     $s1, $zero, $zero
.L80240ABC:
/* D3073C 80240ABC 0240282D */  daddu     $a1, $s2, $zero
.L80240AC0:
/* D30740 80240AC0 8CA20008 */  lw        $v0, 8($a1)
/* D30744 80240AC4 C4A00014 */  lwc1      $f0, 0x14($a1)
/* D30748 80240AC8 8C42000C */  lw        $v0, 0xc($v0)
/* D3074C 80240ACC E4400010 */  swc1      $f0, 0x10($v0)
/* D30750 80240AD0 8CA20008 */  lw        $v0, 8($a1)
/* D30754 80240AD4 C4A00020 */  lwc1      $f0, 0x20($a1)
/* D30758 80240AD8 8C42000C */  lw        $v0, 0xc($v0)
/* D3075C 80240ADC 26310001 */  addiu     $s1, $s1, 1
/* D30760 80240AE0 E4400014 */  swc1      $f0, 0x14($v0)
/* D30764 80240AE4 8CA20008 */  lw        $v0, 8($a1)
/* D30768 80240AE8 C4A0002C */  lwc1      $f0, 0x2c($a1)
/* D3076C 80240AEC 8C42000C */  lw        $v0, 0xc($v0)
/* D30770 80240AF0 E4400018 */  swc1      $f0, 0x18($v0)
/* D30774 80240AF4 2A220003 */  slti      $v0, $s1, 3
/* D30778 80240AF8 1440FFF1 */  bnez      $v0, .L80240AC0
/* D3077C 80240AFC 24A50004 */   addiu    $a1, $a1, 4
/* D30780 80240B00 0000102D */  daddu     $v0, $zero, $zero
.L80240B04:
/* D30784 80240B04 8FBF0044 */  lw        $ra, 0x44($sp)
/* D30788 80240B08 8FB60040 */  lw        $s6, 0x40($sp)
/* D3078C 80240B0C 8FB5003C */  lw        $s5, 0x3c($sp)
/* D30790 80240B10 8FB40038 */  lw        $s4, 0x38($sp)
/* D30794 80240B14 8FB30034 */  lw        $s3, 0x34($sp)
/* D30798 80240B18 8FB20030 */  lw        $s2, 0x30($sp)
/* D3079C 80240B1C 8FB1002C */  lw        $s1, 0x2c($sp)
/* D307A0 80240B20 8FB00028 */  lw        $s0, 0x28($sp)
/* D307A4 80240B24 D7B80058 */  ldc1      $f24, 0x58($sp)
/* D307A8 80240B28 D7B60050 */  ldc1      $f22, 0x50($sp)
/* D307AC 80240B2C D7B40048 */  ldc1      $f20, 0x48($sp)
/* D307B0 80240B30 03E00008 */  jr        $ra
/* D307B4 80240B34 27BD0060 */   addiu    $sp, $sp, 0x60
