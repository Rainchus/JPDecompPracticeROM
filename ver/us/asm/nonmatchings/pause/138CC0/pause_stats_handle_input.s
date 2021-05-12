.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel pause_stats_handle_input
/* 139EB4 80246B74 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 139EB8 80246B78 AFB00010 */  sw        $s0, 0x10($sp)
/* 139EBC 80246B7C 0080802D */  daddu     $s0, $a0, $zero
/* 139EC0 80246B80 3C028027 */  lui       $v0, %hi(gPauseMenuHeldButtons)
/* 139EC4 80246B84 8C4200C0 */  lw        $v0, %lo(gPauseMenuHeldButtons)($v0)
/* 139EC8 80246B88 3C030004 */  lui       $v1, 4
/* 139ECC 80246B8C AFBF0018 */  sw        $ra, 0x18($sp)
/* 139ED0 80246B90 AFB10014 */  sw        $s1, 0x14($sp)
/* 139ED4 80246B94 92070003 */  lbu       $a3, 3($s0)
/* 139ED8 80246B98 00431024 */  and       $v0, $v0, $v1
/* 139EDC 80246B9C 1040001C */  beqz      $v0, .L80246C10
/* 139EE0 80246BA0 00000000 */   nop
.L80246BA4:
/* 139EE4 80246BA4 92020001 */  lbu       $v0, 1($s0)
/* 139EE8 80246BA8 2442FFFF */  addiu     $v0, $v0, -1
/* 139EEC 80246BAC A2020001 */  sb        $v0, 1($s0)
/* 139EF0 80246BB0 00021600 */  sll       $v0, $v0, 0x18
/* 139EF4 80246BB4 00022E03 */  sra       $a1, $v0, 0x18
/* 139EF8 80246BB8 04A20015 */  bltzl     $a1, .L80246C10
/* 139EFC 80246BBC A2000001 */   sb       $zero, 1($s0)
/* 139F00 80246BC0 82020004 */  lb        $v0, 4($s0)
/* 139F04 80246BC4 82030005 */  lb        $v1, 5($s0)
/* 139F08 80246BC8 00430018 */  mult      $v0, $v1
/* 139F0C 80246BCC 00003012 */  mflo      $a2
/* 139F10 80246BD0 82020006 */  lb        $v0, 6($s0)
/* 139F14 80246BD4 00000000 */  nop
/* 139F18 80246BD8 00C20018 */  mult      $a2, $v0
/* 139F1C 80246BDC 00002012 */  mflo      $a0
/* 139F20 80246BE0 82020002 */  lb        $v0, 2($s0)
/* 139F24 80246BE4 00000000 */  nop
/* 139F28 80246BE8 00620018 */  mult      $v1, $v0
/* 139F2C 80246BEC 00001812 */  mflo      $v1
/* 139F30 80246BF0 00831021 */  addu      $v0, $a0, $v1
/* 139F34 80246BF4 00451021 */  addu      $v0, $v0, $a1
/* 139F38 80246BF8 8E030008 */  lw        $v1, 8($s0)
/* 139F3C 80246BFC 92040003 */  lbu       $a0, 3($s0)
/* 139F40 80246C00 00621821 */  addu      $v1, $v1, $v0
/* 139F44 80246C04 90620000 */  lbu       $v0, ($v1)
/* 139F48 80246C08 1082FFE6 */  beq       $a0, $v0, .L80246BA4
/* 139F4C 80246C0C 00000000 */   nop
.L80246C10:
/* 139F50 80246C10 3C028027 */  lui       $v0, %hi(gPauseMenuHeldButtons)
/* 139F54 80246C14 8C4200C0 */  lw        $v0, %lo(gPauseMenuHeldButtons)($v0)
/* 139F58 80246C18 3C030008 */  lui       $v1, 8
/* 139F5C 80246C1C 00431024 */  and       $v0, $v0, $v1
/* 139F60 80246C20 1040001E */  beqz      $v0, .L80246C9C
/* 139F64 80246C24 00000000 */   nop
/* 139F68 80246C28 92060005 */  lbu       $a2, 5($s0)
/* 139F6C 80246C2C 82050005 */  lb        $a1, 5($s0)
.L80246C30:
/* 139F70 80246C30 92020001 */  lbu       $v0, 1($s0)
/* 139F74 80246C34 24420001 */  addiu     $v0, $v0, 1
/* 139F78 80246C38 A2020001 */  sb        $v0, 1($s0)
/* 139F7C 80246C3C 00021600 */  sll       $v0, $v0, 0x18
/* 139F80 80246C40 00022603 */  sra       $a0, $v0, 0x18
/* 139F84 80246C44 0085102A */  slt       $v0, $a0, $a1
/* 139F88 80246C48 104000A2 */  beqz      $v0, .L80246ED4
/* 139F8C 80246C4C 24C2FFFF */   addiu    $v0, $a2, -1
/* 139F90 80246C50 82020004 */  lb        $v0, 4($s0)
/* 139F94 80246C54 00450018 */  mult      $v0, $a1
/* 139F98 80246C58 00001812 */  mflo      $v1
/* 139F9C 80246C5C 82020006 */  lb        $v0, 6($s0)
/* 139FA0 80246C60 00000000 */  nop
/* 139FA4 80246C64 00620018 */  mult      $v1, $v0
/* 139FA8 80246C68 00001812 */  mflo      $v1
/* 139FAC 80246C6C 82020002 */  lb        $v0, 2($s0)
/* 139FB0 80246C70 00000000 */  nop
/* 139FB4 80246C74 00A20018 */  mult      $a1, $v0
/* 139FB8 80246C78 00004812 */  mflo      $t1
/* 139FBC 80246C7C 00691021 */  addu      $v0, $v1, $t1
/* 139FC0 80246C80 00441021 */  addu      $v0, $v0, $a0
/* 139FC4 80246C84 8E030008 */  lw        $v1, 8($s0)
/* 139FC8 80246C88 92040003 */  lbu       $a0, 3($s0)
/* 139FCC 80246C8C 00621821 */  addu      $v1, $v1, $v0
/* 139FD0 80246C90 90620000 */  lbu       $v0, ($v1)
/* 139FD4 80246C94 1082FFE6 */  beq       $a0, $v0, .L80246C30
/* 139FD8 80246C98 00000000 */   nop
.L80246C9C:
/* 139FDC 80246C9C 3C028027 */  lui       $v0, %hi(gPauseMenuHeldButtons)
/* 139FE0 80246CA0 8C4200C0 */  lw        $v0, %lo(gPauseMenuHeldButtons)($v0)
/* 139FE4 80246CA4 3C030001 */  lui       $v1, 1
/* 139FE8 80246CA8 00431024 */  and       $v0, $v0, $v1
/* 139FEC 80246CAC 1040001D */  beqz      $v0, .L80246D24
/* 139FF0 80246CB0 00000000 */   nop
.L80246CB4:
/* 139FF4 80246CB4 92020002 */  lbu       $v0, 2($s0)
/* 139FF8 80246CB8 2442FFFF */  addiu     $v0, $v0, -1
/* 139FFC 80246CBC A2020002 */  sb        $v0, 2($s0)
/* 13A000 80246CC0 00021600 */  sll       $v0, $v0, 0x18
/* 13A004 80246CC4 00022603 */  sra       $a0, $v0, 0x18
/* 13A008 80246CC8 04820016 */  bltzl     $a0, .L80246D24
/* 13A00C 80246CCC A2000002 */   sb       $zero, 2($s0)
/* 13A010 80246CD0 82020004 */  lb        $v0, 4($s0)
/* 13A014 80246CD4 82030005 */  lb        $v1, 5($s0)
/* 13A018 80246CD8 00430018 */  mult      $v0, $v1
/* 13A01C 80246CDC 00003012 */  mflo      $a2
/* 13A020 80246CE0 82020006 */  lb        $v0, 6($s0)
/* 13A024 80246CE4 00000000 */  nop
/* 13A028 80246CE8 00C20018 */  mult      $a2, $v0
/* 13A02C 80246CEC 00001012 */  mflo      $v0
/* 13A030 80246CF0 00000000 */  nop
/* 13A034 80246CF4 00000000 */  nop
/* 13A038 80246CF8 00640018 */  mult      $v1, $a0
/* 13A03C 80246CFC 82040001 */  lb        $a0, 1($s0)
/* 13A040 80246D00 00001812 */  mflo      $v1
/* 13A044 80246D04 00431021 */  addu      $v0, $v0, $v1
/* 13A048 80246D08 00441021 */  addu      $v0, $v0, $a0
/* 13A04C 80246D0C 8E030008 */  lw        $v1, 8($s0)
/* 13A050 80246D10 92040003 */  lbu       $a0, 3($s0)
/* 13A054 80246D14 00621821 */  addu      $v1, $v1, $v0
/* 13A058 80246D18 90620000 */  lbu       $v0, ($v1)
/* 13A05C 80246D1C 1082FFE5 */  beq       $a0, $v0, .L80246CB4
/* 13A060 80246D20 00000000 */   nop
.L80246D24:
/* 13A064 80246D24 3C028027 */  lui       $v0, %hi(gPauseMenuHeldButtons)
/* 13A068 80246D28 8C4200C0 */  lw        $v0, %lo(gPauseMenuHeldButtons)($v0)
/* 13A06C 80246D2C 3C030002 */  lui       $v1, 2
/* 13A070 80246D30 00431024 */  and       $v0, $v0, $v1
/* 13A074 80246D34 10400020 */  beqz      $v0, .L80246DB8
/* 13A078 80246D38 00000000 */   nop
/* 13A07C 80246D3C 92060006 */  lbu       $a2, 6($s0)
/* 13A080 80246D40 82050006 */  lb        $a1, 6($s0)
.L80246D44:
/* 13A084 80246D44 92020002 */  lbu       $v0, 2($s0)
/* 13A088 80246D48 24420001 */  addiu     $v0, $v0, 1
/* 13A08C 80246D4C A2020002 */  sb        $v0, 2($s0)
/* 13A090 80246D50 00021600 */  sll       $v0, $v0, 0x18
/* 13A094 80246D54 00022603 */  sra       $a0, $v0, 0x18
/* 13A098 80246D58 0085102A */  slt       $v0, $a0, $a1
/* 13A09C 80246D5C 1040005B */  beqz      $v0, .L80246ECC
/* 13A0A0 80246D60 24C2FFFF */   addiu    $v0, $a2, -1
/* 13A0A4 80246D64 82020004 */  lb        $v0, 4($s0)
/* 13A0A8 80246D68 82030005 */  lb        $v1, 5($s0)
/* 13A0AC 80246D6C 00430018 */  mult      $v0, $v1
/* 13A0B0 80246D70 00004812 */  mflo      $t1
/* 13A0B4 80246D74 00000000 */  nop
/* 13A0B8 80246D78 00000000 */  nop
/* 13A0BC 80246D7C 01250018 */  mult      $t1, $a1
/* 13A0C0 80246D80 00001012 */  mflo      $v0
/* 13A0C4 80246D84 00000000 */  nop
/* 13A0C8 80246D88 00000000 */  nop
/* 13A0CC 80246D8C 00640018 */  mult      $v1, $a0
/* 13A0D0 80246D90 82040001 */  lb        $a0, 1($s0)
/* 13A0D4 80246D94 00001812 */  mflo      $v1
/* 13A0D8 80246D98 00431021 */  addu      $v0, $v0, $v1
/* 13A0DC 80246D9C 00441021 */  addu      $v0, $v0, $a0
/* 13A0E0 80246DA0 8E030008 */  lw        $v1, 8($s0)
/* 13A0E4 80246DA4 92040003 */  lbu       $a0, 3($s0)
/* 13A0E8 80246DA8 00621821 */  addu      $v1, $v1, $v0
/* 13A0EC 80246DAC 90620000 */  lbu       $v0, ($v1)
/* 13A0F0 80246DB0 1082FFE4 */  beq       $a0, $v0, .L80246D44
/* 13A0F4 80246DB4 00000000 */   nop
.L80246DB8:
/* 13A0F8 80246DB8 82020004 */  lb        $v0, 4($s0)
/* 13A0FC 80246DBC 82030005 */  lb        $v1, 5($s0)
/* 13A100 80246DC0 00430018 */  mult      $v0, $v1
/* 13A104 80246DC4 00003012 */  mflo      $a2
/* 13A108 80246DC8 82020006 */  lb        $v0, 6($s0)
/* 13A10C 80246DCC 00000000 */  nop
/* 13A110 80246DD0 00C20018 */  mult      $a2, $v0
/* 13A114 80246DD4 00002012 */  mflo      $a0
/* 13A118 80246DD8 82020002 */  lb        $v0, 2($s0)
/* 13A11C 80246DDC 00000000 */  nop
/* 13A120 80246DE0 00620018 */  mult      $v1, $v0
/* 13A124 80246DE4 00001812 */  mflo      $v1
/* 13A128 80246DE8 00831821 */  addu      $v1, $a0, $v1
/* 13A12C 80246DEC 82040001 */  lb        $a0, 1($s0)
/* 13A130 80246DF0 8E020008 */  lw        $v0, 8($s0)
/* 13A134 80246DF4 00641821 */  addu      $v1, $v1, $a0
/* 13A138 80246DF8 00431021 */  addu      $v0, $v0, $v1
/* 13A13C 80246DFC 90420000 */  lbu       $v0, ($v0)
/* 13A140 80246E00 A2020003 */  sb        $v0, 3($s0)
/* 13A144 80246E04 304200FF */  andi      $v0, $v0, 0xff
/* 13A148 80246E08 10470003 */  beq       $v0, $a3, .L80246E18
/* 13A14C 80246E0C 00000000 */   nop
/* 13A150 80246E10 0C05272D */  jal       sfx_play_sound
/* 13A154 80246E14 240400C7 */   addiu    $a0, $zero, 0xc7
.L80246E18:
/* 13A158 80246E18 3C028011 */  lui       $v0, %hi(gPlayerData)
/* 13A15C 80246E1C 2442F290 */  addiu     $v0, $v0, %lo(gPlayerData)
/* 13A160 80246E20 90430000 */  lbu       $v1, ($v0)
/* 13A164 80246E24 90420001 */  lbu       $v0, 1($v0)
/* 13A168 80246E28 00031E00 */  sll       $v1, $v1, 0x18
/* 13A16C 80246E2C 00032E03 */  sra       $a1, $v1, 0x18
/* 13A170 80246E30 00021600 */  sll       $v0, $v0, 0x18
/* 13A174 80246E34 00022603 */  sra       $a0, $v0, 0x18
/* 13A178 80246E38 24A20001 */  addiu     $v0, $a1, 1
/* 13A17C 80246E3C 0040282D */  daddu     $a1, $v0, $zero
/* 13A180 80246E40 00021400 */  sll       $v0, $v0, 0x10
/* 13A184 80246E44 04410002 */  bgez      $v0, .L80246E50
/* 13A188 80246E48 0000882D */   daddu    $s1, $zero, $zero
/* 13A18C 80246E4C 0220282D */  daddu     $a1, $s1, $zero
.L80246E50:
/* 13A190 80246E50 00051400 */  sll       $v0, $a1, 0x10
/* 13A194 80246E54 00021403 */  sra       $v0, $v0, 0x10
/* 13A198 80246E58 28420004 */  slti      $v0, $v0, 4
/* 13A19C 80246E5C 50400001 */  beql      $v0, $zero, .L80246E64
/* 13A1A0 80246E60 24050003 */   addiu    $a1, $zero, 3
.L80246E64:
/* 13A1A4 80246E64 24820001 */  addiu     $v0, $a0, 1
/* 13A1A8 80246E68 0040202D */  daddu     $a0, $v0, $zero
/* 13A1AC 80246E6C 00021400 */  sll       $v0, $v0, 0x10
/* 13A1B0 80246E70 04420001 */  bltzl     $v0, .L80246E78
/* 13A1B4 80246E74 0000202D */   daddu    $a0, $zero, $zero
.L80246E78:
/* 13A1B8 80246E78 00041400 */  sll       $v0, $a0, 0x10
/* 13A1BC 80246E7C 00021403 */  sra       $v0, $v0, 0x10
/* 13A1C0 80246E80 28420004 */  slti      $v0, $v0, 4
/* 13A1C4 80246E84 50400001 */  beql      $v0, $zero, .L80246E8C
/* 13A1C8 80246E88 24040003 */   addiu    $a0, $zero, 3
.L80246E8C:
/* 13A1CC 80246E8C 92020003 */  lbu       $v0, 3($s0)
/* 13A1D0 80246E90 00021840 */  sll       $v1, $v0, 1
/* 13A1D4 80246E94 00621821 */  addu      $v1, $v1, $v0
/* 13A1D8 80246E98 00031880 */  sll       $v1, $v1, 2
/* 13A1DC 80246E9C 3C018025 */  lui       $at, %hi(D_8024F3B8)
/* 13A1E0 80246EA0 00230821 */  addu      $at, $at, $v1
/* 13A1E4 80246EA4 8C23F3B8 */  lw        $v1, %lo(D_8024F3B8)($at)
/* 13A1E8 80246EA8 24020028 */  addiu     $v0, $zero, 0x28
/* 13A1EC 80246EAC 10620016 */  beq       $v1, $v0, .L80246F08
/* 13A1F0 80246EB0 28620029 */   slti     $v0, $v1, 0x29
/* 13A1F4 80246EB4 10400009 */  beqz      $v0, .L80246EDC
/* 13A1F8 80246EB8 24020025 */   addiu    $v0, $zero, 0x25
/* 13A1FC 80246EBC 1062000C */  beq       $v1, $v0, .L80246EF0
/* 13A200 80246EC0 00051400 */   sll      $v0, $a1, 0x10
/* 13A204 80246EC4 08091BCA */  j         .L80246F28
/* 13A208 80246EC8 00000000 */   nop
.L80246ECC:
/* 13A20C 80246ECC 08091B6E */  j         .L80246DB8
/* 13A210 80246ED0 A2020002 */   sb       $v0, 2($s0)
.L80246ED4:
/* 13A214 80246ED4 08091B27 */  j         .L80246C9C
/* 13A218 80246ED8 A2020001 */   sb       $v0, 1($s0)
.L80246EDC:
/* 13A21C 80246EDC 2402002F */  addiu     $v0, $zero, 0x2f
/* 13A220 80246EE0 5062000C */  beql      $v1, $v0, .L80246F14
/* 13A224 80246EE4 0000202D */   daddu    $a0, $zero, $zero
/* 13A228 80246EE8 08091BCA */  j         .L80246F28
/* 13A22C 80246EEC 00000000 */   nop
.L80246EF0:
/* 13A230 80246EF0 00021C03 */  sra       $v1, $v0, 0x10
/* 13A234 80246EF4 28620002 */  slti      $v0, $v1, 2
/* 13A238 80246EF8 5040000B */  beql      $v0, $zero, .L80246F28
/* 13A23C 80246EFC 2471FFFF */   addiu    $s1, $v1, -1
/* 13A240 80246F00 08091BCA */  j         .L80246F28
/* 13A244 80246F04 00000000 */   nop
.L80246F08:
/* 13A248 80246F08 00041400 */  sll       $v0, $a0, 0x10
/* 13A24C 80246F0C 08091BCA */  j         .L80246F28
/* 13A250 80246F10 00028C03 */   sra      $s1, $v0, 0x10
.L80246F14:
/* 13A254 80246F14 3C05F840 */  lui       $a1, 0xf840
/* 13A258 80246F18 0C0B1EAF */  jal       get_variable
/* 13A25C 80246F1C 34A55BE5 */   ori      $a1, $a1, 0x5be5
/* 13A260 80246F20 54400001 */  bnel      $v0, $zero, .L80246F28
/* 13A264 80246F24 24110001 */   addiu    $s1, $zero, 1
.L80246F28:
/* 13A268 80246F28 92030003 */  lbu       $v1, 3($s0)
/* 13A26C 80246F2C 00031040 */  sll       $v0, $v1, 1
/* 13A270 80246F30 00431021 */  addu      $v0, $v0, $v1
/* 13A274 80246F34 00021080 */  sll       $v0, $v0, 2
/* 13A278 80246F38 3C048025 */  lui       $a0, %hi(D_8024F3B8)
/* 13A27C 80246F3C 00822021 */  addu      $a0, $a0, $v0
/* 13A280 80246F40 8C84F3B8 */  lw        $a0, %lo(D_8024F3B8)($a0)
/* 13A284 80246F44 0C093BA0 */  jal       pause_get_menu_string
/* 13A288 80246F48 00912021 */   addu     $a0, $a0, $s1
/* 13A28C 80246F4C 3C038027 */  lui       $v1, %hi(gPauseMenuPressedButtons)
/* 13A290 80246F50 8C6300C4 */  lw        $v1, %lo(gPauseMenuPressedButtons)($v1)
/* 13A294 80246F54 3C018027 */  lui       $at, %hi(gPauseMenuCurrentDescString)
/* 13A298 80246F58 AC2200C8 */  sw        $v0, %lo(gPauseMenuCurrentDescString)($at)
/* 13A29C 80246F5C 3C018027 */  lui       $at, %hi(gPauseMenuCurrentDescIconScript)
/* 13A2A0 80246F60 AC2000CC */  sw        $zero, %lo(gPauseMenuCurrentDescIconScript)($at)
/* 13A2A4 80246F64 30634000 */  andi      $v1, $v1, 0x4000
/* 13A2A8 80246F68 10600005 */  beqz      $v1, .L80246F80
/* 13A2AC 80246F6C 00000000 */   nop
/* 13A2B0 80246F70 0C05272D */  jal       sfx_play_sound
/* 13A2B4 80246F74 240400CA */   addiu    $a0, $zero, 0xca
/* 13A2B8 80246F78 3C018027 */  lui       $at, %hi(gPauseMenuCurrentTab)
/* 13A2BC 80246F7C A02000D4 */  sb        $zero, %lo(gPauseMenuCurrentTab)($at)
.L80246F80:
/* 13A2C0 80246F80 8FBF0018 */  lw        $ra, 0x18($sp)
/* 13A2C4 80246F84 8FB10014 */  lw        $s1, 0x14($sp)
/* 13A2C8 80246F88 8FB00010 */  lw        $s0, 0x10($sp)
/* 13A2CC 80246F8C 03E00008 */  jr        $ra
/* 13A2D0 80246F90 27BD0020 */   addiu    $sp, $sp, 0x20
