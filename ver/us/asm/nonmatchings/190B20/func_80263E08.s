.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80263E08
/* 1926E8 80263E08 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1926EC 80263E0C AFB00010 */  sw        $s0, 0x10($sp)
/* 1926F0 80263E10 00A0802D */  daddu     $s0, $a1, $zero
/* 1926F4 80263E14 00C0282D */  daddu     $a1, $a2, $zero
/* 1926F8 80263E18 04A00023 */  bltz      $a1, .L80263EA8
/* 1926FC 80263E1C AFBF0014 */   sw       $ra, 0x14($sp)
/* 192700 80263E20 94820192 */  lhu       $v0, 0x192($a0)
/* 192704 80263E24 30430700 */  andi      $v1, $v0, 0x700
/* 192708 80263E28 24020100 */  addiu     $v0, $zero, 0x100
/* 19270C 80263E2C 10620013 */  beq       $v1, $v0, .L80263E7C
/* 192710 80263E30 28620101 */   slti     $v0, $v1, 0x101
/* 192714 80263E34 50400005 */  beql      $v0, $zero, .L80263E4C
/* 192718 80263E38 24020200 */   addiu    $v0, $zero, 0x200
/* 19271C 80263E3C 10600007 */  beqz      $v1, .L80263E5C
/* 192720 80263E40 00000000 */   nop
/* 192724 80263E44 08098FAA */  j         .L80263EA8
/* 192728 80263E48 00000000 */   nop
.L80263E4C:
/* 19272C 80263E4C 1062000B */  beq       $v1, $v0, .L80263E7C
/* 192730 80263E50 00000000 */   nop
/* 192734 80263E54 08098FAA */  j         .L80263EA8
/* 192738 80263E58 00000000 */   nop
.L80263E5C:
/* 19273C 80263E5C 8E020088 */  lw        $v0, 0x88($s0)
/* 192740 80263E60 10450011 */  beq       $v0, $a1, .L80263EA8
/* 192744 80263E64 0000202D */   daddu    $a0, $zero, $zero
/* 192748 80263E68 8E060090 */  lw        $a2, 0x90($s0)
/* 19274C 80263E6C 0C0B76A3 */  jal       func_802DDA8C
/* 192750 80263E70 AE050088 */   sw       $a1, 0x88($s0)
/* 192754 80263E74 08098FAA */  j         .L80263EA8
/* 192758 80263E78 00000000 */   nop
.L80263E7C:
/* 19275C 80263E7C 8E020088 */  lw        $v0, 0x88($s0)
/* 192760 80263E80 10450009 */  beq       $v0, $a1, .L80263EA8
/* 192764 80263E84 00000000 */   nop
/* 192768 80263E88 8E040084 */  lw        $a0, 0x84($s0)
/* 19276C 80263E8C 8E060090 */  lw        $a2, 0x90($s0)
/* 192770 80263E90 0C0B78AB */  jal       spr_update_sprite
/* 192774 80263E94 AE050088 */   sw       $a1, 0x88($s0)
/* 192778 80263E98 8E040084 */  lw        $a0, 0x84($s0)
/* 19277C 80263E9C 0C0B7972 */  jal       func_802DE5C8
/* 192780 80263EA0 00000000 */   nop
/* 192784 80263EA4 AE02008C */  sw        $v0, 0x8c($s0)
.L80263EA8:
/* 192788 80263EA8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 19278C 80263EAC 8FB00010 */  lw        $s0, 0x10($sp)
/* 192790 80263EB0 03E00008 */  jr        $ra
/* 192794 80263EB4 27BD0018 */   addiu    $sp, $sp, 0x18
