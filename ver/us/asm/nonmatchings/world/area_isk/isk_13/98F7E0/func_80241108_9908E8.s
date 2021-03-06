.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241108_9908E8
/* 9908E8 80241108 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 9908EC 8024110C AFB40030 */  sw        $s4, 0x30($sp)
/* 9908F0 80241110 27B40010 */  addiu     $s4, $sp, 0x10
/* 9908F4 80241114 AFB3002C */  sw        $s3, 0x2c($sp)
/* 9908F8 80241118 0000982D */  daddu     $s3, $zero, $zero
/* 9908FC 8024111C AFBF0038 */  sw        $ra, 0x38($sp)
/* 990900 80241120 AFB50034 */  sw        $s5, 0x34($sp)
/* 990904 80241124 AFB20028 */  sw        $s2, 0x28($sp)
/* 990908 80241128 AFB10024 */  sw        $s1, 0x24($sp)
/* 99090C 8024112C AFB00020 */  sw        $s0, 0x20($sp)
/* 990910 80241130 8C84014C */  lw        $a0, 0x14c($a0)
/* 990914 80241134 0C00EAD2 */  jal       get_npc_safe
/* 990918 80241138 24150003 */   addiu    $s5, $zero, 3
/* 99091C 8024113C 24040080 */  addiu     $a0, $zero, 0x80
/* 990920 80241140 0C00AB39 */  jal       heap_malloc
/* 990924 80241144 0040882D */   daddu    $s1, $v0, $zero
/* 990928 80241148 0040902D */  daddu     $s2, $v0, $zero
/* 99092C 8024114C 3C030035 */  lui       $v1, 0x35
/* 990930 80241150 34630002 */  ori       $v1, $v1, 2
/* 990934 80241154 2650000C */  addiu     $s0, $s2, 0xc
/* 990938 80241158 3402814A */  ori       $v0, $zero, 0x814a
/* 99093C 8024115C AE320020 */  sw        $s2, 0x20($s1)
/* 990940 80241160 AFA20010 */  sw        $v0, 0x10($sp)
/* 990944 80241164 AFA30014 */  sw        $v1, 0x14($sp)
/* 990948 80241168 AFA00018 */  sw        $zero, 0x18($sp)
/* 99094C 8024116C AFA0001C */  sw        $zero, 0x1c($sp)
.L80241170:
/* 990950 80241170 0C00E211 */  jal       npc_create_basic
/* 990954 80241174 0280202D */   daddu    $a0, $s4, $zero
/* 990958 80241178 0C00E2B7 */  jal       get_npc_by_index
/* 99095C 8024117C 0040202D */   daddu    $a0, $v0, $zero
/* 990960 80241180 AE420000 */  sw        $v0, ($s2)
/* 990964 80241184 C6200038 */  lwc1      $f0, 0x38($s1)
/* 990968 80241188 E4400038 */  swc1      $f0, 0x38($v0)
/* 99096C 8024118C C620003C */  lwc1      $f0, 0x3c($s1)
/* 990970 80241190 0040202D */  daddu     $a0, $v0, $zero
/* 990974 80241194 E480003C */  swc1      $f0, 0x3c($a0)
/* 990978 80241198 C6200040 */  lwc1      $f0, 0x40($s1)
/* 99097C 8024119C 26730001 */  addiu     $s3, $s3, 1
/* 990980 802411A0 E4800040 */  swc1      $f0, 0x40($a0)
/* 990984 802411A4 C620000C */  lwc1      $f0, 0xc($s1)
/* 990988 802411A8 26520010 */  addiu     $s2, $s2, 0x10
/* 99098C 802411AC A09500AB */  sb        $s5, 0xab($a0)
/* 990990 802411B0 0C00EAFF */  jal       disable_npc_shadow
/* 990994 802411B4 E480000C */   swc1     $f0, 0xc($a0)
/* 990998 802411B8 AE00FFF8 */  sw        $zero, -8($s0)
/* 99099C 802411BC AE00FFFC */  sw        $zero, -4($s0)
/* 9909A0 802411C0 AE000000 */  sw        $zero, ($s0)
/* 9909A4 802411C4 2A620008 */  slti      $v0, $s3, 8
/* 9909A8 802411C8 1440FFE9 */  bnez      $v0, .L80241170
/* 9909AC 802411CC 26100010 */   addiu    $s0, $s0, 0x10
/* 9909B0 802411D0 8FBF0038 */  lw        $ra, 0x38($sp)
/* 9909B4 802411D4 8FB50034 */  lw        $s5, 0x34($sp)
/* 9909B8 802411D8 8FB40030 */  lw        $s4, 0x30($sp)
/* 9909BC 802411DC 8FB3002C */  lw        $s3, 0x2c($sp)
/* 9909C0 802411E0 8FB20028 */  lw        $s2, 0x28($sp)
/* 9909C4 802411E4 8FB10024 */  lw        $s1, 0x24($sp)
/* 9909C8 802411E8 8FB00020 */  lw        $s0, 0x20($sp)
/* 9909CC 802411EC 24020002 */  addiu     $v0, $zero, 2
/* 9909D0 802411F0 03E00008 */  jr        $ra
/* 9909D4 802411F4 27BD0040 */   addiu    $sp, $sp, 0x40
