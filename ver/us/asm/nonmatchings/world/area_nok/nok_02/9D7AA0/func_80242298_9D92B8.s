.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242298_9D92B8
/* 9D92B8 80242298 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 9D92BC 8024229C 10A0000B */  beqz      $a1, .L802422CC
/* 9D92C0 802422A0 AFBF0010 */   sw       $ra, 0x10($sp)
/* 9D92C4 802422A4 3C038025 */  lui       $v1, %hi(D_802549C4)
/* 9D92C8 802422A8 8C6349C4 */  lw        $v1, %lo(D_802549C4)($v1)
/* 9D92CC 802422AC 8C620000 */  lw        $v0, ($v1)
/* 9D92D0 802422B0 3C048025 */  lui       $a0, %hi(D_802549C8)
/* 9D92D4 802422B4 8C8449C8 */  lw        $a0, %lo(D_802549C8)($a0)
/* 9D92D8 802422B8 34420010 */  ori       $v0, $v0, 0x10
/* 9D92DC 802422BC AC620000 */  sw        $v0, ($v1)
/* 9D92E0 802422C0 8C820000 */  lw        $v0, ($a0)
/* 9D92E4 802422C4 34420010 */  ori       $v0, $v0, 0x10
/* 9D92E8 802422C8 AC820000 */  sw        $v0, ($a0)
.L802422CC:
/* 9D92EC 802422CC 3C048025 */  lui       $a0, %hi(func_802549C0)
/* 9D92F0 802422D0 8C8449C0 */  lw        $a0, %lo(func_802549C0)($a0)
/* 9D92F4 802422D4 8C85000C */  lw        $a1, 0xc($a0)
/* 9D92F8 802422D8 8CA20018 */  lw        $v0, 0x18($a1)
/* 9D92FC 802422DC 8CA30020 */  lw        $v1, 0x20($a1)
/* 9D9300 802422E0 2442FFF6 */  addiu     $v0, $v0, -0xa
/* 9D9304 802422E4 ACA20018 */  sw        $v0, 0x18($a1)
/* 9D9308 802422E8 8CA20024 */  lw        $v0, 0x24($a1)
/* 9D930C 802422EC 2463FFF6 */  addiu     $v1, $v1, -0xa
/* 9D9310 802422F0 ACA30020 */  sw        $v1, 0x20($a1)
/* 9D9314 802422F4 8CA30028 */  lw        $v1, 0x28($a1)
/* 9D9318 802422F8 2442FFF6 */  addiu     $v0, $v0, -0xa
/* 9D931C 802422FC ACA20024 */  sw        $v0, 0x24($a1)
/* 9D9320 80242300 8CA2001C */  lw        $v0, 0x1c($a1)
/* 9D9324 80242304 2463FFF6 */  addiu     $v1, $v1, -0xa
/* 9D9328 80242308 ACA30028 */  sw        $v1, 0x28($a1)
/* 9D932C 8024230C 8CA30018 */  lw        $v1, 0x18($a1)
/* 9D9330 80242310 2442FFF6 */  addiu     $v0, $v0, -0xa
/* 9D9334 80242314 18600003 */  blez      $v1, .L80242324
/* 9D9338 80242318 ACA2001C */   sw       $v0, 0x1c($a1)
/* 9D933C 8024231C 080908D0 */  j         .L80242340
/* 9D9340 80242320 0000102D */   daddu    $v0, $zero, $zero
.L80242324:
/* 9D9344 80242324 0C016914 */  jal       remove_effect
/* 9D9348 80242328 ACA00018 */   sw       $zero, 0x18($a1)
/* 9D934C 8024232C 3C048025 */  lui       $a0, %hi(func_802549A0)
/* 9D9350 80242330 8C8449A0 */  lw        $a0, %lo(func_802549A0)($a0)
/* 9D9354 80242334 0C048D70 */  jal       free_dynamic_entity
/* 9D9358 80242338 00000000 */   nop
/* 9D935C 8024233C 24020002 */  addiu     $v0, $zero, 2
.L80242340:
/* 9D9360 80242340 8FBF0010 */  lw        $ra, 0x10($sp)
/* 9D9364 80242344 03E00008 */  jr        $ra
/* 9D9368 80242348 27BD0018 */   addiu    $sp, $sp, 0x18
