.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80268858
/* 197138 80268858 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 19713C 8026885C AFB00010 */  sw        $s0, 0x10($sp)
/* 197140 80268860 3C10802A */  lui       $s0, %hi(D_8029FBE0)
/* 197144 80268864 2610FBE0 */  addiu     $s0, $s0, %lo(D_8029FBE0)
/* 197148 80268868 AFB20018 */  sw        $s2, 0x18($sp)
/* 19714C 8026886C 3C12800E */  lui       $s2, %hi(gBattleStatus)
/* 197150 80268870 2652C070 */  addiu     $s2, $s2, %lo(gBattleStatus)
/* 197154 80268874 AFBF001C */  sw        $ra, 0x1c($sp)
/* 197158 80268878 AFB10014 */  sw        $s1, 0x14($sp)
/* 19715C 8026887C A200005E */  sb        $zero, 0x5e($s0)
/* 197160 80268880 A600006A */  sh        $zero, 0x6a($s0)
/* 197164 80268884 8E420000 */  lw        $v0, ($s2)
/* 197168 80268888 3C110008 */  lui       $s1, 8
/* 19716C 8026888C 00511024 */  and       $v0, $v0, $s1
/* 197170 80268890 14400015 */  bnez      $v0, .L802688E8
/* 197174 80268894 00000000 */   nop
/* 197178 80268898 0C03A752 */  jal       is_ability_active
/* 19717C 8026889C 24040016 */   addiu    $a0, $zero, 0x16
/* 197180 802688A0 10400002 */  beqz      $v0, .L802688AC
/* 197184 802688A4 24020001 */   addiu    $v0, $zero, 1
/* 197188 802688A8 A202005E */  sb        $v0, 0x5e($s0)
.L802688AC:
/* 19718C 802688AC 8E420000 */  lw        $v0, ($s2)
/* 197190 802688B0 00511024 */  and       $v0, $v0, $s1
/* 197194 802688B4 1440000C */  bnez      $v0, .L802688E8
/* 197198 802688B8 00000000 */   nop
/* 19719C 802688BC 0C03A752 */  jal       is_ability_active
/* 1971A0 802688C0 24040015 */   addiu    $a0, $zero, 0x15
/* 1971A4 802688C4 10400008 */  beqz      $v0, .L802688E8
/* 1971A8 802688C8 24040064 */   addiu    $a0, $zero, 0x64
/* 1971AC 802688CC 24110001 */  addiu     $s1, $zero, 1
/* 1971B0 802688D0 A2000061 */  sb        $zero, 0x61($s0)
/* 1971B4 802688D4 0C00A67F */  jal       rand_int
/* 1971B8 802688D8 A611006A */   sh       $s1, 0x6a($s0)
/* 1971BC 802688DC 28420019 */  slti      $v0, $v0, 0x19
/* 1971C0 802688E0 54400001 */  bnel      $v0, $zero, .L802688E8
/* 1971C4 802688E4 A211005E */   sb       $s1, 0x5e($s0)
.L802688E8:
/* 1971C8 802688E8 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 1971CC 802688EC 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 1971D0 802688F0 904200AA */  lbu       $v0, 0xaa($v0)
/* 1971D4 802688F4 30420001 */  andi      $v0, $v0, 1
/* 1971D8 802688F8 10400002 */  beqz      $v0, .L80268904
/* 1971DC 802688FC 24020001 */   addiu    $v0, $zero, 1
/* 1971E0 80268900 A202005E */  sb        $v0, 0x5e($s0)
.L80268904:
/* 1971E4 80268904 3C02800E */  lui       $v0, %hi(gBattleStatus)
/* 1971E8 80268908 8C42C070 */  lw        $v0, %lo(gBattleStatus)($v0)
/* 1971EC 8026890C 30421000 */  andi      $v0, $v0, 0x1000
/* 1971F0 80268910 10400003 */  beqz      $v0, .L80268920
/* 1971F4 80268914 24020001 */   addiu    $v0, $zero, 1
/* 1971F8 80268918 A202005E */  sb        $v0, 0x5e($s0)
/* 1971FC 8026891C A2000061 */  sb        $zero, 0x61($s0)
.L80268920:
/* 197200 80268920 8FBF001C */  lw        $ra, 0x1c($sp)
/* 197204 80268924 8FB20018 */  lw        $s2, 0x18($sp)
/* 197208 80268928 8FB10014 */  lw        $s1, 0x14($sp)
/* 19720C 8026892C 8FB00010 */  lw        $s0, 0x10($sp)
/* 197210 80268930 03E00008 */  jr        $ra
/* 197214 80268934 27BD0020 */   addiu    $sp, $sp, 0x20
