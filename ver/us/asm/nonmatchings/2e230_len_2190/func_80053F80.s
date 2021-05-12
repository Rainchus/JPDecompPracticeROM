.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80053F80
/* 2F380 80053F80 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 2F384 80053F84 AFB30024 */  sw        $s3, 0x24($sp)
/* 2F388 80053F88 3C13800A */  lui       $s3, %hi(D_8009A5C0)
/* 2F38C 80053F8C 8E73A5C0 */  lw        $s3, %lo(D_8009A5C0)($s3)
/* 2F390 80053F90 AFB5002C */  sw        $s5, 0x2c($sp)
/* 2F394 80053F94 0080A82D */  daddu     $s5, $a0, $zero
/* 2F398 80053F98 AFB20020 */  sw        $s2, 0x20($sp)
/* 2F39C 80053F9C 3C12800A */  lui       $s2, %hi(D_8009A628)
/* 2F3A0 80053FA0 8E52A628 */  lw        $s2, %lo(D_8009A628)($s2)
/* 2F3A4 80053FA4 2EA20010 */  sltiu     $v0, $s5, 0x10
/* 2F3A8 80053FA8 AFBF0030 */  sw        $ra, 0x30($sp)
/* 2F3AC 80053FAC AFB40028 */  sw        $s4, 0x28($sp)
/* 2F3B0 80053FB0 AFB1001C */  sw        $s1, 0x1c($sp)
/* 2F3B4 80053FB4 10400022 */  beqz      $v0, .L80054040
/* 2F3B8 80053FB8 AFB00018 */   sw       $s0, 0x18($sp)
/* 2F3BC 80053FBC 8E420044 */  lw        $v0, 0x44($s2)
/* 2F3C0 80053FC0 14400097 */  bnez      $v0, .L80054220
/* 2F3C4 80053FC4 00000000 */   nop
/* 2F3C8 80053FC8 24050040 */  addiu     $a1, $zero, 0x40
/* 2F3CC 80053FCC 3C028008 */  lui       $v0, %hi(D_80078580)
/* 2F3D0 80053FD0 00551021 */  addu      $v0, $v0, $s5
/* 2F3D4 80053FD4 90428580 */  lbu       $v0, %lo(D_80078580)($v0)
/* 2F3D8 80053FD8 8E63003C */  lw        $v1, 0x3c($s3)
/* 2F3DC 80053FDC 00021040 */  sll       $v0, $v0, 1
/* 2F3E0 80053FE0 00431021 */  addu      $v0, $v0, $v1
/* 2F3E4 80053FE4 94440000 */  lhu       $a0, ($v0)
/* 2F3E8 80053FE8 0C01511F */  jal       snd_fetch_SBN_file
/* 2F3EC 80053FEC 27A60010 */   addiu    $a2, $sp, 0x10
/* 2F3F0 80053FF0 1440008B */  bnez      $v0, .L80054220
/* 2F3F4 80053FF4 3C0200FF */   lui      $v0, 0xff
/* 2F3F8 80053FF8 3442FFFF */  ori       $v0, $v0, 0xffff
/* 2F3FC 80053FFC 8FA40010 */  lw        $a0, 0x10($sp)
/* 2F400 80054000 8FA60014 */  lw        $a2, 0x14($sp)
/* 2F404 80054004 8E650064 */  lw        $a1, 0x64($s3)
/* 2F408 80054008 0C015380 */  jal       snd_read_rom
/* 2F40C 8005400C 00C23024 */   and      $a2, $a2, $v0
/* 2F410 80054010 24030001 */  addiu     $v1, $zero, 1
/* 2F414 80054014 8E620064 */  lw        $v0, 0x64($s3)
/* 2F418 80054018 26440004 */  addiu     $a0, $s2, 4
/* 2F41C 8005401C AE420010 */  sw        $v0, 0x10($s2)
.L80054020:
/* 2F420 80054020 AC800010 */  sw        $zero, 0x10($a0)
/* 2F424 80054024 24630001 */  addiu     $v1, $v1, 1
/* 2F428 80054028 2C620004 */  sltiu     $v0, $v1, 4
/* 2F42C 8005402C 1440FFFC */  bnez      $v0, .L80054020
/* 2F430 80054030 24840004 */   addiu    $a0, $a0, 4
/* 2F434 80054034 24020001 */  addiu     $v0, $zero, 1
/* 2F438 80054038 08015088 */  j         .L80054220
/* 2F43C 8005403C A2420020 */   sb       $v0, 0x20($s2)
.L80054040:
/* 2F440 80054040 24020010 */  addiu     $v0, $zero, 0x10
/* 2F444 80054044 16A20076 */  bne       $s5, $v0, .L80054220
/* 2F448 80054048 00000000 */   nop
/* 2F44C 8005404C 8E420044 */  lw        $v0, 0x44($s2)
/* 2F450 80054050 14400073 */  bnez      $v0, .L80054220
/* 2F454 80054054 00000000 */   nop
/* 2F458 80054058 8E420228 */  lw        $v0, 0x228($s2)
/* 2F45C 8005405C 14400070 */  bnez      $v0, .L80054220
/* 2F460 80054060 00000000 */   nop
/* 2F464 80054064 8E42040C */  lw        $v0, 0x40c($s2)
/* 2F468 80054068 1440006D */  bnez      $v0, .L80054220
/* 2F46C 8005406C 0000182D */   daddu    $v1, $zero, $zero
/* 2F470 80054070 A2400020 */  sb        $zero, 0x20($s2)
/* 2F474 80054074 0240202D */  daddu     $a0, $s2, $zero
.L80054078:
/* 2F478 80054078 AC800010 */  sw        $zero, 0x10($a0)
/* 2F47C 8005407C 24630001 */  addiu     $v1, $v1, 1
/* 2F480 80054080 2C620004 */  sltiu     $v0, $v1, 4
/* 2F484 80054084 1440FFFC */  bnez      $v0, .L80054078
/* 2F488 80054088 24840004 */   addiu    $a0, $a0, 4
/* 2F48C 8005408C 8E700068 */  lw        $s0, 0x68($s3)
/* 2F490 80054090 24050040 */  addiu     $a1, $zero, 0x40
/* 2F494 80054094 3C148008 */  lui       $s4, %hi(D_80078580)
/* 2F498 80054098 26948580 */  addiu     $s4, $s4, %lo(D_80078580)
/* 2F49C 8005409C 3C028008 */  lui       $v0, %hi(D_80078580)
/* 2F4A0 800540A0 00551021 */  addu      $v0, $v0, $s5
/* 2F4A4 800540A4 90428580 */  lbu       $v0, %lo(D_80078580)($v0)
/* 2F4A8 800540A8 8E63003C */  lw        $v1, 0x3c($s3)
/* 2F4AC 800540AC 00021040 */  sll       $v0, $v0, 1
/* 2F4B0 800540B0 00431021 */  addu      $v0, $v0, $v1
/* 2F4B4 800540B4 94440000 */  lhu       $a0, ($v0)
/* 2F4B8 800540B8 0C01511F */  jal       snd_fetch_SBN_file
/* 2F4BC 800540BC 27A60010 */   addiu    $a2, $sp, 0x10
/* 2F4C0 800540C0 14400057 */  bnez      $v0, .L80054220
/* 2F4C4 800540C4 3C1100FF */   lui      $s1, 0xff
/* 2F4C8 800540C8 3631FFFF */  ori       $s1, $s1, 0xffff
/* 2F4CC 800540CC 0200282D */  daddu     $a1, $s0, $zero
/* 2F4D0 800540D0 8FA60014 */  lw        $a2, 0x14($sp)
/* 2F4D4 800540D4 8FA40010 */  lw        $a0, 0x10($sp)
/* 2F4D8 800540D8 0C015380 */  jal       snd_read_rom
/* 2F4DC 800540DC 00D13024 */   and      $a2, $a2, $s1
/* 2F4E0 800540E0 24050040 */  addiu     $a1, $zero, 0x40
/* 2F4E4 800540E4 27A60010 */  addiu     $a2, $sp, 0x10
/* 2F4E8 800540E8 02B41021 */  addu      $v0, $s5, $s4
/* 2F4EC 800540EC AE500010 */  sw        $s0, 0x10($s2)
/* 2F4F0 800540F0 90430001 */  lbu       $v1, 1($v0)
/* 2F4F4 800540F4 8E62003C */  lw        $v0, 0x3c($s3)
/* 2F4F8 800540F8 00031840 */  sll       $v1, $v1, 1
/* 2F4FC 800540FC 00621821 */  addu      $v1, $v1, $v0
/* 2F500 80054100 8FA20014 */  lw        $v0, 0x14($sp)
/* 2F504 80054104 94640000 */  lhu       $a0, ($v1)
/* 2F508 80054108 00451021 */  addu      $v0, $v0, $a1
/* 2F50C 8005410C 00511024 */  and       $v0, $v0, $s1
/* 2F510 80054110 0C01511F */  jal       snd_fetch_SBN_file
/* 2F514 80054114 02028021 */   addu     $s0, $s0, $v0
/* 2F518 80054118 14400041 */  bnez      $v0, .L80054220
/* 2F51C 8005411C 00000000 */   nop
/* 2F520 80054120 0200282D */  daddu     $a1, $s0, $zero
/* 2F524 80054124 8FA60014 */  lw        $a2, 0x14($sp)
/* 2F528 80054128 8FA40010 */  lw        $a0, 0x10($sp)
/* 2F52C 8005412C 0C015380 */  jal       snd_read_rom
/* 2F530 80054130 00D13024 */   and      $a2, $a2, $s1
/* 2F534 80054134 24050040 */  addiu     $a1, $zero, 0x40
/* 2F538 80054138 27A60010 */  addiu     $a2, $sp, 0x10
/* 2F53C 8005413C 02B41021 */  addu      $v0, $s5, $s4
/* 2F540 80054140 AE500014 */  sw        $s0, 0x14($s2)
/* 2F544 80054144 90430002 */  lbu       $v1, 2($v0)
/* 2F548 80054148 8E62003C */  lw        $v0, 0x3c($s3)
/* 2F54C 8005414C 00031840 */  sll       $v1, $v1, 1
/* 2F550 80054150 00621821 */  addu      $v1, $v1, $v0
/* 2F554 80054154 8FA20014 */  lw        $v0, 0x14($sp)
/* 2F558 80054158 94640000 */  lhu       $a0, ($v1)
/* 2F55C 8005415C 00451021 */  addu      $v0, $v0, $a1
/* 2F560 80054160 00511024 */  and       $v0, $v0, $s1
/* 2F564 80054164 0C01511F */  jal       snd_fetch_SBN_file
/* 2F568 80054168 02028021 */   addu     $s0, $s0, $v0
/* 2F56C 8005416C 1440002C */  bnez      $v0, .L80054220
/* 2F570 80054170 00000000 */   nop
/* 2F574 80054174 0200282D */  daddu     $a1, $s0, $zero
/* 2F578 80054178 8FA60014 */  lw        $a2, 0x14($sp)
/* 2F57C 8005417C 8FA40010 */  lw        $a0, 0x10($sp)
/* 2F580 80054180 0C015380 */  jal       snd_read_rom
/* 2F584 80054184 00D13024 */   and      $a2, $a2, $s1
/* 2F588 80054188 24050040 */  addiu     $a1, $zero, 0x40
/* 2F58C 8005418C 27A60010 */  addiu     $a2, $sp, 0x10
/* 2F590 80054190 02B41021 */  addu      $v0, $s5, $s4
/* 2F594 80054194 AE500018 */  sw        $s0, 0x18($s2)
/* 2F598 80054198 90430003 */  lbu       $v1, 3($v0)
/* 2F59C 8005419C 8E62003C */  lw        $v0, 0x3c($s3)
/* 2F5A0 800541A0 00031840 */  sll       $v1, $v1, 1
/* 2F5A4 800541A4 00621821 */  addu      $v1, $v1, $v0
/* 2F5A8 800541A8 8FA20014 */  lw        $v0, 0x14($sp)
/* 2F5AC 800541AC 94640000 */  lhu       $a0, ($v1)
/* 2F5B0 800541B0 00451021 */  addu      $v0, $v0, $a1
/* 2F5B4 800541B4 00511024 */  and       $v0, $v0, $s1
/* 2F5B8 800541B8 0C01511F */  jal       snd_fetch_SBN_file
/* 2F5BC 800541BC 02028021 */   addu     $s0, $s0, $v0
/* 2F5C0 800541C0 14400017 */  bnez      $v0, .L80054220
/* 2F5C4 800541C4 00000000 */   nop
/* 2F5C8 800541C8 0200282D */  daddu     $a1, $s0, $zero
/* 2F5CC 800541CC 8FA60014 */  lw        $a2, 0x14($sp)
/* 2F5D0 800541D0 8FA40010 */  lw        $a0, 0x10($sp)
/* 2F5D4 800541D4 0C015380 */  jal       snd_read_rom
/* 2F5D8 800541D8 00D13024 */   and      $a2, $a2, $s1
/* 2F5DC 800541DC 24050030 */  addiu     $a1, $zero, 0x30
/* 2F5E0 800541E0 24020004 */  addiu     $v0, $zero, 4
/* 2F5E4 800541E4 A2420020 */  sb        $v0, 0x20($s2)
/* 2F5E8 800541E8 02B41021 */  addu      $v0, $s5, $s4
/* 2F5EC 800541EC AE50001C */  sw        $s0, 0x1c($s2)
/* 2F5F0 800541F0 90420004 */  lbu       $v0, 4($v0)
/* 2F5F4 800541F4 8E63003C */  lw        $v1, 0x3c($s3)
/* 2F5F8 800541F8 00021040 */  sll       $v0, $v0, 1
/* 2F5FC 800541FC 00431021 */  addu      $v0, $v0, $v1
/* 2F600 80054200 94440000 */  lhu       $a0, ($v0)
/* 2F604 80054204 0C01511F */  jal       snd_fetch_SBN_file
/* 2F608 80054208 27A60010 */   addiu    $a2, $sp, 0x10
/* 2F60C 8005420C 14400004 */  bnez      $v0, .L80054220
/* 2F610 80054210 00000000 */   nop
/* 2F614 80054214 8FA40010 */  lw        $a0, 0x10($sp)
/* 2F618 80054218 0C015313 */  jal       snd_load_BK
/* 2F61C 8005421C 24050002 */   addiu    $a1, $zero, 2
.L80054220:
/* 2F620 80054220 8FBF0030 */  lw        $ra, 0x30($sp)
/* 2F624 80054224 8FB5002C */  lw        $s5, 0x2c($sp)
/* 2F628 80054228 8FB40028 */  lw        $s4, 0x28($sp)
/* 2F62C 8005422C 8FB30024 */  lw        $s3, 0x24($sp)
/* 2F630 80054230 8FB20020 */  lw        $s2, 0x20($sp)
/* 2F634 80054234 8FB1001C */  lw        $s1, 0x1c($sp)
/* 2F638 80054238 8FB00018 */  lw        $s0, 0x18($sp)
/* 2F63C 8005423C 0000102D */  daddu     $v0, $zero, $zero
/* 2F640 80054240 03E00008 */  jr        $ra
/* 2F644 80054244 27BD0038 */   addiu    $sp, $sp, 0x38
