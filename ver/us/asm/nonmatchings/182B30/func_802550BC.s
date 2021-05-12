.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802550BC
/* 18399C 802550BC 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 1839A0 802550C0 AFB50024 */  sw        $s5, 0x24($sp)
/* 1839A4 802550C4 00A0A82D */  daddu     $s5, $a1, $zero
/* 1839A8 802550C8 AFB40020 */  sw        $s4, 0x20($sp)
/* 1839AC 802550CC AFBF0030 */  sw        $ra, 0x30($sp)
/* 1839B0 802550D0 AFB7002C */  sw        $s7, 0x2c($sp)
/* 1839B4 802550D4 AFB60028 */  sw        $s6, 0x28($sp)
/* 1839B8 802550D8 AFB3001C */  sw        $s3, 0x1c($sp)
/* 1839BC 802550DC AFB20018 */  sw        $s2, 0x18($sp)
/* 1839C0 802550E0 AFB10014 */  sw        $s1, 0x14($sp)
/* 1839C4 802550E4 AFB00010 */  sw        $s0, 0x10($sp)
/* 1839C8 802550E8 F7B60040 */  sdc1      $f22, 0x40($sp)
/* 1839CC 802550EC F7B40038 */  sdc1      $f20, 0x38($sp)
/* 1839D0 802550F0 82B601F3 */  lb        $s6, 0x1f3($s5)
/* 1839D4 802550F4 8EB201F4 */  lw        $s2, 0x1f4($s5)
/* 1839D8 802550F8 1AC0006F */  blez      $s6, .L802552B8
/* 1839DC 802550FC 0000A02D */   daddu    $s4, $zero, $zero
/* 1839E0 80255100 3C178000 */  lui       $s7, 0x8000
/* 1839E4 80255104 3C013F00 */  lui       $at, 0x3f00
/* 1839E8 80255108 4481B000 */  mtc1      $at, $f22
/* 1839EC 8025510C 3C014F00 */  lui       $at, 0x4f00
/* 1839F0 80255110 4481A000 */  mtc1      $at, $f20
.L80255114:
/* 1839F4 80255114 8E430000 */  lw        $v1, ($s2)
/* 1839F8 80255118 30620001 */  andi      $v0, $v1, 1
/* 1839FC 8025511C 14400006 */  bnez      $v0, .L80255138
/* 183A00 80255120 00000000 */   nop
/* 183A04 80255124 8E420094 */  lw        $v0, 0x94($s2)
/* 183A08 80255128 10400003 */  beqz      $v0, .L80255138
/* 183A0C 8025512C 30620002 */   andi     $v0, $v1, 2
/* 183A10 80255130 10400004 */  beqz      $v0, .L80255144
/* 183A14 80255134 00000000 */   nop
.L80255138:
/* 183A18 80255138 8E52000C */  lw        $s2, 0xc($s2)
/* 183A1C 8025513C 080954AB */  j         .L802552AC
/* 183A20 80255140 26940001 */   addiu    $s4, $s4, 1
.L80255144:
/* 183A24 80255144 8E5300C0 */  lw        $s3, 0xc0($s2)
/* 183A28 80255148 C6400058 */  lwc1      $f0, 0x58($s2)
/* 183A2C 8025514C 827107D9 */  lb        $s1, 0x7d9($s3)
/* 183A30 80255150 4600008D */  trunc.w.s $f2, $f0
/* 183A34 80255154 44021000 */  mfc1      $v0, $f2
/* 183A38 80255158 00111840 */  sll       $v1, $s1, 1
/* 183A3C 8025515C 02631821 */  addu      $v1, $s3, $v1
/* 183A40 80255160 A46207FC */  sh        $v0, 0x7fc($v1)
/* 183A44 80255164 C640005C */  lwc1      $f0, 0x5c($s2)
/* 183A48 80255168 4600008D */  trunc.w.s $f2, $f0
/* 183A4C 8025516C 44021000 */  mfc1      $v0, $f2
/* 183A50 80255170 00000000 */  nop
/* 183A54 80255174 A462081C */  sh        $v0, 0x81c($v1)
/* 183A58 80255178 C6400060 */  lwc1      $f0, 0x60($s2)
/* 183A5C 8025517C 4600008D */  trunc.w.s $f2, $f0
/* 183A60 80255180 44021000 */  mfc1      $v0, $f2
/* 183A64 80255184 00000000 */  nop
/* 183A68 80255188 A462083C */  sh        $v0, 0x83c($v1)
/* 183A6C 8025518C C6A0018C */  lwc1      $f0, 0x18c($s5)
/* 183A70 80255190 4600008D */  trunc.w.s $f2, $f0
/* 183A74 80255194 44021000 */  mfc1      $v0, $f2
/* 183A78 80255198 00000000 */  nop
/* 183A7C 8025519C A46207DC */  sh        $v0, 0x7dc($v1)
/* 183A80 802551A0 92A20169 */  lbu       $v0, 0x169($s5)
/* 183A84 802551A4 02718021 */  addu      $s0, $s3, $s1
/* 183A88 802551A8 A202085C */  sb        $v0, 0x85c($s0)
/* 183A8C 802551AC 92A2016B */  lbu       $v0, 0x16b($s5)
/* 183A90 802551B0 A202086C */  sb        $v0, 0x86c($s0)
/* 183A94 802551B4 C6AC015C */  lwc1      $f12, 0x15c($s5)
/* 183A98 802551B8 0C00A6C9 */  jal       clamp_angle
/* 183A9C 802551BC 2610087C */   addiu    $s0, $s0, 0x87c
/* 183AA0 802551C0 46160002 */  mul.s     $f0, $f0, $f22
/* 183AA4 802551C4 00000000 */  nop
/* 183AA8 802551C8 4600A03E */  c.le.s    $f20, $f0
/* 183AAC 802551CC 00000000 */  nop
/* 183AB0 802551D0 45030005 */  bc1tl     .L802551E8
/* 183AB4 802551D4 46140001 */   sub.s    $f0, $f0, $f20
/* 183AB8 802551D8 4600008D */  trunc.w.s $f2, $f0
/* 183ABC 802551DC 44021000 */  mfc1      $v0, $f2
/* 183AC0 802551E0 0809547F */  j         .L802551FC
/* 183AC4 802551E4 A2020000 */   sb       $v0, ($s0)
.L802551E8:
/* 183AC8 802551E8 4600008D */  trunc.w.s $f2, $f0
/* 183ACC 802551EC 44021000 */  mfc1      $v0, $f2
/* 183AD0 802551F0 00000000 */  nop
/* 183AD4 802551F4 00571025 */  or        $v0, $v0, $s7
/* 183AD8 802551F8 A2020000 */  sb        $v0, ($s0)
.L802551FC:
/* 183ADC 802551FC 0C00A6C9 */  jal       clamp_angle
/* 183AE0 80255200 C6AC0160 */   lwc1     $f12, 0x160($s5)
/* 183AE4 80255204 46160002 */  mul.s     $f0, $f0, $f22
/* 183AE8 80255208 00000000 */  nop
/* 183AEC 8025520C 02711021 */  addu      $v0, $s3, $s1
/* 183AF0 80255210 4600A03E */  c.le.s    $f20, $f0
/* 183AF4 80255214 00000000 */  nop
/* 183AF8 80255218 45010005 */  bc1t      .L80255230
/* 183AFC 8025521C 2442088C */   addiu    $v0, $v0, 0x88c
/* 183B00 80255220 4600008D */  trunc.w.s $f2, $f0
/* 183B04 80255224 44031000 */  mfc1      $v1, $f2
/* 183B08 80255228 08095492 */  j         .L80255248
/* 183B0C 8025522C A0430000 */   sb       $v1, ($v0)
.L80255230:
/* 183B10 80255230 46140001 */  sub.s     $f0, $f0, $f20
/* 183B14 80255234 4600008D */  trunc.w.s $f2, $f0
/* 183B18 80255238 44031000 */  mfc1      $v1, $f2
/* 183B1C 8025523C 00000000 */  nop
/* 183B20 80255240 00771825 */  or        $v1, $v1, $s7
/* 183B24 80255244 A0430000 */  sb        $v1, ($v0)
.L80255248:
/* 183B28 80255248 0C00A6C9 */  jal       clamp_angle
/* 183B2C 8025524C C6AC0164 */   lwc1     $f12, 0x164($s5)
/* 183B30 80255250 46160002 */  mul.s     $f0, $f0, $f22
/* 183B34 80255254 00000000 */  nop
/* 183B38 80255258 02711021 */  addu      $v0, $s3, $s1
/* 183B3C 8025525C 4600A03E */  c.le.s    $f20, $f0
/* 183B40 80255260 00000000 */  nop
/* 183B44 80255264 45010005 */  bc1t      .L8025527C
/* 183B48 80255268 2442089C */   addiu    $v0, $v0, 0x89c
/* 183B4C 8025526C 4600008D */  trunc.w.s $f2, $f0
/* 183B50 80255270 44031000 */  mfc1      $v1, $f2
/* 183B54 80255274 080954A5 */  j         .L80255294
/* 183B58 80255278 A0430000 */   sb       $v1, ($v0)
.L8025527C:
/* 183B5C 8025527C 46140001 */  sub.s     $f0, $f0, $f20
/* 183B60 80255280 4600008D */  trunc.w.s $f2, $f0
/* 183B64 80255284 44031000 */  mfc1      $v1, $f2
/* 183B68 80255288 00000000 */  nop
/* 183B6C 8025528C 00771825 */  or        $v1, $v1, $s7
/* 183B70 80255290 A0430000 */  sb        $v1, ($v0)
.L80255294:
/* 183B74 80255294 26310001 */  addiu     $s1, $s1, 1
/* 183B78 80255298 2A220010 */  slti      $v0, $s1, 0x10
/* 183B7C 8025529C 50400001 */  beql      $v0, $zero, .L802552A4
/* 183B80 802552A0 0000882D */   daddu    $s1, $zero, $zero
.L802552A4:
/* 183B84 802552A4 A27107D9 */  sb        $s1, 0x7d9($s3)
/* 183B88 802552A8 26940001 */  addiu     $s4, $s4, 1
.L802552AC:
/* 183B8C 802552AC 0296102A */  slt       $v0, $s4, $s6
/* 183B90 802552B0 1440FF98 */  bnez      $v0, .L80255114
/* 183B94 802552B4 00000000 */   nop
.L802552B8:
/* 183B98 802552B8 8FBF0030 */  lw        $ra, 0x30($sp)
/* 183B9C 802552BC 8FB7002C */  lw        $s7, 0x2c($sp)
/* 183BA0 802552C0 8FB60028 */  lw        $s6, 0x28($sp)
/* 183BA4 802552C4 8FB50024 */  lw        $s5, 0x24($sp)
/* 183BA8 802552C8 8FB40020 */  lw        $s4, 0x20($sp)
/* 183BAC 802552CC 8FB3001C */  lw        $s3, 0x1c($sp)
/* 183BB0 802552D0 8FB20018 */  lw        $s2, 0x18($sp)
/* 183BB4 802552D4 8FB10014 */  lw        $s1, 0x14($sp)
/* 183BB8 802552D8 8FB00010 */  lw        $s0, 0x10($sp)
/* 183BBC 802552DC D7B60040 */  ldc1      $f22, 0x40($sp)
/* 183BC0 802552E0 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 183BC4 802552E4 03E00008 */  jr        $ra
/* 183BC8 802552E8 27BD0048 */   addiu    $sp, $sp, 0x48
