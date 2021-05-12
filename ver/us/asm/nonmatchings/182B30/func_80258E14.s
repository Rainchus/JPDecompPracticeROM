.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

glabel D_8029D398
.double 0.7142857142857143

.section .text

glabel func_80258E14
/* 1876F4 80258E14 27BDFCE8 */  addiu     $sp, $sp, -0x318
/* 1876F8 80258E18 AFB002D8 */  sw        $s0, 0x2d8($sp)
/* 1876FC 80258E1C 3C10800E */  lui       $s0, %hi(gBattleStatus+0xD8)
/* 187700 80258E20 8E10C148 */  lw        $s0, %lo(gBattleStatus+0xD8)($s0)
/* 187704 80258E24 AFBF02F8 */  sw        $ra, 0x2f8($sp)
/* 187708 80258E28 AFB702F4 */  sw        $s7, 0x2f4($sp)
/* 18770C 80258E2C AFB602F0 */  sw        $s6, 0x2f0($sp)
/* 187710 80258E30 AFB502EC */  sw        $s5, 0x2ec($sp)
/* 187714 80258E34 AFB402E8 */  sw        $s4, 0x2e8($sp)
/* 187718 80258E38 AFB302E4 */  sw        $s3, 0x2e4($sp)
/* 18771C 80258E3C AFB202E0 */  sw        $s2, 0x2e0($sp)
/* 187720 80258E40 AFB102DC */  sw        $s1, 0x2dc($sp)
/* 187724 80258E44 F7B80310 */  sdc1      $f24, 0x310($sp)
/* 187728 80258E48 F7B60308 */  sdc1      $f22, 0x308($sp)
/* 18772C 80258E4C F7B40300 */  sdc1      $f20, 0x300($sp)
/* 187730 80258E50 86020150 */  lh        $v0, 0x150($s0)
/* 187734 80258E54 C6040144 */  lwc1      $f4, 0x144($s0)
/* 187738 80258E58 C6020148 */  lwc1      $f2, 0x148($s0)
/* 18773C 80258E5C 44820000 */  mtc1      $v0, $f0
/* 187740 80258E60 00000000 */  nop
/* 187744 80258E64 46800020 */  cvt.s.w   $f0, $f0
/* 187748 80258E68 46002100 */  add.s     $f4, $f4, $f0
/* 18774C 80258E6C 86020152 */  lh        $v0, 0x152($s0)
/* 187750 80258E70 8E1301F4 */  lw        $s3, 0x1f4($s0)
/* 187754 80258E74 44820000 */  mtc1      $v0, $f0
/* 187758 80258E78 00000000 */  nop
/* 18775C 80258E7C 46800020 */  cvt.s.w   $f0, $f0
/* 187760 80258E80 46001080 */  add.s     $f2, $f2, $f0
/* 187764 80258E84 86620068 */  lh        $v0, 0x68($s3)
/* 187768 80258E88 44820000 */  mtc1      $v0, $f0
/* 18776C 80258E8C 00000000 */  nop
/* 187770 80258E90 46800020 */  cvt.s.w   $f0, $f0
/* 187774 80258E94 46002100 */  add.s     $f4, $f4, $f0
/* 187778 80258E98 8662006A */  lh        $v0, 0x6a($s3)
/* 18777C 80258E9C 44820000 */  mtc1      $v0, $f0
/* 187780 80258EA0 00000000 */  nop
/* 187784 80258EA4 46800020 */  cvt.s.w   $f0, $f0
/* 187788 80258EA8 46001080 */  add.s     $f2, $f2, $f0
/* 18778C 80258EAC 86020154 */  lh        $v0, 0x154($s0)
/* 187790 80258EB0 C600014C */  lwc1      $f0, 0x14c($s0)
/* 187794 80258EB4 44061000 */  mfc1      $a2, $f2
/* 187798 80258EB8 44821000 */  mtc1      $v0, $f2
/* 18779C 80258EBC 00000000 */  nop
/* 1877A0 80258EC0 468010A0 */  cvt.s.w   $f2, $f2
/* 1877A4 80258EC4 46020000 */  add.s     $f0, $f0, $f2
/* 1877A8 80258EC8 3C0140A0 */  lui       $at, 0x40a0
/* 1877AC 80258ECC 44811000 */  mtc1      $at, $f2
/* 1877B0 80258ED0 00000000 */  nop
/* 1877B4 80258ED4 46020001 */  sub.s     $f0, $f0, $f2
/* 1877B8 80258ED8 3C013F80 */  lui       $at, 0x3f80
/* 1877BC 80258EDC 4481B000 */  mtc1      $at, $f22
/* 1877C0 80258EE0 27B701D8 */  addiu     $s7, $sp, 0x1d8
/* 1877C4 80258EE4 46160001 */  sub.s     $f0, $f0, $f22
/* 1877C8 80258EE8 C618018C */  lwc1      $f24, 0x18c($s0)
/* 1877CC 80258EEC 44052000 */  mfc1      $a1, $f4
/* 1877D0 80258EF0 44070000 */  mfc1      $a3, $f0
/* 1877D4 80258EF4 02E0202D */  daddu     $a0, $s7, $zero
/* 1877D8 80258EF8 0C019E40 */  jal       guTranslateF
/* 1877DC 80258EFC E6780064 */   swc1     $f24, 0x64($s3)
/* 1877E0 80258F00 86020168 */  lh        $v0, 0x168($s0)
/* 1877E4 80258F04 C6020188 */  lwc1      $f2, 0x188($s0)
/* 1877E8 80258F08 00021023 */  negu      $v0, $v0
/* 1877EC 80258F0C 44820000 */  mtc1      $v0, $f0
/* 1877F0 80258F10 00000000 */  nop
/* 1877F4 80258F14 46800020 */  cvt.s.w   $f0, $f0
/* 1877F8 80258F18 46020002 */  mul.s     $f0, $f0, $f2
/* 1877FC 80258F1C 00000000 */  nop
/* 187800 80258F20 8602016A */  lh        $v0, 0x16a($s0)
/* 187804 80258F24 00021023 */  negu      $v0, $v0
/* 187808 80258F28 44050000 */  mfc1      $a1, $f0
/* 18780C 80258F2C 44820000 */  mtc1      $v0, $f0
/* 187810 80258F30 00000000 */  nop
/* 187814 80258F34 46800020 */  cvt.s.w   $f0, $f0
/* 187818 80258F38 46020002 */  mul.s     $f0, $f0, $f2
/* 18781C 80258F3C 00000000 */  nop
/* 187820 80258F40 8602016C */  lh        $v0, 0x16c($s0)
/* 187824 80258F44 00021023 */  negu      $v0, $v0
/* 187828 80258F48 44060000 */  mfc1      $a2, $f0
/* 18782C 80258F4C 44820000 */  mtc1      $v0, $f0
/* 187830 80258F50 00000000 */  nop
/* 187834 80258F54 46800020 */  cvt.s.w   $f0, $f0
/* 187838 80258F58 46020002 */  mul.s     $f0, $f0, $f2
/* 18783C 80258F5C 00000000 */  nop
/* 187840 80258F60 27B60158 */  addiu     $s6, $sp, 0x158
/* 187844 80258F64 44070000 */  mfc1      $a3, $f0
/* 187848 80258F68 0C019E40 */  jal       guTranslateF
/* 18784C 80258F6C 02C0202D */   daddu    $a0, $s6, $zero
/* 187850 80258F70 86020168 */  lh        $v0, 0x168($s0)
/* 187854 80258F74 C6020188 */  lwc1      $f2, 0x188($s0)
/* 187858 80258F78 44820000 */  mtc1      $v0, $f0
/* 18785C 80258F7C 00000000 */  nop
/* 187860 80258F80 46800020 */  cvt.s.w   $f0, $f0
/* 187864 80258F84 46020002 */  mul.s     $f0, $f0, $f2
/* 187868 80258F88 00000000 */  nop
/* 18786C 80258F8C 8602016A */  lh        $v0, 0x16a($s0)
/* 187870 80258F90 44050000 */  mfc1      $a1, $f0
/* 187874 80258F94 44820000 */  mtc1      $v0, $f0
/* 187878 80258F98 00000000 */  nop
/* 18787C 80258F9C 46800020 */  cvt.s.w   $f0, $f0
/* 187880 80258FA0 46020002 */  mul.s     $f0, $f0, $f2
/* 187884 80258FA4 00000000 */  nop
/* 187888 80258FA8 8602016C */  lh        $v0, 0x16c($s0)
/* 18788C 80258FAC 44060000 */  mfc1      $a2, $f0
/* 187890 80258FB0 44820000 */  mtc1      $v0, $f0
/* 187894 80258FB4 00000000 */  nop
/* 187898 80258FB8 46800020 */  cvt.s.w   $f0, $f0
/* 18789C 80258FBC 46020002 */  mul.s     $f0, $f0, $f2
/* 1878A0 80258FC0 00000000 */  nop
/* 1878A4 80258FC4 27B50198 */  addiu     $s5, $sp, 0x198
/* 1878A8 80258FC8 44070000 */  mfc1      $a3, $f0
/* 1878AC 80258FCC 4480A000 */  mtc1      $zero, $f20
/* 1878B0 80258FD0 0C019E40 */  jal       guTranslateF
/* 1878B4 80258FD4 02A0202D */   daddu    $a0, $s5, $zero
/* 1878B8 80258FD8 E7B40010 */  swc1      $f20, 0x10($sp)
/* 1878BC 80258FDC 8E05015C */  lw        $a1, 0x15c($s0)
/* 1878C0 80258FE0 4406B000 */  mfc1      $a2, $f22
/* 1878C4 80258FE4 4407A000 */  mfc1      $a3, $f20
/* 1878C8 80258FE8 0C019EC8 */  jal       guRotateF
/* 1878CC 80258FEC 27A40018 */   addiu    $a0, $sp, 0x18
/* 1878D0 80258FF0 27B10058 */  addiu     $s1, $sp, 0x58
/* 1878D4 80258FF4 E7B40010 */  swc1      $f20, 0x10($sp)
/* 1878D8 80258FF8 8E050160 */  lw        $a1, 0x160($s0)
/* 1878DC 80258FFC 4406A000 */  mfc1      $a2, $f20
/* 1878E0 80259000 4407B000 */  mfc1      $a3, $f22
/* 1878E4 80259004 0C019EC8 */  jal       guRotateF
/* 1878E8 80259008 0220202D */   daddu    $a0, $s1, $zero
/* 1878EC 8025900C 27B20098 */  addiu     $s2, $sp, 0x98
/* 1878F0 80259010 4406A000 */  mfc1      $a2, $f20
/* 1878F4 80259014 0240202D */  daddu     $a0, $s2, $zero
/* 1878F8 80259018 E7B60010 */  swc1      $f22, 0x10($sp)
/* 1878FC 8025901C 8E050164 */  lw        $a1, 0x164($s0)
/* 187900 80259020 0C019EC8 */  jal       guRotateF
/* 187904 80259024 00C0382D */   daddu    $a3, $a2, $zero
/* 187908 80259028 0220202D */  daddu     $a0, $s1, $zero
/* 18790C 8025902C 27A50018 */  addiu     $a1, $sp, 0x18
/* 187910 80259030 27B10218 */  addiu     $s1, $sp, 0x218
/* 187914 80259034 0C019D80 */  jal       guMtxCatF
/* 187918 80259038 0220302D */   daddu    $a2, $s1, $zero
/* 18791C 8025903C 0220202D */  daddu     $a0, $s1, $zero
/* 187920 80259040 0240282D */  daddu     $a1, $s2, $zero
/* 187924 80259044 27B400D8 */  addiu     $s4, $sp, 0xd8
/* 187928 80259048 0C019D80 */  jal       guMtxCatF
/* 18792C 8025904C 0280302D */   daddu    $a2, $s4, $zero
/* 187930 80259050 C6060170 */  lwc1      $f6, 0x170($s0)
/* 187934 80259054 3C01802A */  lui       $at, %hi(D_8029D398)
/* 187938 80259058 D428D398 */  ldc1      $f8, %lo(D_8029D398)($at)
/* 18793C 8025905C 460031A1 */  cvt.d.s   $f6, $f6
/* 187940 80259060 46283182 */  mul.d     $f6, $f6, $f8
/* 187944 80259064 00000000 */  nop
/* 187948 80259068 C6020174 */  lwc1      $f2, 0x174($s0)
/* 18794C 8025906C 460010A1 */  cvt.d.s   $f2, $f2
/* 187950 80259070 46281082 */  mul.d     $f2, $f2, $f8
/* 187954 80259074 00000000 */  nop
/* 187958 80259078 C6040178 */  lwc1      $f4, 0x178($s0)
/* 18795C 8025907C 46002121 */  cvt.d.s   $f4, $f4
/* 187960 80259080 46282102 */  mul.d     $f4, $f4, $f8
/* 187964 80259084 00000000 */  nop
/* 187968 80259088 C6000188 */  lwc1      $f0, 0x188($s0)
/* 18796C 8025908C 46000021 */  cvt.d.s   $f0, $f0
/* 187970 80259090 46203182 */  mul.d     $f6, $f6, $f0
/* 187974 80259094 00000000 */  nop
/* 187978 80259098 46201082 */  mul.d     $f2, $f2, $f0
/* 18797C 8025909C 00000000 */  nop
/* 187980 802590A0 82620074 */  lb        $v0, 0x74($s3)
/* 187984 802590A4 44820000 */  mtc1      $v0, $f0
/* 187988 802590A8 00000000 */  nop
/* 18798C 802590AC 46800021 */  cvt.d.w   $f0, $f0
/* 187990 802590B0 46201082 */  mul.d     $f2, $f2, $f0
/* 187994 802590B4 00000000 */  nop
/* 187998 802590B8 27B00118 */  addiu     $s0, $sp, 0x118
/* 18799C 802590BC 46202120 */  cvt.s.d   $f4, $f4
/* 1879A0 802590C0 44072000 */  mfc1      $a3, $f4
/* 1879A4 802590C4 462031A0 */  cvt.s.d   $f6, $f6
/* 1879A8 802590C8 44053000 */  mfc1      $a1, $f6
/* 1879AC 802590CC 462010A0 */  cvt.s.d   $f2, $f2
/* 1879B0 802590D0 44061000 */  mfc1      $a2, $f2
/* 1879B4 802590D4 0C019DF0 */  jal       guScaleF
/* 1879B8 802590D8 0200202D */   daddu    $a0, $s0, $zero
/* 1879BC 802590DC 27B20298 */  addiu     $s2, $sp, 0x298
/* 1879C0 802590E0 0C0950A2 */  jal       mtx_mirror_y
/* 1879C4 802590E4 0240202D */   daddu    $a0, $s2, $zero
/* 1879C8 802590E8 0200202D */  daddu     $a0, $s0, $zero
/* 1879CC 802590EC 02C0282D */  daddu     $a1, $s6, $zero
/* 1879D0 802590F0 0C019D80 */  jal       guMtxCatF
/* 1879D4 802590F4 0220302D */   daddu    $a2, $s1, $zero
/* 1879D8 802590F8 0220202D */  daddu     $a0, $s1, $zero
/* 1879DC 802590FC 0280282D */  daddu     $a1, $s4, $zero
/* 1879E0 80259100 0C019D80 */  jal       guMtxCatF
/* 1879E4 80259104 0220302D */   daddu    $a2, $s1, $zero
/* 1879E8 80259108 0220202D */  daddu     $a0, $s1, $zero
/* 1879EC 8025910C 02A0282D */  daddu     $a1, $s5, $zero
/* 1879F0 80259110 0C019D80 */  jal       guMtxCatF
/* 1879F4 80259114 0220302D */   daddu    $a2, $s1, $zero
/* 1879F8 80259118 0220202D */  daddu     $a0, $s1, $zero
/* 1879FC 8025911C 02E0282D */  daddu     $a1, $s7, $zero
/* 187A00 80259120 27B00258 */  addiu     $s0, $sp, 0x258
/* 187A04 80259124 0C019D80 */  jal       guMtxCatF
/* 187A08 80259128 0200302D */   daddu    $a2, $s0, $zero
/* 187A0C 8025912C 0200202D */  daddu     $a0, $s0, $zero
/* 187A10 80259130 0240282D */  daddu     $a1, $s2, $zero
/* 187A14 80259134 0C019D80 */  jal       guMtxCatF
/* 187A18 80259138 0200302D */   daddu    $a2, $s0, $zero
/* 187A1C 8025913C 3C014334 */  lui       $at, 0x4334
/* 187A20 80259140 44810000 */  mtc1      $at, $f0
/* 187A24 80259144 00000000 */  nop
/* 187A28 80259148 4600C600 */  add.s     $f24, $f24, $f0
/* 187A2C 8025914C 0C00A6C9 */  jal       clamp_angle
/* 187A30 80259150 4600C306 */   mov.s    $f12, $f24
/* 187A34 80259154 0000202D */  daddu     $a0, $zero, $zero
/* 187A38 80259158 0260282D */  daddu     $a1, $s3, $zero
/* 187A3C 8025915C 4600028D */  trunc.w.s $f10, $f0
/* 187A40 80259160 44065000 */  mfc1      $a2, $f10
/* 187A44 80259164 0C097210 */  jal       func_8025C840
/* 187A48 80259168 24070001 */   addiu    $a3, $zero, 1
/* 187A4C 8025916C 0C00A6C9 */  jal       clamp_angle
/* 187A50 80259170 4600C306 */   mov.s    $f12, $f24
/* 187A54 80259174 0000202D */  daddu     $a0, $zero, $zero
/* 187A58 80259178 0260282D */  daddu     $a1, $s3, $zero
/* 187A5C 8025917C 4600028D */  trunc.w.s $f10, $f0
/* 187A60 80259180 44065000 */  mfc1      $a2, $f10
/* 187A64 80259184 0C097332 */  jal       func_8025CCC8
/* 187A68 80259188 24070001 */   addiu    $a3, $zero, 1
/* 187A6C 8025918C 0C00A6C9 */  jal       clamp_angle
/* 187A70 80259190 4600C306 */   mov.s    $f12, $f24
/* 187A74 80259194 0000202D */  daddu     $a0, $zero, $zero
/* 187A78 80259198 0260282D */  daddu     $a1, $s3, $zero
/* 187A7C 8025919C 4600028D */  trunc.w.s $f10, $f0
/* 187A80 802591A0 44065000 */  mfc1      $a2, $f10
/* 187A84 802591A4 0200382D */  daddu     $a3, $s0, $zero
/* 187A88 802591A8 24020001 */  addiu     $v0, $zero, 1
/* 187A8C 802591AC 0C09647B */  jal       func_802591EC
/* 187A90 802591B0 AFA20010 */   sw       $v0, 0x10($sp)
/* 187A94 802591B4 8FBF02F8 */  lw        $ra, 0x2f8($sp)
/* 187A98 802591B8 8FB702F4 */  lw        $s7, 0x2f4($sp)
/* 187A9C 802591BC 8FB602F0 */  lw        $s6, 0x2f0($sp)
/* 187AA0 802591C0 8FB502EC */  lw        $s5, 0x2ec($sp)
/* 187AA4 802591C4 8FB402E8 */  lw        $s4, 0x2e8($sp)
/* 187AA8 802591C8 8FB302E4 */  lw        $s3, 0x2e4($sp)
/* 187AAC 802591CC 8FB202E0 */  lw        $s2, 0x2e0($sp)
/* 187AB0 802591D0 8FB102DC */  lw        $s1, 0x2dc($sp)
/* 187AB4 802591D4 8FB002D8 */  lw        $s0, 0x2d8($sp)
/* 187AB8 802591D8 D7B80310 */  ldc1      $f24, 0x310($sp)
/* 187ABC 802591DC D7B60308 */  ldc1      $f22, 0x308($sp)
/* 187AC0 802591E0 D7B40300 */  ldc1      $f20, 0x300($sp)
/* 187AC4 802591E4 03E00008 */  jr        $ra
/* 187AC8 802591E8 27BD0318 */   addiu    $sp, $sp, 0x318
