.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E0046160
/* 356040 E0046160 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 356044 E0046164 AFBF0010 */  sw        $ra, 0x10($sp)
/* 356048 E0046168 8C85000C */  lw        $a1, 0xc($a0)
/* 35604C E004616C C4A20008 */  lwc1      $f2, 8($a1)
/* 356050 E0046170 C4A00024 */  lwc1      $f0, 0x24($a1)
/* 356054 E0046174 8CA60018 */  lw        $a2, 0x18($a1)
/* 356058 E0046178 4602003E */  c.le.s    $f0, $f2
/* 35605C E004617C 00000000 */  nop
/* 356060 E0046180 45000031 */  bc1f      .LE0046248
/* 356064 E0046184 24C2FFFF */   addiu    $v0, $a2, -1
/* 356068 E0046188 ACA20018 */  sw        $v0, 0x18($a1)
/* 35606C E004618C 8CA2001C */  lw        $v0, 0x1c($a1)
/* 356070 E0046190 8CA30018 */  lw        $v1, 0x18($a1)
/* 356074 E0046194 24420001 */  addiu     $v0, $v0, 1
/* 356078 E0046198 04610005 */  bgez      $v1, .LE00461B0
/* 35607C E004619C ACA2001C */   sw       $v0, 0x1c($a1)
/* 356080 E00461A0 0C080128 */  jal       func_E02004A0
/* 356084 E00461A4 00000000 */   nop
/* 356088 E00461A8 0801189C */  j         .LE0046270
/* 35608C E00461AC 00000000 */   nop
.LE00461B0:
/* 356090 E00461B0 28C20006 */  slti      $v0, $a2, 6
/* 356094 E00461B4 14400012 */  bnez      $v0, .LE0046200
/* 356098 E00461B8 00061080 */   sll      $v0, $a2, 2
/* 35609C E00461BC 24020078 */  addiu     $v0, $zero, 0x78
/* 3560A0 E00461C0 8CA30014 */  lw        $v1, 0x14($a1)
/* 3560A4 E00461C4 3C01E004 */  lui       $at, %hi(D_E0046638)
/* 3560A8 E00461C8 D4206638 */  ldc1      $f0, %lo(D_E0046638)($at)
/* 3560AC E00461CC 00431023 */  subu      $v0, $v0, $v1
/* 3560B0 E00461D0 44821000 */  mtc1      $v0, $f2
/* 3560B4 E00461D4 00000000 */  nop
/* 3560B8 E00461D8 468010A1 */  cvt.d.w   $f2, $f2
/* 3560BC E00461DC 46201082 */  mul.d     $f2, $f2, $f0
/* 3560C0 E00461E0 00000000 */  nop
/* 3560C4 E00461E4 44830000 */  mtc1      $v1, $f0
/* 3560C8 E00461E8 00000000 */  nop
/* 3560CC E00461EC 46800021 */  cvt.d.w   $f0, $f0
/* 3560D0 E00461F0 46220000 */  add.d     $f0, $f0, $f2
/* 3560D4 E00461F4 4620010D */  trunc.w.d $f4, $f0
/* 3560D8 E00461F8 08011883 */  j         .LE004620C
/* 3560DC E00461FC E4A40014 */   swc1     $f4, 0x14($a1)
.LE0046200:
/* 3560E0 E0046200 00461021 */  addu      $v0, $v0, $a2
/* 3560E4 E0046204 00021080 */  sll       $v0, $v0, 2
/* 3560E8 E0046208 ACA20014 */  sw        $v0, 0x14($a1)
.LE004620C:
/* 3560EC E004620C 8CA30020 */  lw        $v1, 0x20($a1)
/* 3560F0 E0046210 24620001 */  addiu     $v0, $v1, 1
/* 3560F4 E0046214 ACA20020 */  sw        $v0, 0x20($a1)
/* 3560F8 E0046218 28420020 */  slti      $v0, $v0, 0x20
/* 3560FC E004621C 14400002 */  bnez      $v0, .LE0046228
/* 356100 E0046220 2462FFE1 */   addiu    $v0, $v1, -0x1f
/* 356104 E0046224 ACA20020 */  sw        $v0, 0x20($a1)
.LE0046228:
/* 356108 E0046228 C4A00010 */  lwc1      $f0, 0x10($a1)
/* 35610C E004622C 3C01E004 */  lui       $at, %hi(D_E0046640)
/* 356110 E0046230 D4226640 */  ldc1      $f2, %lo(D_E0046640)($at)
/* 356114 E0046234 46000021 */  cvt.d.s   $f0, $f0
/* 356118 E0046238 46220000 */  add.d     $f0, $f0, $f2
/* 35611C E004623C 46200020 */  cvt.s.d   $f0, $f0
/* 356120 E0046240 0801189C */  j         .LE0046270
/* 356124 E0046244 E4A00010 */   swc1     $f0, 0x10($a1)
.LE0046248:
/* 356128 E0046248 C4A00008 */  lwc1      $f0, 8($a1)
/* 35612C E004624C 3C014000 */  lui       $at, 0x4000
/* 356130 E0046250 44811000 */  mtc1      $at, $f2
/* 356134 E0046254 240200FF */  addiu     $v0, $zero, 0xff
/* 356138 E0046258 ACA20014 */  sw        $v0, 0x14($a1)
/* 35613C E004625C 8CA2001C */  lw        $v0, 0x1c($a1)
/* 356140 E0046260 46020000 */  add.s     $f0, $f0, $f2
/* 356144 E0046264 24420001 */  addiu     $v0, $v0, 1
/* 356148 E0046268 ACA2001C */  sw        $v0, 0x1c($a1)
/* 35614C E004626C E4A00008 */  swc1      $f0, 8($a1)
.LE0046270:
/* 356150 E0046270 8FBF0010 */  lw        $ra, 0x10($sp)
/* 356154 E0046274 03E00008 */  jr        $ra
/* 356158 E0046278 27BD0018 */   addiu    $sp, $sp, 0x18
