.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242898_803118
/* 803118 80242898 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 80311C 8024289C 10A0000B */  beqz      $a1, .L802428CC
/* 803120 802428A0 AFBF0010 */   sw       $ra, 0x10($sp)
/* 803124 802428A4 3C038026 */  lui       $v1, %hi(D_80262A64)
/* 803128 802428A8 8C632A64 */  lw        $v1, %lo(D_80262A64)($v1)
/* 80312C 802428AC 8C620000 */  lw        $v0, ($v1)
/* 803130 802428B0 3C048026 */  lui       $a0, %hi(D_80262A68)
/* 803134 802428B4 8C842A68 */  lw        $a0, %lo(D_80262A68)($a0)
/* 803138 802428B8 34420010 */  ori       $v0, $v0, 0x10
/* 80313C 802428BC AC620000 */  sw        $v0, ($v1)
/* 803140 802428C0 8C820000 */  lw        $v0, ($a0)
/* 803144 802428C4 34420010 */  ori       $v0, $v0, 0x10
/* 803148 802428C8 AC820000 */  sw        $v0, ($a0)
.L802428CC:
/* 80314C 802428CC 3C048026 */  lui       $a0, %hi(D_80262A60)
/* 803150 802428D0 8C842A60 */  lw        $a0, %lo(D_80262A60)($a0)
/* 803154 802428D4 8C85000C */  lw        $a1, 0xc($a0)
/* 803158 802428D8 8CA20018 */  lw        $v0, 0x18($a1)
/* 80315C 802428DC 8CA30020 */  lw        $v1, 0x20($a1)
/* 803160 802428E0 2442FFF6 */  addiu     $v0, $v0, -0xa
/* 803164 802428E4 ACA20018 */  sw        $v0, 0x18($a1)
/* 803168 802428E8 8CA20024 */  lw        $v0, 0x24($a1)
/* 80316C 802428EC 2463FFF6 */  addiu     $v1, $v1, -0xa
/* 803170 802428F0 ACA30020 */  sw        $v1, 0x20($a1)
/* 803174 802428F4 8CA30028 */  lw        $v1, 0x28($a1)
/* 803178 802428F8 2442FFF6 */  addiu     $v0, $v0, -0xa
/* 80317C 802428FC ACA20024 */  sw        $v0, 0x24($a1)
/* 803180 80242900 8CA2001C */  lw        $v0, 0x1c($a1)
/* 803184 80242904 2463FFF6 */  addiu     $v1, $v1, -0xa
/* 803188 80242908 ACA30028 */  sw        $v1, 0x28($a1)
/* 80318C 8024290C 8CA30018 */  lw        $v1, 0x18($a1)
/* 803190 80242910 2442FFF6 */  addiu     $v0, $v0, -0xa
/* 803194 80242914 18600003 */  blez      $v1, .L80242924
/* 803198 80242918 ACA2001C */   sw       $v0, 0x1c($a1)
/* 80319C 8024291C 08090A50 */  j         .L80242940
/* 8031A0 80242920 0000102D */   daddu    $v0, $zero, $zero
.L80242924:
/* 8031A4 80242924 0C016914 */  jal       remove_effect
/* 8031A8 80242928 ACA00018 */   sw       $zero, 0x18($a1)
/* 8031AC 8024292C 3C048026 */  lui       $a0, %hi(D_80262A40)
/* 8031B0 80242930 8C842A40 */  lw        $a0, %lo(D_80262A40)($a0)
/* 8031B4 80242934 0C048D70 */  jal       free_dynamic_entity
/* 8031B8 80242938 00000000 */   nop
/* 8031BC 8024293C 24020002 */  addiu     $v0, $zero, 2
.L80242940:
/* 8031C0 80242940 8FBF0010 */  lw        $ra, 0x10($sp)
/* 8031C4 80242944 03E00008 */  jr        $ra
/* 8031C8 80242948 27BD0018 */   addiu    $sp, $sp, 0x18
