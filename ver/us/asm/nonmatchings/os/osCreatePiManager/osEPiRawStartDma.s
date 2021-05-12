.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel osEPiRawStartDma
/* 3BF70 80060B70 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 3BF74 80060B74 AFB00010 */  sw        $s0, 0x10($sp)
/* 3BF78 80060B78 00808021 */  addu      $s0, $a0, $zero
/* 3BF7C 80060B7C AFB10014 */  sw        $s1, 0x14($sp)
/* 3BF80 80060B80 00A08821 */  addu      $s1, $a1, $zero
/* 3BF84 80060B84 AFB20018 */  sw        $s2, 0x18($sp)
/* 3BF88 80060B88 00C09021 */  addu      $s2, $a2, $zero
/* 3BF8C 80060B8C 3C02A460 */  lui       $v0, 0xa460
/* 3BF90 80060B90 34420010 */  ori       $v0, $v0, 0x10
/* 3BF94 80060B94 AFBF0020 */  sw        $ra, 0x20($sp)
/* 3BF98 80060B98 AFB3001C */  sw        $s3, 0x1c($sp)
/* 3BF9C 80060B9C 8C420000 */  lw        $v0, ($v0)
/* 3BFA0 80060BA0 8FB30038 */  lw        $s3, 0x38($sp)
/* 3BFA4 80060BA4 30420003 */  andi      $v0, $v0, 3
/* 3BFA8 80060BA8 10400007 */  beqz      $v0, .L80060BC8
/* 3BFAC 80060BAC 00E02021 */   addu     $a0, $a3, $zero
/* 3BFB0 80060BB0 3C03A460 */  lui       $v1, 0xa460
/* 3BFB4 80060BB4 34630010 */  ori       $v1, $v1, 0x10
.L80060BB8:
/* 3BFB8 80060BB8 8C620000 */  lw        $v0, ($v1)
/* 3BFBC 80060BBC 30420003 */  andi      $v0, $v0, 3
/* 3BFC0 80060BC0 1440FFFD */  bnez      $v0, .L80060BB8
/* 3BFC4 80060BC4 00000000 */   nop
.L80060BC8:
/* 3BFC8 80060BC8 92060009 */  lbu       $a2, 9($s0)
/* 3BFCC 80060BCC 00061080 */  sll       $v0, $a2, 2
/* 3BFD0 80060BD0 3C058009 */  lui       $a1, %hi(__osCurrentHandle)
/* 3BFD4 80060BD4 00A22821 */  addu      $a1, $a1, $v0
/* 3BFD8 80060BD8 8CA53D70 */  lw        $a1, %lo(__osCurrentHandle)($a1)
/* 3BFDC 80060BDC 92020004 */  lbu       $v0, 4($s0)
/* 3BFE0 80060BE0 90A30004 */  lbu       $v1, 4($a1)
/* 3BFE4 80060BE4 1062003D */  beq       $v1, $v0, .L80060CDC
/* 3BFE8 80060BE8 00000000 */   nop
/* 3BFEC 80060BEC 14C00019 */  bnez      $a2, .L80060C54
/* 3BFF0 80060BF0 00A01821 */   addu     $v1, $a1, $zero
/* 3BFF4 80060BF4 90620005 */  lbu       $v0, 5($v1)
/* 3BFF8 80060BF8 92050005 */  lbu       $a1, 5($s0)
/* 3BFFC 80060BFC 10450003 */  beq       $v0, $a1, .L80060C0C
/* 3C000 80060C00 3C02A460 */   lui      $v0, 0xa460
/* 3C004 80060C04 34420014 */  ori       $v0, $v0, 0x14
/* 3C008 80060C08 AC450000 */  sw        $a1, ($v0)
.L80060C0C:
/* 3C00C 80060C0C 90620006 */  lbu       $v0, 6($v1)
/* 3C010 80060C10 92050006 */  lbu       $a1, 6($s0)
/* 3C014 80060C14 10450003 */  beq       $v0, $a1, .L80060C24
/* 3C018 80060C18 3C02A460 */   lui      $v0, 0xa460
/* 3C01C 80060C1C 3442001C */  ori       $v0, $v0, 0x1c
/* 3C020 80060C20 AC450000 */  sw        $a1, ($v0)
.L80060C24:
/* 3C024 80060C24 90620007 */  lbu       $v0, 7($v1)
/* 3C028 80060C28 92050007 */  lbu       $a1, 7($s0)
/* 3C02C 80060C2C 10450003 */  beq       $v0, $a1, .L80060C3C
/* 3C030 80060C30 3C02A460 */   lui      $v0, 0xa460
/* 3C034 80060C34 34420020 */  ori       $v0, $v0, 0x20
/* 3C038 80060C38 AC450000 */  sw        $a1, ($v0)
.L80060C3C:
/* 3C03C 80060C3C 90620008 */  lbu       $v0, 8($v1)
/* 3C040 80060C40 92050008 */  lbu       $a1, 8($s0)
/* 3C044 80060C44 1045001B */  beq       $v0, $a1, .L80060CB4
/* 3C048 80060C48 3C02A460 */   lui      $v0, 0xa460
/* 3C04C 80060C4C 0801832C */  j         .L80060CB0
/* 3C050 80060C50 34420018 */   ori      $v0, $v0, 0x18
.L80060C54:
/* 3C054 80060C54 90620005 */  lbu       $v0, 5($v1)
/* 3C058 80060C58 92050005 */  lbu       $a1, 5($s0)
/* 3C05C 80060C5C 10450003 */  beq       $v0, $a1, .L80060C6C
/* 3C060 80060C60 3C02A460 */   lui      $v0, 0xa460
/* 3C064 80060C64 34420024 */  ori       $v0, $v0, 0x24
/* 3C068 80060C68 AC450000 */  sw        $a1, ($v0)
.L80060C6C:
/* 3C06C 80060C6C 90620006 */  lbu       $v0, 6($v1)
/* 3C070 80060C70 92050006 */  lbu       $a1, 6($s0)
/* 3C074 80060C74 10450003 */  beq       $v0, $a1, .L80060C84
/* 3C078 80060C78 3C02A460 */   lui      $v0, 0xa460
/* 3C07C 80060C7C 3442002C */  ori       $v0, $v0, 0x2c
/* 3C080 80060C80 AC450000 */  sw        $a1, ($v0)
.L80060C84:
/* 3C084 80060C84 90620007 */  lbu       $v0, 7($v1)
/* 3C088 80060C88 92050007 */  lbu       $a1, 7($s0)
/* 3C08C 80060C8C 10450003 */  beq       $v0, $a1, .L80060C9C
/* 3C090 80060C90 3C02A460 */   lui      $v0, 0xa460
/* 3C094 80060C94 34420030 */  ori       $v0, $v0, 0x30
/* 3C098 80060C98 AC450000 */  sw        $a1, ($v0)
.L80060C9C:
/* 3C09C 80060C9C 90620008 */  lbu       $v0, 8($v1)
/* 3C0A0 80060CA0 92050008 */  lbu       $a1, 8($s0)
/* 3C0A4 80060CA4 10450003 */  beq       $v0, $a1, .L80060CB4
/* 3C0A8 80060CA8 3C02A460 */   lui      $v0, 0xa460
/* 3C0AC 80060CAC 34420028 */  ori       $v0, $v0, 0x28
.L80060CB0:
/* 3C0B0 80060CB0 AC450000 */  sw        $a1, ($v0)
.L80060CB4:
/* 3C0B4 80060CB4 92020004 */  lbu       $v0, 4($s0)
/* 3C0B8 80060CB8 A0620004 */  sb        $v0, 4($v1)
/* 3C0BC 80060CBC 92020005 */  lbu       $v0, 5($s0)
/* 3C0C0 80060CC0 A0620005 */  sb        $v0, 5($v1)
/* 3C0C4 80060CC4 92020006 */  lbu       $v0, 6($s0)
/* 3C0C8 80060CC8 A0620006 */  sb        $v0, 6($v1)
/* 3C0CC 80060CCC 92020007 */  lbu       $v0, 7($s0)
/* 3C0D0 80060CD0 A0620007 */  sb        $v0, 7($v1)
/* 3C0D4 80060CD4 92020008 */  lbu       $v0, 8($s0)
/* 3C0D8 80060CD8 A0620008 */  sb        $v0, 8($v1)
.L80060CDC:
/* 3C0DC 80060CDC 0C0187A4 */  jal       osVirtualToPhysical
/* 3C0E0 80060CE0 00000000 */   nop
/* 3C0E4 80060CE4 3C04A460 */  lui       $a0, 0xa460
/* 3C0E8 80060CE8 34840004 */  ori       $a0, $a0, 4
/* 3C0EC 80060CEC 3C03A460 */  lui       $v1, 0xa460
/* 3C0F0 80060CF0 AC620000 */  sw        $v0, ($v1)
/* 3C0F4 80060CF4 8E02000C */  lw        $v0, 0xc($s0)
/* 3C0F8 80060CF8 3C031FFF */  lui       $v1, 0x1fff
/* 3C0FC 80060CFC 3463FFFF */  ori       $v1, $v1, 0xffff
/* 3C100 80060D00 00521025 */  or        $v0, $v0, $s2
/* 3C104 80060D04 00431024 */  and       $v0, $v0, $v1
/* 3C108 80060D08 AC820000 */  sw        $v0, ($a0)
/* 3C10C 80060D0C 12200005 */  beqz      $s1, .L80060D24
/* 3C110 80060D10 24020001 */   addiu    $v0, $zero, 1
/* 3C114 80060D14 12220006 */  beq       $s1, $v0, .L80060D30
/* 3C118 80060D18 3C03A460 */   lui      $v1, 0xa460
/* 3C11C 80060D1C 08018350 */  j         .L80060D40
/* 3C120 80060D20 2402FFFF */   addiu    $v0, $zero, -1
.L80060D24:
/* 3C124 80060D24 3C03A460 */  lui       $v1, 0xa460
/* 3C128 80060D28 0801834D */  j         .L80060D34
/* 3C12C 80060D2C 3463000C */   ori      $v1, $v1, 0xc
.L80060D30:
/* 3C130 80060D30 34630008 */  ori       $v1, $v1, 8
.L80060D34:
/* 3C134 80060D34 2662FFFF */  addiu     $v0, $s3, -1
/* 3C138 80060D38 AC620000 */  sw        $v0, ($v1)
/* 3C13C 80060D3C 00001021 */  addu      $v0, $zero, $zero
.L80060D40:
/* 3C140 80060D40 8FBF0020 */  lw        $ra, 0x20($sp)
/* 3C144 80060D44 8FB3001C */  lw        $s3, 0x1c($sp)
/* 3C148 80060D48 8FB20018 */  lw        $s2, 0x18($sp)
/* 3C14C 80060D4C 8FB10014 */  lw        $s1, 0x14($sp)
/* 3C150 80060D50 8FB00010 */  lw        $s0, 0x10($sp)
/* 3C154 80060D54 03E00008 */  jr        $ra
/* 3C158 80060D58 27BD0028 */   addiu    $sp, $sp, 0x28
/* 3C15C 80060D5C 00000000 */  nop
