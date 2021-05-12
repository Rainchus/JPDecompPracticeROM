.include "macro.inc"

.section .data

glabel D_80241E30_8D3340
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80242840, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241E8C_8D339C
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80242848, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241EE8_8D33F8
.word 0x00000047, 0x00000005, D_80241E30_8D3340, 0x00080000, 0x00000003, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80241E8C_8D339C, 0x00080000, 0x00000006, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x0000001F, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, D_80242580_8D3A90, 0x00000046, 0x00000001, 0x802425B0, 0x00000044, 0x00000001, 0x80241E00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000004, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000007, 0x7FFFFE00, 0x00000024, 0x00000002, 0xFE363C80, D_80241EE8_8D33F8, 0x00000044, 0x00000001, EnterWalk, 0x00000008, 0x00000001, 0x00000001, 0x00000046, 0x00000001, 0x802427C8, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242040_8D3550
.word 0x3FC00000, 0x0000001E, 0x0000001E, 0x43020000, 0x00000000, 0x00000001, 0x40200000, 0x000000B4, 0x00000003, 0x43160000, 0x00000000, 0x00000001

glabel D_80242070_8D3580
.word 0x00000043, 0x00000002, DoBasicAI, D_80242040_8D3550, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242090_8D35A0
.word 0x00000000, 0x00170017, 0x00000000, 0x00000000, D_80242070_8D3580, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x00060000

glabel D_802420BC_8D35CC
.float 4.5, 3.5, 2.6, 2.0, 1.5, 20.0

glabel D_802420D4_8D35E4
.word 0x3FCCCCCD, 0x0000003C, 0x0000001E, 0x42A00000, 0x00000000, 0x00000005, 0x400CCCCD, 0x0000003C, 0x0000000F, 0x42C80000, 0x00000000, 0x00000001

glabel D_80242104_8D3614
.word 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000005, 0xFFFFFE0C, 0x00000043, 0x00000003, SetSelfVar, 0x00000006, 0x00000015, 0x00000043, 0x00000003, SetSelfVar, 0x00000001, 0x00000244, 0x00000043, 0x00000002, func_8024130C_8D281C, D_802420D4_8D35E4, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242174_8D3684
.word 0x00000000, 0x00140015, 0x00000000, 0x00000000, D_80242104_8D3614, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x00060002

glabel D_802421A0_8D36B0
.word 0x00000000, D_80242090_8D35A0, 0x43200000, 0x00000000, 0x41F00000, 0x00002C00, 0x00000000, 0x00000000, 0x00000000, 0x0000010E, 0x8005008A, 0x000A0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980002, 0x3FFF2666, 0x4CCC0002, 0x3FFF3FFF, 0x3FFF0002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x000000A0, 0x00000000, 0x0000001E, 0x0000001E, 0x00000014, 0xFFFF8001, 0x00000001, 0x000000A0, 0x00000000, 0x0000001E, 0x0000012C, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00270001, 0x00270002, 0x00270003, 0x00270003, 0x00270001, 0x00270001, 0x00270005, 0x00270005, 0x00270003, 0x00270003, 0x00270003, 0x00270003, 0x00270003, 0x00270003, 0x00270003, 0x00270003, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_80242390_8D38A0
.word 0x00000001, D_80242174_8D3684, 0x44034000, 0x42700000, 0x41700000, 0x00000D00, 0x00000000, 0x00000000, 0x00000000, 0x0000010E, 0x8005008A, 0x000A0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980002, 0x3FFF2666, 0x4CCC0002, 0x3FFF3FFF, 0x3FFF0002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x0000020D, 0x0000003C, 0x0000000F, 0x0000001E, 0x00000000, 0xFFFF8001, 0x00000000, 0x0000020D, 0x0000003C, 0x0000000F, 0x0000012C, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00280001, 0x00280003, 0x00280004, 0x00280004, 0x00280001, 0x00280001, 0x00280006, 0x00280006, 0x00280004, 0x00280004, 0x00280004, 0x00280004, 0x00280004, 0x00280004, 0x00280004, 0x00280004, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_80242580_8D3A90
.word 0x00000001, D_802421A0_8D36B0, 0x000B0003, 0x00000001, D_80242390_8D38A0, 0x00090003, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
