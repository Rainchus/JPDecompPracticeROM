.include "macro.inc"

.section .data

glabel D_80240060_957DD0
.word 0xC3ED8000, 0x00000000, 0x00000000, 0x42B40000, 0x43ED8000, 0x00000000, 0x00000000, 0x43870000, 0x00000000, 0x00000000, 0xC3ED8000, 0x43340000, 0x00000000, 0x00000000, 0x43ED8000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80240258_957FC8, D_80240060_957DD0, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, func_80200000, 0x0019008F

glabel D_802400E0_957E50
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80240800, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024013C_957EAC
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80240808, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240198_957F08
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000002, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80240810, 0x00000003, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802401F4_957F64
.word 0x00000047, 0x00000005, D_802400E0_957E50, 0x00080000, 0x00000007, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_8024013C_957EAC, 0x00080000, 0x00000005, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80240198_957F08, 0x00080000, 0x00000003, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240258_957FC8
.word 0x00000024, 0x00000002, 0xF5DE0329, 0x0000000A, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x0000000A, 0x00000002, 0xF5DE0180, 0xFFFFFFC1, 0x00000043, 0x00000002, DisablePulseStone, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x802407D8, 0x00000043, 0x00000001, sbk_63_SpawnSunEffect, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000017, 0x00000000, 0x00000008, 0x00000024, 0x00000002, 0xFE363C80, D_802401F4_957F64, 0x00000044, 0x00000001, EnterWalk, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000
