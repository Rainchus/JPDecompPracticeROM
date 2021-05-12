.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E009C220
/* 398410 E009C220 27BDFF20 */  addiu     $sp, $sp, -0xe0
/* 398414 E009C224 0080182D */  daddu     $v1, $a0, $zero
/* 398418 E009C228 3C05DB06 */  lui       $a1, 0xdb06
/* 39841C E009C22C 34A50024 */  ori       $a1, $a1, 0x24
/* 398420 E009C230 27A40018 */  addiu     $a0, $sp, 0x18
/* 398424 E009C234 AFBE00C8 */  sw        $fp, 0xc8($sp)
/* 398428 E009C238 3C1E800A */  lui       $fp, %hi(gMasterGfxPos)
/* 39842C E009C23C 27DEA66C */  addiu     $fp, $fp, %lo(gMasterGfxPos)
/* 398430 E009C240 AFB500BC */  sw        $s5, 0xbc($sp)
/* 398434 E009C244 3C150001 */  lui       $s5, 1
/* 398438 E009C248 AFBF00CC */  sw        $ra, 0xcc($sp)
/* 39843C E009C24C AFB700C4 */  sw        $s7, 0xc4($sp)
/* 398440 E009C250 AFB600C0 */  sw        $s6, 0xc0($sp)
/* 398444 E009C254 AFB400B8 */  sw        $s4, 0xb8($sp)
/* 398448 E009C258 AFB300B4 */  sw        $s3, 0xb4($sp)
/* 39844C E009C25C AFB200B0 */  sw        $s2, 0xb0($sp)
/* 398450 E009C260 AFB100AC */  sw        $s1, 0xac($sp)
/* 398454 E009C264 AFB000A8 */  sw        $s0, 0xa8($sp)
/* 398458 E009C268 F7B600D8 */  sdc1      $f22, 0xd8($sp)
/* 39845C E009C26C F7B400D0 */  sdc1      $f20, 0xd0($sp)
/* 398460 E009C270 8FC80000 */  lw        $t0, ($fp)
/* 398464 E009C274 8C77000C */  lw        $s7, 0xc($v1)
/* 398468 E009C278 0100102D */  daddu     $v0, $t0, $zero
/* 39846C E009C27C 25080008 */  addiu     $t0, $t0, 8
/* 398470 E009C280 8EF00018 */  lw        $s0, 0x18($s7)
/* 398474 E009C284 3C09E700 */  lui       $t1, 0xe700
/* 398478 E009C288 AC490000 */  sw        $t1, ($v0)
/* 39847C E009C28C AC400004 */  sw        $zero, 4($v0)
/* 398480 E009C290 AD050000 */  sw        $a1, ($t0)
/* 398484 E009C294 8C620010 */  lw        $v0, 0x10($v1)
/* 398488 E009C298 36B51630 */  ori       $s5, $s5, 0x1630
/* 39848C E009C29C AFC80000 */  sw        $t0, ($fp)
/* 398490 E009C2A0 8C42001C */  lw        $v0, 0x1c($v0)
/* 398494 E009C2A4 3C038000 */  lui       $v1, 0x8000
/* 398498 E009C2A8 00431021 */  addu      $v0, $v0, $v1
/* 39849C E009C2AC AD020004 */  sw        $v0, 4($t0)
/* 3984A0 E009C2B0 8EE5000C */  lw        $a1, 0xc($s7)
/* 3984A4 E009C2B4 8EE60010 */  lw        $a2, 0x10($s7)
/* 3984A8 E009C2B8 8EE70014 */  lw        $a3, 0x14($s7)
/* 3984AC E009C2BC 25080008 */  addiu     $t0, $t0, 8
/* 3984B0 E009C2C0 0C080108 */  jal       func_E0200420
/* 3984B4 E009C2C4 AFC80000 */   sw       $t0, ($fp)
/* 3984B8 E009C2C8 27B10058 */  addiu     $s1, $sp, 0x58
/* 3984BC E009C2CC 4480A000 */  mtc1      $zero, $f20
/* 3984C0 E009C2D0 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* 3984C4 E009C2D4 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* 3984C8 E009C2D8 3C013F80 */  lui       $at, 0x3f80
/* 3984CC E009C2DC 4481B000 */  mtc1      $at, $f22
/* 3984D0 E009C2E0 00031080 */  sll       $v0, $v1, 2
/* 3984D4 E009C2E4 00431021 */  addu      $v0, $v0, $v1
/* 3984D8 E009C2E8 00021080 */  sll       $v0, $v0, 2
/* 3984DC E009C2EC 00431023 */  subu      $v0, $v0, $v1
/* 3984E0 E009C2F0 000218C0 */  sll       $v1, $v0, 3
/* 3984E4 E009C2F4 00431021 */  addu      $v0, $v0, $v1
/* 3984E8 E009C2F8 000210C0 */  sll       $v0, $v0, 3
/* 3984EC E009C2FC 4406A000 */  mfc1      $a2, $f20
/* 3984F0 E009C300 3C01800B */  lui       $at, %hi(gCameras+0x6C)
/* 3984F4 E009C304 00220821 */  addu      $at, $at, $v0
/* 3984F8 E009C308 C4201DEC */  lwc1      $f0, %lo(gCameras+0x6C)($at)
/* 3984FC E009C30C 4407B000 */  mfc1      $a3, $f22
/* 398500 E009C310 46000007 */  neg.s     $f0, $f0
/* 398504 E009C314 44050000 */  mfc1      $a1, $f0
/* 398508 E009C318 0220202D */  daddu     $a0, $s1, $zero
/* 39850C E009C31C 0C080104 */  jal       func_E0200410
/* 398510 E009C320 E7B40010 */   swc1     $f20, 0x10($sp)
/* 398514 E009C324 0220202D */  daddu     $a0, $s1, $zero
/* 398518 E009C328 27A50018 */  addiu     $a1, $sp, 0x18
/* 39851C E009C32C 0C080114 */  jal       func_E0200450
/* 398520 E009C330 00A0302D */   daddu    $a2, $a1, $zero
/* 398524 E009C334 27A40018 */  addiu     $a0, $sp, 0x18
/* 398528 E009C338 3C168007 */  lui       $s6, %hi(gMatrixListPos)
/* 39852C E009C33C 26D641F0 */  addiu     $s6, $s6, %lo(gMatrixListPos)
/* 398530 E009C340 3C13800A */  lui       $s3, %hi(gDisplayContext)
/* 398534 E009C344 2673A674 */  addiu     $s3, $s3, %lo(gDisplayContext)
/* 398538 E009C348 96C50000 */  lhu       $a1, ($s6)
/* 39853C E009C34C 8E620000 */  lw        $v0, ($s3)
/* 398540 E009C350 00052980 */  sll       $a1, $a1, 6
/* 398544 E009C354 00B52821 */  addu      $a1, $a1, $s5
/* 398548 E009C358 0C080118 */  jal       func_E0200460
/* 39854C E009C35C 00452821 */   addu     $a1, $v0, $a1
/* 398550 E009C360 3C03DA38 */  lui       $v1, 0xda38
/* 398554 E009C364 34630002 */  ori       $v1, $v1, 2
/* 398558 E009C368 3C05FC12 */  lui       $a1, 0xfc12
/* 39855C E009C36C 34A51803 */  ori       $a1, $a1, 0x1803
/* 398560 E009C370 321000FF */  andi      $s0, $s0, 0xff
/* 398564 E009C374 3C14DE00 */  lui       $s4, 0xde00
/* 398568 E009C378 8FC80000 */  lw        $t0, ($fp)
/* 39856C E009C37C 96C20000 */  lhu       $v0, ($s6)
/* 398570 E009C380 0100202D */  daddu     $a0, $t0, $zero
/* 398574 E009C384 25080008 */  addiu     $t0, $t0, 8
/* 398578 E009C388 AFC80000 */  sw        $t0, ($fp)
/* 39857C E009C38C AC830000 */  sw        $v1, ($a0)
/* 398580 E009C390 24430001 */  addiu     $v1, $v0, 1
/* 398584 E009C394 3042FFFF */  andi      $v0, $v0, 0xffff
/* 398588 E009C398 00021180 */  sll       $v0, $v0, 6
/* 39858C E009C39C A6C30000 */  sh        $v1, ($s6)
/* 398590 E009C3A0 8E630000 */  lw        $v1, ($s3)
/* 398594 E009C3A4 00551021 */  addu      $v0, $v0, $s5
/* 398598 E009C3A8 00621821 */  addu      $v1, $v1, $v0
/* 39859C E009C3AC 25020008 */  addiu     $v0, $t0, 8
/* 3985A0 E009C3B0 AC830004 */  sw        $v1, 4($a0)
/* 3985A4 E009C3B4 AFC20000 */  sw        $v0, ($fp)
/* 3985A8 E009C3B8 3C02FA00 */  lui       $v0, 0xfa00
/* 3985AC E009C3BC AD020000 */  sw        $v0, ($t0)
/* 3985B0 E009C3C0 00101600 */  sll       $v0, $s0, 0x18
/* 3985B4 E009C3C4 00101C00 */  sll       $v1, $s0, 0x10
/* 3985B8 E009C3C8 00431025 */  or        $v0, $v0, $v1
/* 3985BC E009C3CC 00108200 */  sll       $s0, $s0, 8
/* 3985C0 E009C3D0 00501025 */  or        $v0, $v0, $s0
/* 3985C4 E009C3D4 344200FF */  ori       $v0, $v0, 0xff
/* 3985C8 E009C3D8 AD020004 */  sw        $v0, 4($t0)
/* 3985CC E009C3DC 25020010 */  addiu     $v0, $t0, 0x10
/* 3985D0 E009C3E0 AFC20000 */  sw        $v0, ($fp)
/* 3985D4 E009C3E4 2402FFF8 */  addiu     $v0, $zero, -8
/* 3985D8 E009C3E8 AD02000C */  sw        $v0, 0xc($t0)
/* 3985DC E009C3EC 25020018 */  addiu     $v0, $t0, 0x18
/* 3985E0 E009C3F0 AD050008 */  sw        $a1, 8($t0)
/* 3985E4 E009C3F4 AFC20000 */  sw        $v0, ($fp)
/* 3985E8 E009C3F8 3C020900 */  lui       $v0, 0x900
/* 3985EC E009C3FC 24427230 */  addiu     $v0, $v0, 0x7230
/* 3985F0 E009C400 AD140010 */  sw        $s4, 0x10($t0)
/* 3985F4 E009C404 AD020014 */  sw        $v0, 0x14($t0)
/* 3985F8 E009C408 8EE3003C */  lw        $v1, 0x3c($s7)
/* 3985FC E009C40C 240200FF */  addiu     $v0, $zero, 0xff
/* 398600 E009C410 10620150 */  beq       $v1, $v0, .LE009C954
/* 398604 E009C414 3C098080 */   lui      $t1, 0x8080
/* 398608 E009C418 35298081 */  ori       $t1, $t1, 0x8081
/* 39860C E009C41C AFA90098 */  sw        $t1, 0x98($sp)
/* 398610 E009C420 3C09DA38 */  lui       $t1, 0xda38
/* 398614 E009C424 35290001 */  ori       $t1, $t1, 1
/* 398618 E009C428 AFA9009C */  sw        $t1, 0x9c($sp)
/* 39861C E009C42C 3C09D838 */  lui       $t1, 0xd838
/* 398620 E009C430 35290002 */  ori       $t1, $t1, 2
/* 398624 E009C434 AFA900A0 */  sw        $t1, 0xa0($sp)
/* 398628 E009C438 3C09DA38 */  lui       $t1, 0xda38
/* 39862C E009C43C 3C110900 */  lui       $s1, 0x900
/* 398630 E009C440 263141C8 */  addiu     $s1, $s1, 0x41c8
/* 398634 E009C444 AD090018 */  sw        $t1, 0x18($t0)
/* 398638 E009C448 AD11001C */  sw        $s1, 0x1c($t0)
/* 39863C E009C44C 8EE3001C */  lw        $v1, 0x1c($s7)
/* 398640 E009C450 8FA90098 */  lw        $t1, 0x98($sp)
/* 398644 E009C454 00031040 */  sll       $v0, $v1, 1
/* 398648 E009C458 00431021 */  addu      $v0, $v0, $v1
/* 39864C E009C45C 00021900 */  sll       $v1, $v0, 4
/* 398650 E009C460 00621823 */  subu      $v1, $v1, $v0
/* 398654 E009C464 00031880 */  sll       $v1, $v1, 2
/* 398658 E009C468 00690018 */  mult      $v1, $t1
/* 39865C E009C46C 4406B000 */  mfc1      $a2, $f22
/* 398660 E009C470 4407A000 */  mfc1      $a3, $f20
/* 398664 E009C474 25020020 */  addiu     $v0, $t0, 0x20
/* 398668 E009C478 AFC20000 */  sw        $v0, ($fp)
/* 39866C E009C47C 00004810 */  mfhi      $t1
/* 398670 E009C480 01231021 */  addu      $v0, $t1, $v1
/* 398674 E009C484 000211C3 */  sra       $v0, $v0, 7
/* 398678 E009C488 00031FC3 */  sra       $v1, $v1, 0x1f
/* 39867C E009C48C 00431023 */  subu      $v0, $v0, $v1
/* 398680 E009C490 2442FF4C */  addiu     $v0, $v0, -0xb4
/* 398684 E009C494 44821000 */  mtc1      $v0, $f2
/* 398688 E009C498 00000000 */  nop
/* 39868C E009C49C 468010A0 */  cvt.s.w   $f2, $f2
/* 398690 E009C4A0 44051000 */  mfc1      $a1, $f2
/* 398694 E009C4A4 27A40018 */  addiu     $a0, $sp, 0x18
/* 398698 E009C4A8 0C080104 */  jal       func_E0200410
/* 39869C E009C4AC E7B40010 */   swc1     $f20, 0x10($sp)
/* 3986A0 E009C4B0 27A40018 */  addiu     $a0, $sp, 0x18
/* 3986A4 E009C4B4 96C50000 */  lhu       $a1, ($s6)
/* 3986A8 E009C4B8 8E620000 */  lw        $v0, ($s3)
/* 3986AC E009C4BC 00052980 */  sll       $a1, $a1, 6
/* 3986B0 E009C4C0 00B52821 */  addu      $a1, $a1, $s5
/* 3986B4 E009C4C4 0C080118 */  jal       func_E0200460
/* 3986B8 E009C4C8 00452821 */   addu     $a1, $v0, $a1
/* 3986BC E009C4CC 24120040 */  addiu     $s2, $zero, 0x40
/* 3986C0 E009C4D0 2410005A */  addiu     $s0, $zero, 0x5a
/* 3986C4 E009C4D4 8FC50000 */  lw        $a1, ($fp)
/* 3986C8 E009C4D8 4406A000 */  mfc1      $a2, $f20
/* 3986CC E009C4DC 4407A000 */  mfc1      $a3, $f20
/* 3986D0 E009C4E0 96C20000 */  lhu       $v0, ($s6)
/* 3986D4 E009C4E4 00A0402D */  daddu     $t0, $a1, $zero
/* 3986D8 E009C4E8 24A50008 */  addiu     $a1, $a1, 8
/* 3986DC E009C4EC 24430001 */  addiu     $v1, $v0, 1
/* 3986E0 E009C4F0 3042FFFF */  andi      $v0, $v0, 0xffff
/* 3986E4 E009C4F4 AFC50000 */  sw        $a1, ($fp)
/* 3986E8 E009C4F8 8FA9009C */  lw        $t1, 0x9c($sp)
/* 3986EC E009C4FC 00021180 */  sll       $v0, $v0, 6
/* 3986F0 E009C500 AD090000 */  sw        $t1, ($t0)
/* 3986F4 E009C504 A6C30000 */  sh        $v1, ($s6)
/* 3986F8 E009C508 8E630000 */  lw        $v1, ($s3)
/* 3986FC E009C50C 00551021 */  addu      $v0, $v0, $s5
/* 398700 E009C510 00621821 */  addu      $v1, $v1, $v0
/* 398704 E009C514 24A20008 */  addiu     $v0, $a1, 8
/* 398708 E009C518 AD030004 */  sw        $v1, 4($t0)
/* 39870C E009C51C AFC20000 */  sw        $v0, ($fp)
/* 398710 E009C520 3C020900 */  lui       $v0, 0x900
/* 398714 E009C524 24426E28 */  addiu     $v0, $v0, 0x6e28
/* 398718 E009C528 ACA20004 */  sw        $v0, 4($a1)
/* 39871C E009C52C 24A20010 */  addiu     $v0, $a1, 0x10
/* 398720 E009C530 3C090900 */  lui       $t1, 0x900
/* 398724 E009C534 25291518 */  addiu     $t1, $t1, 0x1518
/* 398728 E009C538 24A30018 */  addiu     $v1, $a1, 0x18
/* 39872C E009C53C ACB40000 */  sw        $s4, ($a1)
/* 398730 E009C540 AFC20000 */  sw        $v0, ($fp)
/* 398734 E009C544 ACB40008 */  sw        $s4, 8($a1)
/* 398738 E009C548 ACA9000C */  sw        $t1, 0xc($a1)
/* 39873C E009C54C 8EE2002C */  lw        $v0, 0x2c($s7)
/* 398740 E009C550 3C09F200 */  lui       $t1, 0xf200
/* 398744 E009C554 AFC30000 */  sw        $v1, ($fp)
/* 398748 E009C558 30420FFF */  andi      $v0, $v0, 0xfff
/* 39874C E009C55C 00021300 */  sll       $v0, $v0, 0xc
/* 398750 E009C560 00491025 */  or        $v0, $v0, $t1
/* 398754 E009C564 ACA20010 */  sw        $v0, 0x10($a1)
/* 398758 E009C568 8EE3002C */  lw        $v1, 0x2c($s7)
/* 39875C E009C56C 24A20020 */  addiu     $v0, $a1, 0x20
/* 398760 E009C570 AFC20000 */  sw        $v0, ($fp)
/* 398764 E009C574 3C020900 */  lui       $v0, 0x900
/* 398768 E009C578 24426DA0 */  addiu     $v0, $v0, 0x6da0
/* 39876C E009C57C ACB40018 */  sw        $s4, 0x18($a1)
/* 398770 E009C580 ACA2001C */  sw        $v0, 0x1c($a1)
/* 398774 E009C584 8FA900A0 */  lw        $t1, 0xa0($sp)
/* 398778 E009C588 2622FF80 */  addiu     $v0, $s1, -0x80
/* 39877C E009C58C ACB20024 */  sw        $s2, 0x24($a1)
/* 398780 E009C590 ACA2002C */  sw        $v0, 0x2c($a1)
/* 398784 E009C594 ACA90020 */  sw        $t1, 0x20($a1)
/* 398788 E009C598 3C09DA38 */  lui       $t1, 0xda38
/* 39878C E009C59C 246300FC */  addiu     $v1, $v1, 0xfc
/* 398790 E009C5A0 30630FFF */  andi      $v1, $v1, 0xfff
/* 398794 E009C5A4 00031B00 */  sll       $v1, $v1, 0xc
/* 398798 E009C5A8 3463003C */  ori       $v1, $v1, 0x3c
/* 39879C E009C5AC ACA90028 */  sw        $t1, 0x28($a1)
/* 3987A0 E009C5B0 ACA30014 */  sw        $v1, 0x14($a1)
/* 3987A4 E009C5B4 8EE30020 */  lw        $v1, 0x20($s7)
/* 3987A8 E009C5B8 8FA90098 */  lw        $t1, 0x98($sp)
/* 3987AC E009C5BC 00031040 */  sll       $v0, $v1, 1
/* 3987B0 E009C5C0 00431021 */  addu      $v0, $v0, $v1
/* 3987B4 E009C5C4 00021900 */  sll       $v1, $v0, 4
/* 3987B8 E009C5C8 00621823 */  subu      $v1, $v1, $v0
/* 3987BC E009C5CC 00031840 */  sll       $v1, $v1, 1
/* 3987C0 E009C5D0 00690018 */  mult      $v1, $t1
/* 3987C4 E009C5D4 24A80028 */  addiu     $t0, $a1, 0x28
/* 3987C8 E009C5D8 24A50030 */  addiu     $a1, $a1, 0x30
/* 3987CC E009C5DC AFC80000 */  sw        $t0, ($fp)
/* 3987D0 E009C5E0 AFC50000 */  sw        $a1, ($fp)
/* 3987D4 E009C5E4 00004810 */  mfhi      $t1
/* 3987D8 E009C5E8 01231021 */  addu      $v0, $t1, $v1
/* 3987DC E009C5EC 000211C3 */  sra       $v0, $v0, 7
/* 3987E0 E009C5F0 00031FC3 */  sra       $v1, $v1, 0x1f
/* 3987E4 E009C5F4 00431023 */  subu      $v0, $v0, $v1
/* 3987E8 E009C5F8 02021023 */  subu      $v0, $s0, $v0
/* 3987EC E009C5FC 44821000 */  mtc1      $v0, $f2
/* 3987F0 E009C600 00000000 */  nop
/* 3987F4 E009C604 468010A0 */  cvt.s.w   $f2, $f2
/* 3987F8 E009C608 44051000 */  mfc1      $a1, $f2
/* 3987FC E009C60C 27A40018 */  addiu     $a0, $sp, 0x18
/* 398800 E009C610 0C080104 */  jal       func_E0200410
/* 398804 E009C614 E7B60010 */   swc1     $f22, 0x10($sp)
/* 398808 E009C618 27A40018 */  addiu     $a0, $sp, 0x18
/* 39880C E009C61C 96C50000 */  lhu       $a1, ($s6)
/* 398810 E009C620 8E620000 */  lw        $v0, ($s3)
/* 398814 E009C624 00052980 */  sll       $a1, $a1, 6
/* 398818 E009C628 00B52821 */  addu      $a1, $a1, $s5
/* 39881C E009C62C 0C080118 */  jal       func_E0200460
/* 398820 E009C630 00452821 */   addu     $a1, $v0, $a1
/* 398824 E009C634 8FC50000 */  lw        $a1, ($fp)
/* 398828 E009C638 4406A000 */  mfc1      $a2, $f20
/* 39882C E009C63C 4407A000 */  mfc1      $a3, $f20
/* 398830 E009C640 96C20000 */  lhu       $v0, ($s6)
/* 398834 E009C644 00A0402D */  daddu     $t0, $a1, $zero
/* 398838 E009C648 24A50008 */  addiu     $a1, $a1, 8
/* 39883C E009C64C 24430001 */  addiu     $v1, $v0, 1
/* 398840 E009C650 3042FFFF */  andi      $v0, $v0, 0xffff
/* 398844 E009C654 AFC50000 */  sw        $a1, ($fp)
/* 398848 E009C658 8FA9009C */  lw        $t1, 0x9c($sp)
/* 39884C E009C65C 00021180 */  sll       $v0, $v0, 6
/* 398850 E009C660 AD090000 */  sw        $t1, ($t0)
/* 398854 E009C664 A6C30000 */  sh        $v1, ($s6)
/* 398858 E009C668 8E630000 */  lw        $v1, ($s3)
/* 39885C E009C66C 00551021 */  addu      $v0, $v0, $s5
/* 398860 E009C670 00621821 */  addu      $v1, $v1, $v0
/* 398864 E009C674 24A20008 */  addiu     $v0, $a1, 8
/* 398868 E009C678 AD030004 */  sw        $v1, 4($t0)
/* 39886C E009C67C AFC20000 */  sw        $v0, ($fp)
/* 398870 E009C680 3C020900 */  lui       $v0, 0x900
/* 398874 E009C684 24426FB0 */  addiu     $v0, $v0, 0x6fb0
/* 398878 E009C688 ACB40000 */  sw        $s4, ($a1)
/* 39887C E009C68C ACA20004 */  sw        $v0, 4($a1)
/* 398880 E009C690 8FA900A0 */  lw        $t1, 0xa0($sp)
/* 398884 E009C694 2622FFC0 */  addiu     $v0, $s1, -0x40
/* 398888 E009C698 ACB2000C */  sw        $s2, 0xc($a1)
/* 39888C E009C69C ACA20014 */  sw        $v0, 0x14($a1)
/* 398890 E009C6A0 ACA90008 */  sw        $t1, 8($a1)
/* 398894 E009C6A4 3C09DA38 */  lui       $t1, 0xda38
/* 398898 E009C6A8 ACA90010 */  sw        $t1, 0x10($a1)
/* 39889C E009C6AC 8EE30024 */  lw        $v1, 0x24($s7)
/* 3988A0 E009C6B0 8FA90098 */  lw        $t1, 0x98($sp)
/* 3988A4 E009C6B4 00031040 */  sll       $v0, $v1, 1
/* 3988A8 E009C6B8 00431021 */  addu      $v0, $v0, $v1
/* 3988AC E009C6BC 00021900 */  sll       $v1, $v0, 4
/* 3988B0 E009C6C0 00621823 */  subu      $v1, $v1, $v0
/* 3988B4 E009C6C4 00031840 */  sll       $v1, $v1, 1
/* 3988B8 E009C6C8 00690018 */  mult      $v1, $t1
/* 3988BC E009C6CC 24A80010 */  addiu     $t0, $a1, 0x10
/* 3988C0 E009C6D0 24A50018 */  addiu     $a1, $a1, 0x18
/* 3988C4 E009C6D4 AFC80000 */  sw        $t0, ($fp)
/* 3988C8 E009C6D8 AFC50000 */  sw        $a1, ($fp)
/* 3988CC E009C6DC 00004810 */  mfhi      $t1
/* 3988D0 E009C6E0 01231021 */  addu      $v0, $t1, $v1
/* 3988D4 E009C6E4 000211C3 */  sra       $v0, $v0, 7
/* 3988D8 E009C6E8 00031FC3 */  sra       $v1, $v1, 0x1f
/* 3988DC E009C6EC 00431023 */  subu      $v0, $v0, $v1
/* 3988E0 E009C6F0 2442FFA6 */  addiu     $v0, $v0, -0x5a
/* 3988E4 E009C6F4 44821000 */  mtc1      $v0, $f2
/* 3988E8 E009C6F8 00000000 */  nop
/* 3988EC E009C6FC 468010A0 */  cvt.s.w   $f2, $f2
/* 3988F0 E009C700 44051000 */  mfc1      $a1, $f2
/* 3988F4 E009C704 27A40018 */  addiu     $a0, $sp, 0x18
/* 3988F8 E009C708 0C080104 */  jal       func_E0200410
/* 3988FC E009C70C E7B60010 */   swc1     $f22, 0x10($sp)
/* 398900 E009C710 27A40018 */  addiu     $a0, $sp, 0x18
/* 398904 E009C714 96C50000 */  lhu       $a1, ($s6)
/* 398908 E009C718 8E620000 */  lw        $v0, ($s3)
/* 39890C E009C71C 00052980 */  sll       $a1, $a1, 6
/* 398910 E009C720 00B52821 */  addu      $a1, $a1, $s5
/* 398914 E009C724 0C080118 */  jal       func_E0200460
/* 398918 E009C728 00452821 */   addu     $a1, $v0, $a1
/* 39891C E009C72C 02328821 */  addu      $s1, $s1, $s2
/* 398920 E009C730 8FC50000 */  lw        $a1, ($fp)
/* 398924 E009C734 4406B000 */  mfc1      $a2, $f22
/* 398928 E009C738 4407A000 */  mfc1      $a3, $f20
/* 39892C E009C73C 96C20000 */  lhu       $v0, ($s6)
/* 398930 E009C740 00A0402D */  daddu     $t0, $a1, $zero
/* 398934 E009C744 24A50008 */  addiu     $a1, $a1, 8
/* 398938 E009C748 24430001 */  addiu     $v1, $v0, 1
/* 39893C E009C74C 3042FFFF */  andi      $v0, $v0, 0xffff
/* 398940 E009C750 AFC50000 */  sw        $a1, ($fp)
/* 398944 E009C754 8FA9009C */  lw        $t1, 0x9c($sp)
/* 398948 E009C758 00021180 */  sll       $v0, $v0, 6
/* 39894C E009C75C AD090000 */  sw        $t1, ($t0)
/* 398950 E009C760 A6C30000 */  sh        $v1, ($s6)
/* 398954 E009C764 8E630000 */  lw        $v1, ($s3)
/* 398958 E009C768 00551021 */  addu      $v0, $v0, $s5
/* 39895C E009C76C 00621821 */  addu      $v1, $v1, $v0
/* 398960 E009C770 24A20008 */  addiu     $v0, $a1, 8
/* 398964 E009C774 AD030004 */  sw        $v1, 4($t0)
/* 398968 E009C778 AFC20000 */  sw        $v0, ($fp)
/* 39896C E009C77C 3C020900 */  lui       $v0, 0x900
/* 398970 E009C780 24426F20 */  addiu     $v0, $v0, 0x6f20
/* 398974 E009C784 ACA20004 */  sw        $v0, 4($a1)
/* 398978 E009C788 24A20010 */  addiu     $v0, $a1, 0x10
/* 39897C E009C78C ACB40000 */  sw        $s4, ($a1)
/* 398980 E009C790 AFC20000 */  sw        $v0, ($fp)
/* 398984 E009C794 24A20018 */  addiu     $v0, $a1, 0x18
/* 398988 E009C798 8FA900A0 */  lw        $t1, 0xa0($sp)
/* 39898C E009C79C 24A30028 */  addiu     $v1, $a1, 0x28
/* 398990 E009C7A0 ACB2000C */  sw        $s2, 0xc($a1)
/* 398994 E009C7A4 ACA90008 */  sw        $t1, 8($a1)
/* 398998 E009C7A8 AFC20000 */  sw        $v0, ($fp)
/* 39899C E009C7AC 3C020900 */  lui       $v0, 0x900
/* 3989A0 E009C7B0 244270E8 */  addiu     $v0, $v0, 0x70e8
/* 3989A4 E009C7B4 ACA20014 */  sw        $v0, 0x14($a1)
/* 3989A8 E009C7B8 24A20020 */  addiu     $v0, $a1, 0x20
/* 3989AC E009C7BC ACB40010 */  sw        $s4, 0x10($a1)
/* 3989B0 E009C7C0 AFC20000 */  sw        $v0, ($fp)
/* 3989B4 E009C7C4 3C020900 */  lui       $v0, 0x900
/* 3989B8 E009C7C8 24427030 */  addiu     $v0, $v0, 0x7030
/* 3989BC E009C7CC 3C090900 */  lui       $t1, 0x900
/* 3989C0 E009C7D0 25291518 */  addiu     $t1, $t1, 0x1518
/* 3989C4 E009C7D4 ACB40018 */  sw        $s4, 0x18($a1)
/* 3989C8 E009C7D8 ACA2001C */  sw        $v0, 0x1c($a1)
/* 3989CC E009C7DC ACB40020 */  sw        $s4, 0x20($a1)
/* 3989D0 E009C7E0 ACA90024 */  sw        $t1, 0x24($a1)
/* 3989D4 E009C7E4 8EE2002C */  lw        $v0, 0x2c($s7)
/* 3989D8 E009C7E8 3C09F200 */  lui       $t1, 0xf200
/* 3989DC E009C7EC AFC30000 */  sw        $v1, ($fp)
/* 3989E0 E009C7F0 30420FFF */  andi      $v0, $v0, 0xfff
/* 3989E4 E009C7F4 00021300 */  sll       $v0, $v0, 0xc
/* 3989E8 E009C7F8 00491025 */  or        $v0, $v0, $t1
/* 3989EC E009C7FC ACA20028 */  sw        $v0, 0x28($a1)
/* 3989F0 E009C800 8EE2002C */  lw        $v0, 0x2c($s7)
/* 3989F4 E009C804 24A30030 */  addiu     $v1, $a1, 0x30
/* 3989F8 E009C808 AFC30000 */  sw        $v1, ($fp)
/* 3989FC E009C80C 3C030900 */  lui       $v1, 0x900
/* 398A00 E009C810 24636FD8 */  addiu     $v1, $v1, 0x6fd8
/* 398A04 E009C814 3C09DA38 */  lui       $t1, 0xda38
/* 398A08 E009C818 ACB40030 */  sw        $s4, 0x30($a1)
/* 398A0C E009C81C ACA30034 */  sw        $v1, 0x34($a1)
/* 398A10 E009C820 ACA90038 */  sw        $t1, 0x38($a1)
/* 398A14 E009C824 ACB1003C */  sw        $s1, 0x3c($a1)
/* 398A18 E009C828 244200FC */  addiu     $v0, $v0, 0xfc
/* 398A1C E009C82C 30420FFF */  andi      $v0, $v0, 0xfff
/* 398A20 E009C830 00021300 */  sll       $v0, $v0, 0xc
/* 398A24 E009C834 3442003C */  ori       $v0, $v0, 0x3c
/* 398A28 E009C838 ACA2002C */  sw        $v0, 0x2c($a1)
/* 398A2C E009C83C 8EE30028 */  lw        $v1, 0x28($s7)
/* 398A30 E009C840 8FA90098 */  lw        $t1, 0x98($sp)
/* 398A34 E009C844 00031040 */  sll       $v0, $v1, 1
/* 398A38 E009C848 00431021 */  addu      $v0, $v0, $v1
/* 398A3C E009C84C 00021900 */  sll       $v1, $v0, 4
/* 398A40 E009C850 00621823 */  subu      $v1, $v1, $v0
/* 398A44 E009C854 00031840 */  sll       $v1, $v1, 1
/* 398A48 E009C858 00690018 */  mult      $v1, $t1
/* 398A4C E009C85C 24A80038 */  addiu     $t0, $a1, 0x38
/* 398A50 E009C860 00B22821 */  addu      $a1, $a1, $s2
/* 398A54 E009C864 AFC80000 */  sw        $t0, ($fp)
/* 398A58 E009C868 AFC50000 */  sw        $a1, ($fp)
/* 398A5C E009C86C 00004810 */  mfhi      $t1
/* 398A60 E009C870 01231021 */  addu      $v0, $t1, $v1
/* 398A64 E009C874 000211C3 */  sra       $v0, $v0, 7
/* 398A68 E009C878 00031FC3 */  sra       $v1, $v1, 0x1f
/* 398A6C E009C87C 00431023 */  subu      $v0, $v0, $v1
/* 398A70 E009C880 02028023 */  subu      $s0, $s0, $v0
/* 398A74 E009C884 44901000 */  mtc1      $s0, $f2
/* 398A78 E009C888 00000000 */  nop
/* 398A7C E009C88C 468010A0 */  cvt.s.w   $f2, $f2
/* 398A80 E009C890 44051000 */  mfc1      $a1, $f2
/* 398A84 E009C894 27A40018 */  addiu     $a0, $sp, 0x18
/* 398A88 E009C898 0C080104 */  jal       func_E0200410
/* 398A8C E009C89C AFA70010 */   sw       $a3, 0x10($sp)
/* 398A90 E009C8A0 27A40018 */  addiu     $a0, $sp, 0x18
/* 398A94 E009C8A4 96C50000 */  lhu       $a1, ($s6)
/* 398A98 E009C8A8 8E620000 */  lw        $v0, ($s3)
/* 398A9C E009C8AC 00052980 */  sll       $a1, $a1, 6
/* 398AA0 E009C8B0 00B52821 */  addu      $a1, $a1, $s5
/* 398AA4 E009C8B4 0C080118 */  jal       func_E0200460
/* 398AA8 E009C8B8 00452821 */   addu     $a1, $v0, $a1
/* 398AAC E009C8BC 8FC40000 */  lw        $a0, ($fp)
/* 398AB0 E009C8C0 96C20000 */  lhu       $v0, ($s6)
/* 398AB4 E009C8C4 0080282D */  daddu     $a1, $a0, $zero
/* 398AB8 E009C8C8 24840008 */  addiu     $a0, $a0, 8
/* 398ABC E009C8CC 24430001 */  addiu     $v1, $v0, 1
/* 398AC0 E009C8D0 3042FFFF */  andi      $v0, $v0, 0xffff
/* 398AC4 E009C8D4 AFC40000 */  sw        $a0, ($fp)
/* 398AC8 E009C8D8 8FA9009C */  lw        $t1, 0x9c($sp)
/* 398ACC E009C8DC 00021180 */  sll       $v0, $v0, 6
/* 398AD0 E009C8E0 ACA90000 */  sw        $t1, ($a1)
/* 398AD4 E009C8E4 A6C30000 */  sh        $v1, ($s6)
/* 398AD8 E009C8E8 8E630000 */  lw        $v1, ($s3)
/* 398ADC E009C8EC 00551021 */  addu      $v0, $v0, $s5
/* 398AE0 E009C8F0 00621821 */  addu      $v1, $v1, $v0
/* 398AE4 E009C8F4 24820008 */  addiu     $v0, $a0, 8
/* 398AE8 E009C8F8 ACA30004 */  sw        $v1, 4($a1)
/* 398AEC E009C8FC AFC20000 */  sw        $v0, ($fp)
/* 398AF0 E009C900 3C020900 */  lui       $v0, 0x900
/* 398AF4 E009C904 24426D48 */  addiu     $v0, $v0, 0x6d48
/* 398AF8 E009C908 AC820004 */  sw        $v0, 4($a0)
/* 398AFC E009C90C 24820010 */  addiu     $v0, $a0, 0x10
/* 398B00 E009C910 AC940000 */  sw        $s4, ($a0)
/* 398B04 E009C914 AFC20000 */  sw        $v0, ($fp)
/* 398B08 E009C918 8FA900A0 */  lw        $t1, 0xa0($sp)
/* 398B0C E009C91C 24820018 */  addiu     $v0, $a0, 0x18
/* 398B10 E009C920 AC890008 */  sw        $t1, 8($a0)
/* 398B14 E009C924 AC92000C */  sw        $s2, 0xc($a0)
/* 398B18 E009C928 AFC20000 */  sw        $v0, ($fp)
/* 398B1C E009C92C 3C020900 */  lui       $v0, 0x900
/* 398B20 E009C930 24420218 */  addiu     $v0, $v0, 0x218
/* 398B24 E009C934 AC820014 */  sw        $v0, 0x14($a0)
/* 398B28 E009C938 24820020 */  addiu     $v0, $a0, 0x20
/* 398B2C E009C93C AC940010 */  sw        $s4, 0x10($a0)
/* 398B30 E009C940 AFC20000 */  sw        $v0, ($fp)
/* 398B34 E009C944 3C020900 */  lui       $v0, 0x900
/* 398B38 E009C948 24427090 */  addiu     $v0, $v0, 0x7090
/* 398B3C E009C94C AC940018 */  sw        $s4, 0x18($a0)
/* 398B40 E009C950 AC82001C */  sw        $v0, 0x1c($a0)
.LE009C954:
/* 398B44 E009C954 3C03D838 */  lui       $v1, 0xd838
/* 398B48 E009C958 8FC20000 */  lw        $v0, ($fp)
/* 398B4C E009C95C 34630002 */  ori       $v1, $v1, 2
/* 398B50 E009C960 0040202D */  daddu     $a0, $v0, $zero
/* 398B54 E009C964 24420008 */  addiu     $v0, $v0, 8
/* 398B58 E009C968 AFC20000 */  sw        $v0, ($fp)
/* 398B5C E009C96C AC830000 */  sw        $v1, ($a0)
/* 398B60 E009C970 24030040 */  addiu     $v1, $zero, 0x40
/* 398B64 E009C974 AC830004 */  sw        $v1, 4($a0)
/* 398B68 E009C978 24430008 */  addiu     $v1, $v0, 8
/* 398B6C E009C97C 3C09E700 */  lui       $t1, 0xe700
/* 398B70 E009C980 AFC30000 */  sw        $v1, ($fp)
/* 398B74 E009C984 AC490000 */  sw        $t1, ($v0)
/* 398B78 E009C988 AC400004 */  sw        $zero, 4($v0)
/* 398B7C E009C98C 8FBF00CC */  lw        $ra, 0xcc($sp)
/* 398B80 E009C990 8FBE00C8 */  lw        $fp, 0xc8($sp)
/* 398B84 E009C994 8FB700C4 */  lw        $s7, 0xc4($sp)
/* 398B88 E009C998 8FB600C0 */  lw        $s6, 0xc0($sp)
/* 398B8C E009C99C 8FB500BC */  lw        $s5, 0xbc($sp)
/* 398B90 E009C9A0 8FB400B8 */  lw        $s4, 0xb8($sp)
/* 398B94 E009C9A4 8FB300B4 */  lw        $s3, 0xb4($sp)
/* 398B98 E009C9A8 8FB200B0 */  lw        $s2, 0xb0($sp)
/* 398B9C E009C9AC 8FB100AC */  lw        $s1, 0xac($sp)
/* 398BA0 E009C9B0 8FB000A8 */  lw        $s0, 0xa8($sp)
/* 398BA4 E009C9B4 D7B600D8 */  ldc1      $f22, 0xd8($sp)
/* 398BA8 E009C9B8 D7B400D0 */  ldc1      $f20, 0xd0($sp)
/* 398BAC E009C9BC 03E00008 */  jr        $ra
/* 398BB0 E009C9C0 27BD00E0 */   addiu    $sp, $sp, 0xe0
/* 398BB4 E009C9C4 00000000 */  nop
/* 398BB8 E009C9C8 00000000 */  nop
/* 398BBC E009C9CC 00000000 */  nop
