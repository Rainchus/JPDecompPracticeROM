.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel render_menu_icon
/* D92FC 80142BFC 27BDFCF8 */  addiu     $sp, $sp, -0x308
/* D9300 80142C00 AFB702E4 */  sw        $s7, 0x2e4($sp)
/* D9304 80142C04 0080B82D */  daddu     $s7, $a0, $zero
/* D9308 80142C08 AFBF02EC */  sw        $ra, 0x2ec($sp)
/* D930C 80142C0C AFBE02E8 */  sw        $fp, 0x2e8($sp)
/* D9310 80142C10 AFB602E0 */  sw        $s6, 0x2e0($sp)
/* D9314 80142C14 AFB502DC */  sw        $s5, 0x2dc($sp)
/* D9318 80142C18 AFB402D8 */  sw        $s4, 0x2d8($sp)
/* D931C 80142C1C AFB302D4 */  sw        $s3, 0x2d4($sp)
/* D9320 80142C20 AFB202D0 */  sw        $s2, 0x2d0($sp)
/* D9324 80142C24 AFB102CC */  sw        $s1, 0x2cc($sp)
/* D9328 80142C28 AFB002C8 */  sw        $s0, 0x2c8($sp)
/* D932C 80142C2C F7B80300 */  sdc1      $f24, 0x300($sp)
/* D9330 80142C30 F7B602F8 */  sdc1      $f22, 0x2f8($sp)
/* D9334 80142C34 F7B402F0 */  sdc1      $f20, 0x2f0($sp)
/* D9338 80142C38 8EE20000 */  lw        $v0, ($s7)
/* D933C 80142C3C 30428000 */  andi      $v0, $v0, 0x8000
/* D9340 80142C40 1040000C */  beqz      $v0, .L80142C74
/* D9344 80142C44 3C05E300 */   lui      $a1, 0xe300
/* D9348 80142C48 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* D934C 80142C4C 2463A66C */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* D9350 80142C50 8C620000 */  lw        $v0, ($v1)
/* D9354 80142C54 34A51201 */  ori       $a1, $a1, 0x1201
/* D9358 80142C58 0040202D */  daddu     $a0, $v0, $zero
/* D935C 80142C5C 24420008 */  addiu     $v0, $v0, 8
/* D9360 80142C60 AC620000 */  sw        $v0, ($v1)
/* D9364 80142C64 24023000 */  addiu     $v0, $zero, 0x3000
/* D9368 80142C68 AC850000 */  sw        $a1, ($a0)
/* D936C 80142C6C 08050B26 */  j         .L80142C98
/* D9370 80142C70 AC820004 */   sw       $v0, 4($a0)
.L80142C74:
/* D9374 80142C74 3C04800A */  lui       $a0, %hi(gMasterGfxPos)
/* D9378 80142C78 2484A66C */  addiu     $a0, $a0, %lo(gMasterGfxPos)
/* D937C 80142C7C 8C820000 */  lw        $v0, ($a0)
/* D9380 80142C80 34A51201 */  ori       $a1, $a1, 0x1201
/* D9384 80142C84 0040182D */  daddu     $v1, $v0, $zero
/* D9388 80142C88 24420008 */  addiu     $v0, $v0, 8
/* D938C 80142C8C AC820000 */  sw        $v0, ($a0)
/* D9390 80142C90 AC650000 */  sw        $a1, ($v1)
/* D9394 80142C94 AC600004 */  sw        $zero, 4($v1)
.L80142C98:
/* D9398 80142C98 8EE30000 */  lw        $v1, ($s7)
/* D939C 80142C9C 30620100 */  andi      $v0, $v1, 0x100
/* D93A0 80142CA0 14400005 */  bnez      $v0, .L80142CB8
/* D93A4 80142CA4 3C020010 */   lui      $v0, 0x10
/* D93A8 80142CA8 3C013F80 */  lui       $at, 0x3f80
/* D93AC 80142CAC 4481A000 */  mtc1      $at, $f20
/* D93B0 80142CB0 08050B51 */  j         .L80142D44
/* D93B4 80142CB4 4600A606 */   mov.s    $f24, $f20
.L80142CB8:
/* D93B8 80142CB8 00621024 */  and       $v0, $v1, $v0
/* D93BC 80142CBC 14400011 */  bnez      $v0, .L80142D04
/* D93C0 80142CC0 00000000 */   nop
/* D93C4 80142CC4 82E30046 */  lb        $v1, 0x46($s7)
/* D93C8 80142CC8 3C048015 */  lui       $a0, %hi(D_8014EFCC)
/* D93CC 80142CCC 2484EFCC */  addiu     $a0, $a0, %lo(D_8014EFCC)
/* D93D0 80142CD0 00031040 */  sll       $v0, $v1, 1
/* D93D4 80142CD4 00431021 */  addu      $v0, $v0, $v1
/* D93D8 80142CD8 00021040 */  sll       $v0, $v0, 1
/* D93DC 80142CDC 00441021 */  addu      $v0, $v0, $a0
/* D93E0 80142CE0 84430000 */  lh        $v1, ($v0)
/* D93E4 80142CE4 84420002 */  lh        $v0, 2($v0)
/* D93E8 80142CE8 4483C000 */  mtc1      $v1, $f24
/* D93EC 80142CEC 00000000 */  nop
/* D93F0 80142CF0 4680C620 */  cvt.s.w   $f24, $f24
/* D93F4 80142CF4 4482A000 */  mtc1      $v0, $f20
/* D93F8 80142CF8 00000000 */  nop
/* D93FC 80142CFC 08050B49 */  j         .L80142D24
/* D9400 80142D00 4680A520 */   cvt.s.w  $f20, $f20
.L80142D04:
/* D9404 80142D04 92E2004E */  lbu       $v0, 0x4e($s7)
/* D9408 80142D08 92E3004F */  lbu       $v1, 0x4f($s7)
/* D940C 80142D0C 4482C000 */  mtc1      $v0, $f24
/* D9410 80142D10 00000000 */  nop
/* D9414 80142D14 4680C620 */  cvt.s.w   $f24, $f24
/* D9418 80142D18 4483A000 */  mtc1      $v1, $f20
/* D941C 80142D1C 00000000 */  nop
/* D9420 80142D20 4680A520 */  cvt.s.w   $f20, $f20
.L80142D24:
/* D9424 80142D24 C6E00028 */  lwc1      $f0, 0x28($s7)
/* D9428 80142D28 3C013F80 */  lui       $at, 0x3f80
/* D942C 80142D2C 44811000 */  mtc1      $at, $f2
/* D9430 80142D30 4600C603 */  div.s     $f24, $f24, $f0
/* D9434 80142D34 C6E0002C */  lwc1      $f0, 0x2c($s7)
/* D9438 80142D38 46181603 */  div.s     $f24, $f2, $f24
/* D943C 80142D3C 4600A503 */  div.s     $f20, $f20, $f0
/* D9440 80142D40 46141503 */  div.s     $f20, $f2, $f20
.L80142D44:
/* D9444 80142D44 8EE20000 */  lw        $v0, ($s7)
/* D9448 80142D48 3C030010 */  lui       $v1, 0x10
/* D944C 80142D4C 00431024 */  and       $v0, $v0, $v1
/* D9450 80142D50 1440000C */  bnez      $v0, .L80142D84
/* D9454 80142D54 00000000 */   nop
/* D9458 80142D58 82E20046 */  lb        $v0, 0x46($s7)
/* D945C 80142D5C 3C048015 */  lui       $a0, %hi(D_8014EFCC)
/* D9460 80142D60 2484EFCC */  addiu     $a0, $a0, %lo(D_8014EFCC)
/* D9464 80142D64 00021840 */  sll       $v1, $v0, 1
/* D9468 80142D68 00621821 */  addu      $v1, $v1, $v0
/* D946C 80142D6C 00031840 */  sll       $v1, $v1, 1
/* D9470 80142D70 00641821 */  addu      $v1, $v1, $a0
/* D9474 80142D74 84760000 */  lh        $s6, ($v1)
/* D9478 80142D78 84630002 */  lh        $v1, 2($v1)
/* D947C 80142D7C 08050B64 */  j         .L80142D90
/* D9480 80142D80 AFA302B8 */   sw       $v1, 0x2b8($sp)
.L80142D84:
/* D9484 80142D84 92F6004E */  lbu       $s6, 0x4e($s7)
/* D9488 80142D88 92ED004F */  lbu       $t5, 0x4f($s7)
/* D948C 80142D8C AFAD02B8 */  sw        $t5, 0x2b8($sp)
.L80142D90:
/* D9490 80142D90 4480B000 */  mtc1      $zero, $f22
/* D9494 80142D94 27AE01E0 */  addiu     $t6, $sp, 0x1e0
/* D9498 80142D98 AFAE02BC */  sw        $t6, 0x2bc($sp)
/* D949C 80142D9C 8EFE001C */  lw        $fp, 0x1c($s7)
/* D94A0 80142DA0 4407B000 */  mfc1      $a3, $f22
/* D94A4 80142DA4 87C30028 */  lh        $v1, 0x28($fp)
/* D94A8 80142DA8 87C2002A */  lh        $v0, 0x2a($fp)
/* D94AC 80142DAC 44833000 */  mtc1      $v1, $f6
/* D94B0 80142DB0 00000000 */  nop
/* D94B4 80142DB4 468031A0 */  cvt.s.w   $f6, $f6
/* D94B8 80142DB8 00021023 */  negu      $v0, $v0
/* D94BC 80142DBC 44053000 */  mfc1      $a1, $f6
/* D94C0 80142DC0 44823000 */  mtc1      $v0, $f6
/* D94C4 80142DC4 00000000 */  nop
/* D94C8 80142DC8 468031A0 */  cvt.s.w   $f6, $f6
/* D94CC 80142DCC 44063000 */  mfc1      $a2, $f6
/* D94D0 80142DD0 0C019E40 */  jal       guTranslateF
/* D94D4 80142DD4 01C0202D */   daddu    $a0, $t6, $zero
/* D94D8 80142DD8 27AD0220 */  addiu     $t5, $sp, 0x220
/* D94DC 80142DDC AFAD02C0 */  sw        $t5, 0x2c0($sp)
/* D94E0 80142DE0 87C20028 */  lh        $v0, 0x28($fp)
/* D94E4 80142DE4 4407B000 */  mfc1      $a3, $f22
/* D94E8 80142DE8 87C3002A */  lh        $v1, 0x2a($fp)
/* D94EC 80142DEC 00021023 */  negu      $v0, $v0
/* D94F0 80142DF0 44823000 */  mtc1      $v0, $f6
/* D94F4 80142DF4 00000000 */  nop
/* D94F8 80142DF8 468031A0 */  cvt.s.w   $f6, $f6
/* D94FC 80142DFC 44053000 */  mfc1      $a1, $f6
/* D9500 80142E00 44833000 */  mtc1      $v1, $f6
/* D9504 80142E04 00000000 */  nop
/* D9508 80142E08 468031A0 */  cvt.s.w   $f6, $f6
/* D950C 80142E0C 44063000 */  mfc1      $a2, $f6
/* D9510 80142E10 0C019E40 */  jal       guTranslateF
/* D9514 80142E14 01A0202D */   daddu    $a0, $t5, $zero
/* D9518 80142E18 86E2003C */  lh        $v0, 0x3c($s7)
/* D951C 80142E1C 82E30040 */  lb        $v1, 0x40($s7)
/* D9520 80142E20 82E40042 */  lb        $a0, 0x42($s7)
/* D9524 80142E24 C7C00004 */  lwc1      $f0, 4($fp)
/* D9528 80142E28 3C014024 */  lui       $at, 0x4024
/* D952C 80142E2C 44812800 */  mtc1      $at, $f5
/* D9530 80142E30 44802000 */  mtc1      $zero, $f4
/* D9534 80142E34 00431021 */  addu      $v0, $v0, $v1
/* D9538 80142E38 00441021 */  addu      $v0, $v0, $a0
/* D953C 80142E3C 44821000 */  mtc1      $v0, $f2
/* D9540 80142E40 00000000 */  nop
/* D9544 80142E44 468010A0 */  cvt.s.w   $f2, $f2
/* D9548 80142E48 46001080 */  add.s     $f2, $f2, $f0
/* D954C 80142E4C 86E2003E */  lh        $v0, 0x3e($s7)
/* D9550 80142E50 82E30041 */  lb        $v1, 0x41($s7)
/* D9554 80142E54 82E40043 */  lb        $a0, 0x43($s7)
/* D9558 80142E58 C7C00008 */  lwc1      $f0, 8($fp)
/* D955C 80142E5C 00021023 */  negu      $v0, $v0
/* D9560 80142E60 00431023 */  subu      $v0, $v0, $v1
/* D9564 80142E64 00441021 */  addu      $v0, $v0, $a0
/* D9568 80142E68 44051000 */  mfc1      $a1, $f2
/* D956C 80142E6C 44821000 */  mtc1      $v0, $f2
/* D9570 80142E70 00000000 */  nop
/* D9574 80142E74 468010A0 */  cvt.s.w   $f2, $f2
/* D9578 80142E78 82E20044 */  lb        $v0, 0x44($s7)
/* D957C 80142E7C 46001080 */  add.s     $f2, $f2, $f0
/* D9580 80142E80 44820000 */  mtc1      $v0, $f0
/* D9584 80142E84 00000000 */  nop
/* D9588 80142E88 46800021 */  cvt.d.w   $f0, $f0
/* D958C 80142E8C 46240003 */  div.d     $f0, $f0, $f4
/* D9590 80142E90 44061000 */  mfc1      $a2, $f2
/* D9594 80142E94 C7C2000C */  lwc1      $f2, 0xc($fp)
/* D9598 80142E98 46200007 */  neg.d     $f0, $f0
/* D959C 80142E9C 460010A1 */  cvt.d.s   $f2, $f2
/* D95A0 80142EA0 46220000 */  add.d     $f0, $f0, $f2
/* D95A4 80142EA4 27B401A0 */  addiu     $s4, $sp, 0x1a0
/* D95A8 80142EA8 46200020 */  cvt.s.d   $f0, $f0
/* D95AC 80142EAC 44070000 */  mfc1      $a3, $f0
/* D95B0 80142EB0 0C019E40 */  jal       guTranslateF
/* D95B4 80142EB4 0280202D */   daddu    $a0, $s4, $zero
/* D95B8 80142EB8 C6E20030 */  lwc1      $f2, 0x30($s7)
/* D95BC 80142EBC 46181102 */  mul.s     $f4, $f2, $f24
/* D95C0 80142EC0 00000000 */  nop
/* D95C4 80142EC4 46141082 */  mul.s     $f2, $f2, $f20
/* D95C8 80142EC8 00000000 */  nop
/* D95CC 80142ECC C7C0001C */  lwc1      $f0, 0x1c($fp)
/* D95D0 80142ED0 46002102 */  mul.s     $f4, $f4, $f0
/* D95D4 80142ED4 00000000 */  nop
/* D95D8 80142ED8 C7C00020 */  lwc1      $f0, 0x20($fp)
/* D95DC 80142EDC 3C150001 */  lui       $s5, 1
/* D95E0 80142EE0 46001082 */  mul.s     $f2, $f2, $f0
/* D95E4 80142EE4 00000000 */  nop
/* D95E8 80142EE8 36B51630 */  ori       $s5, $s5, 0x1630
/* D95EC 80142EEC 27B30260 */  addiu     $s3, $sp, 0x260
/* D95F0 80142EF0 8FC70024 */  lw        $a3, 0x24($fp)
/* D95F4 80142EF4 44052000 */  mfc1      $a1, $f4
/* D95F8 80142EF8 44061000 */  mfc1      $a2, $f2
/* D95FC 80142EFC 0C019DF0 */  jal       guScaleF
/* D9600 80142F00 0260202D */   daddu    $a0, $s3, $zero
/* D9604 80142F04 27B20120 */  addiu     $s2, $sp, 0x120
/* D9608 80142F08 E7B60010 */  swc1      $f22, 0x10($sp)
/* D960C 80142F0C 8FC50014 */  lw        $a1, 0x14($fp)
/* D9610 80142F10 3C013F80 */  lui       $at, 0x3f80
/* D9614 80142F14 4481A000 */  mtc1      $at, $f20
/* D9618 80142F18 4406B000 */  mfc1      $a2, $f22
/* D961C 80142F1C 4407A000 */  mfc1      $a3, $f20
/* D9620 80142F20 0C019EC8 */  jal       guRotateF
/* D9624 80142F24 0240202D */   daddu    $a0, $s2, $zero
/* D9628 80142F28 27B10160 */  addiu     $s1, $sp, 0x160
/* D962C 80142F2C E7B40010 */  swc1      $f20, 0x10($sp)
/* D9630 80142F30 8FC50018 */  lw        $a1, 0x18($fp)
/* D9634 80142F34 4406B000 */  mfc1      $a2, $f22
/* D9638 80142F38 4407B000 */  mfc1      $a3, $f22
/* D963C 80142F3C 0C019EC8 */  jal       guRotateF
/* D9640 80142F40 0220202D */   daddu    $a0, $s1, $zero
/* D9644 80142F44 27B000E0 */  addiu     $s0, $sp, 0xe0
/* D9648 80142F48 E7B60010 */  swc1      $f22, 0x10($sp)
/* D964C 80142F4C 8FC50010 */  lw        $a1, 0x10($fp)
/* D9650 80142F50 4406A000 */  mfc1      $a2, $f20
/* D9654 80142F54 4407B000 */  mfc1      $a3, $f22
/* D9658 80142F58 0C019EC8 */  jal       guRotateF
/* D965C 80142F5C 0200202D */   daddu    $a0, $s0, $zero
/* D9660 80142F60 0220202D */  daddu     $a0, $s1, $zero
/* D9664 80142F64 0200282D */  daddu     $a1, $s0, $zero
/* D9668 80142F68 0C019D80 */  jal       guMtxCatF
/* D966C 80142F6C 27A60020 */   addiu    $a2, $sp, 0x20
/* D9670 80142F70 27A40020 */  addiu     $a0, $sp, 0x20
/* D9674 80142F74 0240282D */  daddu     $a1, $s2, $zero
/* D9678 80142F78 27B000A0 */  addiu     $s0, $sp, 0xa0
/* D967C 80142F7C 0C019D80 */  jal       guMtxCatF
/* D9680 80142F80 0200302D */   daddu    $a2, $s0, $zero
/* D9684 80142F84 0260202D */  daddu     $a0, $s3, $zero
/* D9688 80142F88 8FA502BC */  lw        $a1, 0x2bc($sp)
/* D968C 80142F8C 0C019D80 */  jal       guMtxCatF
/* D9690 80142F90 27A60020 */   addiu    $a2, $sp, 0x20
/* D9694 80142F94 27A40020 */  addiu     $a0, $sp, 0x20
/* D9698 80142F98 0200282D */  daddu     $a1, $s0, $zero
/* D969C 80142F9C 27B00060 */  addiu     $s0, $sp, 0x60
/* D96A0 80142FA0 0C019D80 */  jal       guMtxCatF
/* D96A4 80142FA4 0200302D */   daddu    $a2, $s0, $zero
/* D96A8 80142FA8 0200202D */  daddu     $a0, $s0, $zero
/* D96AC 80142FAC 8FA502C0 */  lw        $a1, 0x2c0($sp)
/* D96B0 80142FB0 0C019D80 */  jal       guMtxCatF
/* D96B4 80142FB4 27A60020 */   addiu    $a2, $sp, 0x20
/* D96B8 80142FB8 27A40020 */  addiu     $a0, $sp, 0x20
/* D96BC 80142FBC 0280282D */  daddu     $a1, $s4, $zero
/* D96C0 80142FC0 0C019D80 */  jal       guMtxCatF
/* D96C4 80142FC4 0200302D */   daddu    $a2, $s0, $zero
/* D96C8 80142FC8 0200202D */  daddu     $a0, $s0, $zero
/* D96CC 80142FCC 3C108007 */  lui       $s0, %hi(gMatrixListPos)
/* D96D0 80142FD0 261041F0 */  addiu     $s0, $s0, %lo(gMatrixListPos)
/* D96D4 80142FD4 3C11800A */  lui       $s1, %hi(gDisplayContext)
/* D96D8 80142FD8 2631A674 */  addiu     $s1, $s1, %lo(gDisplayContext)
/* D96DC 80142FDC 96050000 */  lhu       $a1, ($s0)
/* D96E0 80142FE0 8E220000 */  lw        $v0, ($s1)
/* D96E4 80142FE4 00052980 */  sll       $a1, $a1, 6
/* D96E8 80142FE8 00B52821 */  addu      $a1, $a1, $s5
/* D96EC 80142FEC 0C019D40 */  jal       guMtxF2L
/* D96F0 80142FF0 00452821 */   addu     $a1, $v0, $a1
/* D96F4 80142FF4 3C06DA38 */  lui       $a2, 0xda38
/* D96F8 80142FF8 34C60002 */  ori       $a2, $a2, 2
/* D96FC 80142FFC 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* D9700 80143000 2463A66C */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* D9704 80143004 0000382D */  daddu     $a3, $zero, $zero
/* D9708 80143008 8C620000 */  lw        $v0, ($v1)
/* D970C 8014300C 96040000 */  lhu       $a0, ($s0)
/* D9710 80143010 0040282D */  daddu     $a1, $v0, $zero
/* D9714 80143014 24420008 */  addiu     $v0, $v0, 8
/* D9718 80143018 AC620000 */  sw        $v0, ($v1)
/* D971C 8014301C 3082FFFF */  andi      $v0, $a0, 0xffff
/* D9720 80143020 00021180 */  sll       $v0, $v0, 6
/* D9724 80143024 ACA60000 */  sw        $a2, ($a1)
/* D9728 80143028 8E230000 */  lw        $v1, ($s1)
/* D972C 8014302C 00551021 */  addu      $v0, $v0, $s5
/* D9730 80143030 00621821 */  addu      $v1, $v1, $v0
/* D9734 80143034 3C028000 */  lui       $v0, 0x8000
/* D9738 80143038 00621821 */  addu      $v1, $v1, $v0
/* D973C 8014303C ACA30004 */  sw        $v1, 4($a1)
/* D9740 80143040 8EE30000 */  lw        $v1, ($s7)
/* D9744 80143044 24840001 */  addiu     $a0, $a0, 1
/* D9748 80143048 A6040000 */  sh        $a0, ($s0)
/* D974C 8014304C 30624000 */  andi      $v0, $v1, 0x4000
/* D9750 80143050 00E2202B */  sltu      $a0, $a3, $v0
/* D9754 80143054 3C020008 */  lui       $v0, 8
/* D9758 80143058 00621824 */  and       $v1, $v1, $v0
/* D975C 8014305C 24020001 */  addiu     $v0, $zero, 1
/* D9760 80143060 14820002 */  bne       $a0, $v0, .L8014306C
/* D9764 80143064 00E3182B */   sltu     $v1, $a3, $v1
/* D9768 80143068 0062382B */  sltu      $a3, $v1, $v0
.L8014306C:
/* D976C 8014306C 54800004 */  bnel      $a0, $zero, .L80143080
/* D9770 80143070 24020001 */   addiu    $v0, $zero, 1
/* D9774 80143074 50620001 */  beql      $v1, $v0, .L8014307C
/* D9778 80143078 24070002 */   addiu    $a3, $zero, 2
.L8014307C:
/* D977C 8014307C 24020001 */  addiu     $v0, $zero, 1
.L80143080:
/* D9780 80143080 14820004 */  bne       $a0, $v0, .L80143094
/* D9784 80143084 24020001 */   addiu    $v0, $zero, 1
/* D9788 80143088 50640002 */  beql      $v1, $a0, .L80143094
/* D978C 8014308C 24070002 */   addiu    $a3, $zero, 2
/* D9790 80143090 24020001 */  addiu     $v0, $zero, 1
.L80143094:
/* D9794 80143094 10E20005 */  beq       $a3, $v0, .L801430AC
/* D9798 80143098 24020002 */   addiu    $v0, $zero, 2
/* D979C 8014309C 10E20052 */  beq       $a3, $v0, .L801431E8
/* D97A0 801430A0 3C03D838 */   lui      $v1, 0xd838
/* D97A4 801430A4 08050D8F */  j         .L8014363C
/* D97A8 801430A8 00000000 */   nop
.L801430AC:
/* D97AC 801430AC 8EE30000 */  lw        $v1, ($s7)
/* D97B0 801430B0 3C020002 */  lui       $v0, 2
/* D97B4 801430B4 00621024 */  and       $v0, $v1, $v0
/* D97B8 801430B8 10400013 */  beqz      $v0, .L80143108
/* D97BC 801430BC 30620020 */   andi     $v0, $v1, 0x20
/* D97C0 801430C0 1040000A */  beqz      $v0, .L801430EC
/* D97C4 801430C4 0000202D */   daddu    $a0, $zero, $zero
/* D97C8 801430C8 24050007 */  addiu     $a1, $zero, 7
/* D97CC 801430CC 240600FF */  addiu     $a2, $zero, 0xff
/* D97D0 801430D0 00C0102D */  daddu     $v0, $a2, $zero
/* D97D4 801430D4 AFA20010 */  sw        $v0, 0x10($sp)
/* D97D8 801430D8 92E2004A */  lbu       $v0, 0x4a($s7)
/* D97DC 801430DC 00C0382D */  daddu     $a3, $a2, $zero
/* D97E0 801430E0 AFA00018 */  sw        $zero, 0x18($sp)
/* D97E4 801430E4 08050C54 */  j         .L80143150
/* D97E8 801430E8 AFA20014 */   sw       $v0, 0x14($sp)
.L801430EC:
/* D97EC 801430EC 0080282D */  daddu     $a1, $a0, $zero
/* D97F0 801430F0 0080302D */  daddu     $a2, $a0, $zero
/* D97F4 801430F4 0080382D */  daddu     $a3, $a0, $zero
/* D97F8 801430F8 AFA00010 */  sw        $zero, 0x10($sp)
/* D97FC 801430FC AFA00014 */  sw        $zero, 0x14($sp)
/* D9800 80143100 08050C54 */  j         .L80143150
/* D9804 80143104 AFA00018 */   sw       $zero, 0x18($sp)
.L80143108:
/* D9808 80143108 1040000A */  beqz      $v0, .L80143134
/* D980C 8014310C 24050007 */   addiu    $a1, $zero, 7
/* D9810 80143110 240200FF */  addiu     $v0, $zero, 0xff
/* D9814 80143114 AFA20010 */  sw        $v0, 0x10($sp)
/* D9818 80143118 92E2004A */  lbu       $v0, 0x4a($s7)
/* D981C 8014311C 240600FF */  addiu     $a2, $zero, 0xff
/* D9820 80143120 AFA00018 */  sw        $zero, 0x18($sp)
/* D9824 80143124 AFA20014 */  sw        $v0, 0x14($sp)
/* D9828 80143128 8FC40000 */  lw        $a0, ($fp)
/* D982C 8014312C 08050C54 */  j         .L80143150
/* D9830 80143130 00C0382D */   daddu    $a3, $a2, $zero
.L80143134:
/* D9834 80143134 0000282D */  daddu     $a1, $zero, $zero
/* D9838 80143138 00A0302D */  daddu     $a2, $a1, $zero
/* D983C 8014313C AFA00010 */  sw        $zero, 0x10($sp)
/* D9840 80143140 AFA00014 */  sw        $zero, 0x14($sp)
/* D9844 80143144 AFA00018 */  sw        $zero, 0x18($sp)
/* D9848 80143148 8FC40000 */  lw        $a0, ($fp)
/* D984C 8014314C 00A0382D */  daddu     $a3, $a1, $zero
.L80143150:
/* D9850 80143150 0C04EAA7 */  jal       func_8013AA9C
/* D9854 80143154 00000000 */   nop
/* D9858 80143158 8EE20010 */  lw        $v0, 0x10($s7)
/* D985C 8014315C 8FAE02B8 */  lw        $t6, 0x2b8($sp)
/* D9860 80143160 AFA202A0 */  sw        $v0, 0x2a0($sp)
/* D9864 80143164 00161023 */  negu      $v0, $s6
/* D9868 80143168 00021FC2 */  srl       $v1, $v0, 0x1f
/* D986C 8014316C 00431021 */  addu      $v0, $v0, $v1
/* D9870 80143170 8EE40014 */  lw        $a0, 0x14($s7)
/* D9874 80143174 00021043 */  sra       $v0, $v0, 1
/* D9878 80143178 A7A202AC */  sh        $v0, 0x2ac($sp)
/* D987C 8014317C 000E17C2 */  srl       $v0, $t6, 0x1f
/* D9880 80143180 01C21021 */  addu      $v0, $t6, $v0
/* D9884 80143184 97AD02BA */  lhu       $t5, 0x2ba($sp)
/* D9888 80143188 00021043 */  sra       $v0, $v0, 1
/* D988C 8014318C A7A202AE */  sh        $v0, 0x2ae($sp)
/* D9890 80143190 240200FF */  addiu     $v0, $zero, 0xff
/* D9894 80143194 A7B602A8 */  sh        $s6, 0x2a8($sp)
/* D9898 80143198 A3A202B0 */  sb        $v0, 0x2b0($sp)
/* D989C 8014319C A7AD02AA */  sh        $t5, 0x2aa($sp)
/* D98A0 801431A0 AFA402A4 */  sw        $a0, 0x2a4($sp)
/* D98A4 801431A4 8EE30000 */  lw        $v1, ($s7)
/* D98A8 801431A8 3C020002 */  lui       $v0, 2
/* D98AC 801431AC 00621024 */  and       $v0, $v1, $v0
/* D98B0 801431B0 10400006 */  beqz      $v0, .L801431CC
/* D98B4 801431B4 3C020080 */   lui      $v0, 0x80
/* D98B8 801431B8 00621024 */  and       $v0, $v1, $v0
/* D98BC 801431BC 14400004 */  bnez      $v0, .L801431D0
/* D98C0 801431C0 0000202D */   daddu    $a0, $zero, $zero
/* D98C4 801431C4 08050C75 */  j         .L801431D4
/* D98C8 801431C8 27A502A0 */   addiu    $a1, $sp, 0x2a0
.L801431CC:
/* D98CC 801431CC 8FC40000 */  lw        $a0, ($fp)
.L801431D0:
/* D98D0 801431D0 27A502A0 */  addiu     $a1, $sp, 0x2a0
.L801431D4:
/* D98D4 801431D4 24060040 */  addiu     $a2, $zero, 0x40
/* D98D8 801431D8 0C04EBDC */  jal       func_8013AF70
/* D98DC 801431DC 27A70060 */   addiu    $a3, $sp, 0x60
/* D98E0 801431E0 08050D8F */  j         .L8014363C
/* D98E4 801431E4 3C03D838 */   lui      $v1, 0xd838
.L801431E8:
/* D98E8 801431E8 3C0AFC11 */  lui       $t2, 0xfc11
/* D98EC 801431EC 354AB223 */  ori       $t2, $t2, 0xb223
/* D98F0 801431F0 3C09FF67 */  lui       $t1, 0xff67
/* D98F4 801431F4 3529FFFF */  ori       $t1, $t1, 0xffff
/* D98F8 801431F8 3C078016 */  lui       $a3, %hi(D_80159180)
/* D98FC 801431FC 24E79180 */  addiu     $a3, $a3, %lo(D_80159180)
/* D9900 80143200 3C0C800A */  lui       $t4, %hi(gMasterGfxPos)
/* D9904 80143204 258CA66C */  addiu     $t4, $t4, %lo(gMasterGfxPos)
/* D9908 80143208 3C068015 */  lui       $a2, %hi(D_8014F0C8)
/* D990C 8014320C 24C6F0C8 */  addiu     $a2, $a2, %lo(D_8014F0C8)
/* D9910 80143210 8CE50000 */  lw        $a1, ($a3)
/* D9914 80143214 8D8B0000 */  lw        $t3, ($t4)
/* D9918 80143218 8CE20000 */  lw        $v0, ($a3)
/* D991C 8014321C 8CE30000 */  lw        $v1, ($a3)
/* D9920 80143220 00052980 */  sll       $a1, $a1, 6
/* D9924 80143224 24A50030 */  addiu     $a1, $a1, 0x30
/* D9928 80143228 03C52821 */  addu      $a1, $fp, $a1
/* D992C 8014322C 00021180 */  sll       $v0, $v0, 6
/* D9930 80143230 03C21021 */  addu      $v0, $fp, $v0
/* D9934 80143234 00031980 */  sll       $v1, $v1, 6
/* D9938 80143238 03C31821 */  addu      $v1, $fp, $v1
/* D993C 8014323C 0160402D */  daddu     $t0, $t3, $zero
/* D9940 80143240 8CCF0000 */  lw        $t7, ($a2)
/* D9944 80143244 8CD80004 */  lw        $t8, 4($a2)
/* D9948 80143248 8CCD0008 */  lw        $t5, 8($a2)
/* D994C 8014324C 8CCE000C */  lw        $t6, 0xc($a2)
/* D9950 80143250 AC4F0030 */  sw        $t7, 0x30($v0)
/* D9954 80143254 AC580034 */  sw        $t8, 0x34($v0)
/* D9958 80143258 AC4D0038 */  sw        $t5, 0x38($v0)
/* D995C 8014325C AC4E003C */  sw        $t6, 0x3c($v0)
/* D9960 80143260 8CE40000 */  lw        $a0, ($a3)
/* D9964 80143264 256B0008 */  addiu     $t3, $t3, 8
/* D9968 80143268 8CCF0010 */  lw        $t7, 0x10($a2)
/* D996C 8014326C 8CD80014 */  lw        $t8, 0x14($a2)
/* D9970 80143270 8CCD0018 */  lw        $t5, 0x18($a2)
/* D9974 80143274 8CCE001C */  lw        $t6, 0x1c($a2)
/* D9978 80143278 AC6F0040 */  sw        $t7, 0x40($v1)
/* D997C 8014327C AC780044 */  sw        $t8, 0x44($v1)
/* D9980 80143280 AC6D0048 */  sw        $t5, 0x48($v1)
/* D9984 80143284 AC6E004C */  sw        $t6, 0x4c($v1)
/* D9988 80143288 8CE20000 */  lw        $v0, ($a3)
/* D998C 8014328C 00042180 */  sll       $a0, $a0, 6
/* D9990 80143290 03C42021 */  addu      $a0, $fp, $a0
/* D9994 80143294 00021180 */  sll       $v0, $v0, 6
/* D9998 80143298 03C21021 */  addu      $v0, $fp, $v0
/* D999C 8014329C 8CCF0020 */  lw        $t7, 0x20($a2)
/* D99A0 801432A0 8CD80024 */  lw        $t8, 0x24($a2)
/* D99A4 801432A4 8CCD0028 */  lw        $t5, 0x28($a2)
/* D99A8 801432A8 8CCE002C */  lw        $t6, 0x2c($a2)
/* D99AC 801432AC AC8F0050 */  sw        $t7, 0x50($a0)
/* D99B0 801432B0 AC980054 */  sw        $t8, 0x54($a0)
/* D99B4 801432B4 AC8D0058 */  sw        $t5, 0x58($a0)
/* D99B8 801432B8 AC8E005C */  sw        $t6, 0x5c($a0)
/* D99BC 801432BC 8CCF0030 */  lw        $t7, 0x30($a2)
/* D99C0 801432C0 8CD80034 */  lw        $t8, 0x34($a2)
/* D99C4 801432C4 8CCD0038 */  lw        $t5, 0x38($a2)
/* D99C8 801432C8 8CCE003C */  lw        $t6, 0x3c($a2)
/* D99CC 801432CC AC4F0060 */  sw        $t7, 0x60($v0)
/* D99D0 801432D0 AC580064 */  sw        $t8, 0x64($v0)
/* D99D4 801432D4 AC4D0068 */  sw        $t5, 0x68($v0)
/* D99D8 801432D8 AC4E006C */  sw        $t6, 0x6c($v0)
/* D99DC 801432DC 00163023 */  negu      $a2, $s6
/* D99E0 801432E0 000617C2 */  srl       $v0, $a2, 0x1f
/* D99E4 801432E4 00C23021 */  addu      $a2, $a2, $v0
/* D99E8 801432E8 00063043 */  sra       $a2, $a2, 1
/* D99EC 801432EC A4A60000 */  sh        $a2, ($a1)
/* D99F0 801432F0 8FAF02B8 */  lw        $t7, 0x2b8($sp)
/* D99F4 801432F4 00A0202D */  daddu     $a0, $a1, $zero
/* D99F8 801432F8 A4A00004 */  sh        $zero, 4($a1)
/* D99FC 801432FC A4A00008 */  sh        $zero, 8($a1)
/* D9A00 80143300 000F1823 */  negu      $v1, $t7
/* D9A04 80143304 000317C2 */  srl       $v0, $v1, 0x1f
/* D9A08 80143308 00621821 */  addu      $v1, $v1, $v0
/* D9A0C 8014330C 00031843 */  sra       $v1, $v1, 1
/* D9A10 80143310 000F3940 */  sll       $a3, $t7, 5
/* D9A14 80143314 A4A30002 */  sh        $v1, 2($a1)
/* D9A18 80143318 A4A7000A */  sh        $a3, 0xa($a1)
/* D9A1C 8014331C 24A50010 */  addiu     $a1, $a1, 0x10
/* D9A20 80143320 001617C2 */  srl       $v0, $s6, 0x1f
/* D9A24 80143324 02C21021 */  addu      $v0, $s6, $v0
/* D9A28 80143328 00021043 */  sra       $v0, $v0, 1
/* D9A2C 8014332C 2442FFFF */  addiu     $v0, $v0, -1
/* D9A30 80143330 A4A30002 */  sh        $v1, 2($a1)
/* D9A34 80143334 00161940 */  sll       $v1, $s6, 5
/* D9A38 80143338 A4A20000 */  sh        $v0, ($a1)
/* D9A3C 8014333C A4A00004 */  sh        $zero, 4($a1)
/* D9A40 80143340 A4A30008 */  sh        $v1, 8($a1)
/* D9A44 80143344 A4A7000A */  sh        $a3, 0xa($a1)
/* D9A48 80143348 A4820020 */  sh        $v0, 0x20($a0)
/* D9A4C 8014334C 000F17C2 */  srl       $v0, $t7, 0x1f
/* D9A50 80143350 01E21021 */  addu      $v0, $t7, $v0
/* D9A54 80143354 00021043 */  sra       $v0, $v0, 1
/* D9A58 80143358 2442FFFF */  addiu     $v0, $v0, -1
/* D9A5C 8014335C A4820022 */  sh        $v0, 0x22($a0)
/* D9A60 80143360 A4820032 */  sh        $v0, 0x32($a0)
/* D9A64 80143364 3C02E700 */  lui       $v0, 0xe700
/* D9A68 80143368 A4800024 */  sh        $zero, 0x24($a0)
/* D9A6C 8014336C A4830028 */  sh        $v1, 0x28($a0)
/* D9A70 80143370 A480002A */  sh        $zero, 0x2a($a0)
/* D9A74 80143374 A4860030 */  sh        $a2, 0x30($a0)
/* D9A78 80143378 A4800034 */  sh        $zero, 0x34($a0)
/* D9A7C 8014337C A4800038 */  sh        $zero, 0x38($a0)
/* D9A80 80143380 A480003A */  sh        $zero, 0x3a($a0)
/* D9A84 80143384 AD8B0000 */  sw        $t3, ($t4)
/* D9A88 80143388 AD020000 */  sw        $v0, ($t0)
/* D9A8C 8014338C 25620008 */  addiu     $v0, $t3, 8
/* D9A90 80143390 AD000004 */  sw        $zero, 4($t0)
/* D9A94 80143394 AD820000 */  sw        $v0, ($t4)
/* D9A98 80143398 25620010 */  addiu     $v0, $t3, 0x10
/* D9A9C 8014339C AD6A0000 */  sw        $t2, ($t3)
/* D9AA0 801433A0 AD690004 */  sw        $t1, 4($t3)
/* D9AA4 801433A4 AD820000 */  sw        $v0, ($t4)
/* D9AA8 801433A8 3C02FA00 */  lui       $v0, 0xfa00
/* D9AAC 801433AC AD620008 */  sw        $v0, 8($t3)
/* D9AB0 801433B0 92E2004B */  lbu       $v0, 0x4b($s7)
/* D9AB4 801433B4 92E3004C */  lbu       $v1, 0x4c($s7)
/* D9AB8 801433B8 92E4004D */  lbu       $a0, 0x4d($s7)
/* D9ABC 801433BC 00021600 */  sll       $v0, $v0, 0x18
/* D9AC0 801433C0 00031C00 */  sll       $v1, $v1, 0x10
/* D9AC4 801433C4 00431025 */  or        $v0, $v0, $v1
/* D9AC8 801433C8 00042200 */  sll       $a0, $a0, 8
/* D9ACC 801433CC 92E3004A */  lbu       $v1, 0x4a($s7)
/* D9AD0 801433D0 00441025 */  or        $v0, $v0, $a0
/* D9AD4 801433D4 00431025 */  or        $v0, $v0, $v1
/* D9AD8 801433D8 AD62000C */  sw        $v0, 0xc($t3)
/* D9ADC 801433DC 8EE30000 */  lw        $v1, ($s7)
/* D9AE0 801433E0 30620020 */  andi      $v0, $v1, 0x20
/* D9AE4 801433E4 1440000C */  bnez      $v0, .L80143418
/* D9AE8 801433E8 3C020080 */   lui      $v0, 0x80
/* D9AEC 801433EC 00621024 */  and       $v0, $v1, $v0
/* D9AF0 801433F0 14400005 */  bnez      $v0, .L80143408
/* D9AF4 801433F4 3C04E200 */   lui      $a0, 0xe200
/* D9AF8 801433F8 3484001C */  ori       $a0, $a0, 0x1c
/* D9AFC 801433FC 3C030F0A */  lui       $v1, 0xf0a
/* D9B00 80143400 08050D10 */  j         .L80143440
/* D9B04 80143404 34637008 */   ori      $v1, $v1, 0x7008
.L80143408:
/* D9B08 80143408 3484001C */  ori       $a0, $a0, 0x1c
/* D9B0C 8014340C 3C030055 */  lui       $v1, 0x55
/* D9B10 80143410 08050D10 */  j         .L80143440
/* D9B14 80143414 34633048 */   ori      $v1, $v1, 0x3048
.L80143418:
/* D9B18 80143418 00621024 */  and       $v0, $v1, $v0
/* D9B1C 8014341C 14400005 */  bnez      $v0, .L80143434
/* D9B20 80143420 3C04E200 */   lui      $a0, 0xe200
/* D9B24 80143424 3484001C */  ori       $a0, $a0, 0x1c
/* D9B28 80143428 3C030050 */  lui       $v1, 0x50
/* D9B2C 8014342C 08050D10 */  j         .L80143440
/* D9B30 80143430 34634340 */   ori      $v1, $v1, 0x4340
.L80143434:
/* D9B34 80143434 3484001C */  ori       $a0, $a0, 0x1c
/* D9B38 80143438 3C030050 */  lui       $v1, 0x50
/* D9B3C 8014343C 34634348 */  ori       $v1, $v1, 0x4348
.L80143440:
/* D9B40 80143440 25620018 */  addiu     $v0, $t3, 0x18
/* D9B44 80143444 AD820000 */  sw        $v0, ($t4)
/* D9B48 80143448 AD640010 */  sw        $a0, 0x10($t3)
/* D9B4C 8014344C AD630014 */  sw        $v1, 0x14($t3)
/* D9B50 80143450 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* D9B54 80143454 2463A66C */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* D9B58 80143458 02C0382D */  daddu     $a3, $s6, $zero
/* D9B5C 8014345C 3C02FD70 */  lui       $v0, 0xfd70
/* D9B60 80143460 8C660000 */  lw        $a2, ($v1)
/* D9B64 80143464 3C080700 */  lui       $t0, 0x700
/* D9B68 80143468 00C0282D */  daddu     $a1, $a2, $zero
/* D9B6C 8014346C 24C60008 */  addiu     $a2, $a2, 8
/* D9B70 80143470 AC660000 */  sw        $a2, ($v1)
/* D9B74 80143474 ACA20000 */  sw        $v0, ($a1)
/* D9B78 80143478 24C20008 */  addiu     $v0, $a2, 8
/* D9B7C 8014347C AC620000 */  sw        $v0, ($v1)
/* D9B80 80143480 24C20010 */  addiu     $v0, $a2, 0x10
/* D9B84 80143484 AC620000 */  sw        $v0, ($v1)
/* D9B88 80143488 8EE40010 */  lw        $a0, 0x10($s7)
/* D9B8C 8014348C 24C20018 */  addiu     $v0, $a2, 0x18
/* D9B90 80143490 AC620000 */  sw        $v0, ($v1)
/* D9B94 80143494 3C02F570 */  lui       $v0, 0xf570
/* D9B98 80143498 ACA40004 */  sw        $a0, 4($a1)
/* D9B9C 8014349C ACC20000 */  sw        $v0, ($a2)
/* D9BA0 801434A0 3C02E600 */  lui       $v0, 0xe600
/* D9BA4 801434A4 ACC20008 */  sw        $v0, 8($a2)
/* D9BA8 801434A8 3C02F300 */  lui       $v0, 0xf300
/* D9BAC 801434AC ACC80004 */  sw        $t0, 4($a2)
/* D9BB0 801434B0 ACC0000C */  sw        $zero, 0xc($a2)
/* D9BB4 801434B4 06C10002 */  bgez      $s6, .L801434C0
/* D9BB8 801434B8 ACC20010 */   sw       $v0, 0x10($a2)
/* D9BBC 801434BC 26C70007 */  addiu     $a3, $s6, 7
.L801434C0:
/* D9BC0 801434C0 000728C3 */  sra       $a1, $a3, 3
/* D9BC4 801434C4 18A00002 */  blez      $a1, .L801434D0
/* D9BC8 801434C8 24030800 */   addiu    $v1, $zero, 0x800
/* D9BCC 801434CC 24A307FF */  addiu     $v1, $a1, 0x7ff
.L801434D0:
/* D9BD0 801434D0 8FAD02B8 */  lw        $t5, 0x2b8($sp)
/* D9BD4 801434D4 02CD0018 */  mult      $s6, $t5
/* D9BD8 801434D8 00007012 */  mflo      $t6
/* D9BDC 801434DC 25C20001 */  addiu     $v0, $t6, 1
/* D9BE0 801434E0 00021043 */  sra       $v0, $v0, 1
/* D9BE4 801434E4 2444FFFF */  addiu     $a0, $v0, -1
/* D9BE8 801434E8 28820800 */  slti      $v0, $a0, 0x800
/* D9BEC 801434EC 50400001 */  beql      $v0, $zero, .L801434F4
/* D9BF0 801434F0 240407FF */   addiu    $a0, $zero, 0x7ff
.L801434F4:
/* D9BF4 801434F4 30820FFF */  andi      $v0, $a0, 0xfff
/* D9BF8 801434F8 00021300 */  sll       $v0, $v0, 0xc
/* D9BFC 801434FC 18A0000D */  blez      $a1, .L80143534
/* D9C00 80143500 00482025 */   or       $a0, $v0, $t0
/* D9C04 80143504 14A00002 */  bnez      $a1, .L80143510
/* D9C08 80143508 0065001A */   div      $zero, $v1, $a1
/* D9C0C 8014350C 0007000D */  break     7
.L80143510:
/* D9C10 80143510 2401FFFF */   addiu    $at, $zero, -1
/* D9C14 80143514 14A10004 */  bne       $a1, $at, .L80143528
/* D9C18 80143518 3C018000 */   lui      $at, 0x8000
/* D9C1C 8014351C 14610002 */  bne       $v1, $at, .L80143528
/* D9C20 80143520 00000000 */   nop
/* D9C24 80143524 0006000D */  break     6
.L80143528:
/* D9C28 80143528 00001012 */   mflo     $v0
/* D9C2C 8014352C 08050D4E */  j         .L80143538
/* D9C30 80143530 30420FFF */   andi     $v0, $v0, 0xfff
.L80143534:
/* D9C34 80143534 30620FFF */  andi      $v0, $v1, 0xfff
.L80143538:
/* D9C38 80143538 00821025 */  or        $v0, $a0, $v0
/* D9C3C 8014353C ACC20014 */  sw        $v0, 0x14($a2)
/* D9C40 80143540 3C06E300 */  lui       $a2, 0xe300
/* D9C44 80143544 34C61001 */  ori       $a2, $a2, 0x1001
/* D9C48 80143548 3C070100 */  lui       $a3, 0x100
/* D9C4C 8014354C 34E74008 */  ori       $a3, $a3, 0x4008
/* D9C50 80143550 3C080500 */  lui       $t0, 0x500
/* D9C54 80143554 35080204 */  ori       $t0, $t0, 0x204
/* D9C58 80143558 3C090500 */  lui       $t1, 0x500
/* D9C5C 8014355C 3C05800A */  lui       $a1, %hi(gMasterGfxPos)
/* D9C60 80143560 24A5A66C */  addiu     $a1, $a1, %lo(gMasterGfxPos)
/* D9C64 80143564 35290406 */  ori       $t1, $t1, 0x406
/* D9C68 80143568 8CA40000 */  lw        $a0, ($a1)
/* D9C6C 8014356C 3C02E700 */  lui       $v0, 0xe700
/* D9C70 80143570 0080182D */  daddu     $v1, $a0, $zero
/* D9C74 80143574 24840008 */  addiu     $a0, $a0, 8
/* D9C78 80143578 ACA40000 */  sw        $a0, ($a1)
/* D9C7C 8014357C AC620000 */  sw        $v0, ($v1)
/* D9C80 80143580 24820008 */  addiu     $v0, $a0, 8
/* D9C84 80143584 AC600004 */  sw        $zero, 4($v1)
/* D9C88 80143588 ACA20000 */  sw        $v0, ($a1)
/* D9C8C 8014358C 26C20007 */  addiu     $v0, $s6, 7
/* D9C90 80143590 000210C3 */  sra       $v0, $v0, 3
/* D9C94 80143594 304201FF */  andi      $v0, $v0, 0x1ff
/* D9C98 80143598 00021240 */  sll       $v0, $v0, 9
/* D9C9C 8014359C 3C03F568 */  lui       $v1, 0xf568
/* D9CA0 801435A0 00431025 */  or        $v0, $v0, $v1
/* D9CA4 801435A4 AC820000 */  sw        $v0, ($a0)
/* D9CA8 801435A8 24820010 */  addiu     $v0, $a0, 0x10
/* D9CAC 801435AC AC800004 */  sw        $zero, 4($a0)
/* D9CB0 801435B0 ACA20000 */  sw        $v0, ($a1)
/* D9CB4 801435B4 3C02F200 */  lui       $v0, 0xf200
/* D9CB8 801435B8 26C3FFFF */  addiu     $v1, $s6, -1
/* D9CBC 801435BC 00031880 */  sll       $v1, $v1, 2
/* D9CC0 801435C0 30630FFF */  andi      $v1, $v1, 0xfff
/* D9CC4 801435C4 AC820008 */  sw        $v0, 8($a0)
/* D9CC8 801435C8 8FAD02B8 */  lw        $t5, 0x2b8($sp)
/* D9CCC 801435CC 00031B00 */  sll       $v1, $v1, 0xc
/* D9CD0 801435D0 25A2FFFF */  addiu     $v0, $t5, -1
/* D9CD4 801435D4 00021080 */  sll       $v0, $v0, 2
/* D9CD8 801435D8 30420FFF */  andi      $v0, $v0, 0xfff
/* D9CDC 801435DC 00621825 */  or        $v1, $v1, $v0
/* D9CE0 801435E0 24820018 */  addiu     $v0, $a0, 0x18
/* D9CE4 801435E4 AC83000C */  sw        $v1, 0xc($a0)
/* D9CE8 801435E8 ACA20000 */  sw        $v0, ($a1)
/* D9CEC 801435EC 3C028016 */  lui       $v0, %hi(D_80159180)
/* D9CF0 801435F0 8C429180 */  lw        $v0, %lo(D_80159180)($v0)
/* D9CF4 801435F4 24830020 */  addiu     $v1, $a0, 0x20
/* D9CF8 801435F8 AC860010 */  sw        $a2, 0x10($a0)
/* D9CFC 801435FC AC800014 */  sw        $zero, 0x14($a0)
/* D9D00 80143600 ACA30000 */  sw        $v1, ($a1)
/* D9D04 80143604 AC870018 */  sw        $a3, 0x18($a0)
/* D9D08 80143608 00021180 */  sll       $v0, $v0, 6
/* D9D0C 8014360C 24420030 */  addiu     $v0, $v0, 0x30
/* D9D10 80143610 03C21021 */  addu      $v0, $fp, $v0
/* D9D14 80143614 AC82001C */  sw        $v0, 0x1c($a0)
/* D9D18 80143618 24820028 */  addiu     $v0, $a0, 0x28
/* D9D1C 8014361C ACA20000 */  sw        $v0, ($a1)
/* D9D20 80143620 24820030 */  addiu     $v0, $a0, 0x30
/* D9D24 80143624 AC880020 */  sw        $t0, 0x20($a0)
/* D9D28 80143628 AC800024 */  sw        $zero, 0x24($a0)
/* D9D2C 8014362C ACA20000 */  sw        $v0, ($a1)
/* D9D30 80143630 AC890028 */  sw        $t1, 0x28($a0)
/* D9D34 80143634 AC80002C */  sw        $zero, 0x2c($a0)
/* D9D38 80143638 3C03D838 */  lui       $v1, 0xd838
.L8014363C:
/* D9D3C 8014363C 3C04800A */  lui       $a0, %hi(gMasterGfxPos)
/* D9D40 80143640 2484A66C */  addiu     $a0, $a0, %lo(gMasterGfxPos)
/* D9D44 80143644 8C820000 */  lw        $v0, ($a0)
/* D9D48 80143648 34630002 */  ori       $v1, $v1, 2
/* D9D4C 8014364C 0040282D */  daddu     $a1, $v0, $zero
/* D9D50 80143650 24420008 */  addiu     $v0, $v0, 8
/* D9D54 80143654 AC820000 */  sw        $v0, ($a0)
/* D9D58 80143658 ACA30000 */  sw        $v1, ($a1)
/* D9D5C 8014365C 24030040 */  addiu     $v1, $zero, 0x40
/* D9D60 80143660 ACA30004 */  sw        $v1, 4($a1)
/* D9D64 80143664 24430008 */  addiu     $v1, $v0, 8
/* D9D68 80143668 AC830000 */  sw        $v1, ($a0)
/* D9D6C 8014366C 3C03E700 */  lui       $v1, 0xe700
/* D9D70 80143670 AC430000 */  sw        $v1, ($v0)
/* D9D74 80143674 AC400004 */  sw        $zero, 4($v0)
/* D9D78 80143678 8FBF02EC */  lw        $ra, 0x2ec($sp)
/* D9D7C 8014367C 8FBE02E8 */  lw        $fp, 0x2e8($sp)
/* D9D80 80143680 8FB702E4 */  lw        $s7, 0x2e4($sp)
/* D9D84 80143684 8FB602E0 */  lw        $s6, 0x2e0($sp)
/* D9D88 80143688 8FB502DC */  lw        $s5, 0x2dc($sp)
/* D9D8C 8014368C 8FB402D8 */  lw        $s4, 0x2d8($sp)
/* D9D90 80143690 8FB302D4 */  lw        $s3, 0x2d4($sp)
/* D9D94 80143694 8FB202D0 */  lw        $s2, 0x2d0($sp)
/* D9D98 80143698 8FB102CC */  lw        $s1, 0x2cc($sp)
/* D9D9C 8014369C 8FB002C8 */  lw        $s0, 0x2c8($sp)
/* D9DA0 801436A0 D7B80300 */  ldc1      $f24, 0x300($sp)
/* D9DA4 801436A4 D7B602F8 */  ldc1      $f22, 0x2f8($sp)
/* D9DA8 801436A8 D7B402F0 */  ldc1      $f20, 0x2f0($sp)
/* D9DAC 801436AC 03E00008 */  jr        $ra
/* D9DB0 801436B0 27BD0308 */   addiu    $sp, $sp, 0x308
