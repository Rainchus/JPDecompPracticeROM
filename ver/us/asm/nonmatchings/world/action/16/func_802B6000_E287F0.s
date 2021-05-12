.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802B6000_E287F0
/* E287F0 802B6000 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* E287F4 802B6004 AFB00020 */  sw        $s0, 0x20($sp)
/* E287F8 802B6008 3C108011 */  lui       $s0, %hi(gPlayerStatus)
/* E287FC 802B600C 2610EFC8 */  addiu     $s0, $s0, %lo(gPlayerStatus)
/* E28800 802B6010 AFBF0028 */  sw        $ra, 0x28($sp)
/* E28804 802B6014 AFB10024 */  sw        $s1, 0x24($sp)
/* E28808 802B6018 8E030000 */  lw        $v1, ($s0)
/* E2880C 802B601C 0461003E */  bgez      $v1, .L802B6118
/* E28810 802B6020 0200882D */   daddu    $s1, $s0, $zero
/* E28814 802B6024 3C027FFF */  lui       $v0, 0x7fff
/* E28818 802B6028 3442FFFF */  ori       $v0, $v0, 0xffff
/* E2881C 802B602C 3C040001 */  lui       $a0, 1
/* E28820 802B6030 34840017 */  ori       $a0, $a0, 0x17
/* E28824 802B6034 00621024 */  and       $v0, $v1, $v0
/* E28828 802B6038 0C037FDE */  jal       func_800DFF78
/* E2882C 802B603C AE020000 */   sw       $v0, ($s0)
/* E28830 802B6040 C60C0028 */  lwc1      $f12, 0x28($s0)
/* E28834 802B6044 C60E0030 */  lwc1      $f14, 0x30($s0)
/* E28838 802B6048 86020016 */  lh        $v0, 0x16($s0)
/* E2883C 802B604C 3C014192 */  lui       $at, 0x4192
/* E28840 802B6050 3421C745 */  ori       $at, $at, 0xc745
/* E28844 802B6054 44810000 */  mtc1      $at, $f0
/* E28848 802B6058 3C01C06F */  lui       $at, 0xc06f
/* E2884C 802B605C 34213B64 */  ori       $at, $at, 0x3b64
/* E28850 802B6060 44811000 */  mtc1      $at, $f2
/* E28854 802B6064 3C013F4E */  lui       $at, 0x3f4e
/* E28858 802B6068 34214F76 */  ori       $at, $at, 0x4f76
/* E2885C 802B606C 44812000 */  mtc1      $at, $f4
/* E28860 802B6070 3C01BDCA */  lui       $at, 0xbdca
/* E28864 802B6074 3421233A */  ori       $at, $at, 0x233a
/* E28868 802B6078 44813000 */  mtc1      $at, $f6
/* E2886C 802B607C 8604001A */  lh        $a0, 0x1a($s0)
/* E28870 802B6080 3C03800B */  lui       $v1, %hi(gCameras)
/* E28874 802B6084 24631D80 */  addiu     $v1, $v1, %lo(gCameras)
/* E28878 802B6088 A20000B6 */  sb        $zero, 0xb6($s0)
/* E2887C 802B608C 44824000 */  mtc1      $v0, $f8
/* E28880 802B6090 00000000 */  nop
/* E28884 802B6094 46804220 */  cvt.s.w   $f8, $f8
/* E28888 802B6098 44064000 */  mfc1      $a2, $f8
/* E2888C 802B609C 8E020000 */  lw        $v0, ($s0)
/* E28890 802B60A0 44844000 */  mtc1      $a0, $f8
/* E28894 802B60A4 00000000 */  nop
/* E28898 802B60A8 46804220 */  cvt.s.w   $f8, $f8
/* E2889C 802B60AC E6000070 */  swc1      $f0, 0x70($s0)
/* E288A0 802B60B0 E6020074 */  swc1      $f2, 0x74($s0)
/* E288A4 802B60B4 E6040078 */  swc1      $f4, 0x78($s0)
/* E288A8 802B60B8 E606007C */  swc1      $f6, 0x7c($s0)
/* E288AC 802B60BC 34420008 */  ori       $v0, $v0, 8
/* E288B0 802B60C0 AE020000 */  sw        $v0, ($s0)
/* E288B4 802B60C4 94620002 */  lhu       $v0, 2($v1)
/* E288B8 802B60C8 44074000 */  mfc1      $a3, $f8
/* E288BC 802B60CC 34420001 */  ori       $v0, $v0, 1
/* E288C0 802B60D0 0C00A720 */  jal       atan2
/* E288C4 802B60D4 A4620002 */   sh       $v0, 2($v1)
/* E288C8 802B60D8 86020016 */  lh        $v0, 0x16($s0)
/* E288CC 802B60DC 8603001A */  lh        $v1, 0x1a($s0)
/* E288D0 802B60E0 3C01802B */  lui       $at, %hi(D_802B6240)
/* E288D4 802B60E4 E4206240 */  swc1      $f0, %lo(D_802B6240)($at)
/* E288D8 802B60E8 44826000 */  mtc1      $v0, $f12
/* E288DC 802B60EC 00000000 */  nop
/* E288E0 802B60F0 46806320 */  cvt.s.w   $f12, $f12
/* E288E4 802B60F4 44837000 */  mtc1      $v1, $f14
/* E288E8 802B60F8 00000000 */  nop
/* E288EC 802B60FC 0C038022 */  jal       func_800E0088
/* E288F0 802B6100 468073A0 */   cvt.s.w  $f14, $f14
/* E288F4 802B6104 3C014190 */  lui       $at, 0x4190
/* E288F8 802B6108 44811000 */  mtc1      $at, $f2
/* E288FC 802B610C 00000000 */  nop
/* E28900 802B6110 46020003 */  div.s     $f0, $f0, $f2
/* E28904 802B6114 E6000054 */  swc1      $f0, 0x54($s0)
.L802B6118:
/* E28908 802B6118 3C01802B */  lui       $at, %hi(D_802B6240)
/* E2890C 802B611C C42C6240 */  lwc1      $f12, %lo(D_802B6240)($at)
/* E28910 802B6120 3C0140C9 */  lui       $at, 0x40c9
/* E28914 802B6124 34210FD0 */  ori       $at, $at, 0xfd0
/* E28918 802B6128 44810000 */  mtc1      $at, $f0
/* E2891C 802B612C 00000000 */  nop
/* E28920 802B6130 46006302 */  mul.s     $f12, $f12, $f0
/* E28924 802B6134 00000000 */  nop
/* E28928 802B6138 27A50010 */  addiu     $a1, $sp, 0x10
/* E2892C 802B613C 3C0143B4 */  lui       $at, 0x43b4
/* E28930 802B6140 44810000 */  mtc1      $at, $f0
/* E28934 802B6144 27A60014 */  addiu     $a2, $sp, 0x14
/* E28938 802B6148 0C00A82D */  jal       sin_cos_rad
/* E2893C 802B614C 46006303 */   div.s    $f12, $f12, $f0
/* E28940 802B6150 3C030004 */  lui       $v1, 4
/* E28944 802B6154 8E020000 */  lw        $v0, ($s0)
/* E28948 802B6158 C6020054 */  lwc1      $f2, 0x54($s0)
/* E2894C 802B615C 00431024 */  and       $v0, $v0, $v1
/* E28950 802B6160 10400006 */  beqz      $v0, .L802B617C
/* E28954 802B6164 00000000 */   nop
/* E28958 802B6168 3C013F00 */  lui       $at, 0x3f00
/* E2895C 802B616C 44810000 */  mtc1      $at, $f0
/* E28960 802B6170 00000000 */  nop
/* E28964 802B6174 46001082 */  mul.s     $f2, $f2, $f0
/* E28968 802B6178 00000000 */  nop
.L802B617C:
/* E2896C 802B617C C7A00010 */  lwc1      $f0, 0x10($sp)
/* E28970 802B6180 46001002 */  mul.s     $f0, $f2, $f0
/* E28974 802B6184 00000000 */  nop
/* E28978 802B6188 C7A40014 */  lwc1      $f4, 0x14($sp)
/* E2897C 802B618C 46041102 */  mul.s     $f4, $f2, $f4
/* E28980 802B6190 00000000 */  nop
/* E28984 802B6194 C6020028 */  lwc1      $f2, 0x28($s0)
/* E28988 802B6198 46001080 */  add.s     $f2, $f2, $f0
/* E2898C 802B619C C6000030 */  lwc1      $f0, 0x30($s0)
/* E28990 802B61A0 820200B6 */  lb        $v0, 0xb6($s0)
/* E28994 802B61A4 46040001 */  sub.s     $f0, $f0, $f4
/* E28998 802B61A8 E6020028 */  swc1      $f2, 0x28($s0)
/* E2899C 802B61AC 14400012 */  bnez      $v0, .L802B61F8
/* E289A0 802B61B0 E6000030 */   swc1     $f0, 0x30($s0)
/* E289A4 802B61B4 0C038D12 */  jal       integrate_gravity
/* E289A8 802B61B8 00000000 */   nop
/* E289AC 802B61BC C600002C */  lwc1      $f0, 0x2c($s0)
/* E289B0 802B61C0 C6040070 */  lwc1      $f4, 0x70($s0)
/* E289B4 802B61C4 46040000 */  add.s     $f0, $f0, $f4
/* E289B8 802B61C8 44801000 */  mtc1      $zero, $f2
/* E289BC 802B61CC 00000000 */  nop
/* E289C0 802B61D0 4602203C */  c.lt.s    $f4, $f2
/* E289C4 802B61D4 00000000 */  nop
/* E289C8 802B61D8 45000014 */  bc1f      .L802B622C
/* E289CC 802B61DC E600002C */   swc1     $f0, 0x2c($s0)
/* E289D0 802B61E0 8E020000 */  lw        $v0, ($s0)
/* E289D4 802B61E4 24030001 */  addiu     $v1, $zero, 1
/* E289D8 802B61E8 A20300B6 */  sb        $v1, 0xb6($s0)
/* E289DC 802B61EC 34420004 */  ori       $v0, $v0, 4
/* E289E0 802B61F0 080AD88B */  j         .L802B622C
/* E289E4 802B61F4 AE020000 */   sw       $v0, ($s0)
.L802B61F8:
/* E289E8 802B61F8 0C038D36 */  jal       func_800E34D8
/* E289EC 802B61FC 00000000 */   nop
/* E289F0 802B6200 46000306 */  mov.s     $f12, $f0
/* E289F4 802B6204 0C038D45 */  jal       func_800E3514
/* E289F8 802B6208 27A50018 */   addiu    $a1, $sp, 0x18
/* E289FC 802B620C 8FA40018 */  lw        $a0, 0x18($sp)
/* E28A00 802B6210 04800006 */  bltz      $a0, .L802B622C
/* E28A04 802B6214 E620002C */   swc1     $f0, 0x2c($s1)
/* E28A08 802B6218 0C016F6A */  jal       get_collider_type_by_id
/* E28A0C 802B621C 00000000 */   nop
/* E28A10 802B6220 AFA20018 */  sw        $v0, 0x18($sp)
/* E28A14 802B6224 0C039769 */  jal       set_action_state
/* E28A18 802B6228 2404000A */   addiu    $a0, $zero, 0xa
.L802B622C:
/* E28A1C 802B622C 8FBF0028 */  lw        $ra, 0x28($sp)
/* E28A20 802B6230 8FB10024 */  lw        $s1, 0x24($sp)
/* E28A24 802B6234 8FB00020 */  lw        $s0, 0x20($sp)
/* E28A28 802B6238 03E00008 */  jr        $ra
/* E28A2C 802B623C 27BD0030 */   addiu    $sp, $sp, 0x30
