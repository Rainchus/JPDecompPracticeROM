.include "macro.inc"

.section .data

glabel D_80240F60_AAD790
.word 0x00000000, 0x00180018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000

glabel D_80240F8C_AAD7BC
.word 0x00000000, D_80240F60_AAD790, 0x00000000, 0xC47A0000, 0x00000000, 0x00000F0D, 0x00000000, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00820000, 0x00820000, 0x00820000, 0x00820000, 0x00820000, 0x00820000, 0x00820000, 0x00820000, 0x00820000, 0x00820000, 0x00820000, 0x00820000, 0x00820000, 0x00820000, 0x00820000, 0x00820000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, D_80240F8C_AAD7BC, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00180018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000

glabel D_802411CC_AAD9FC
.word 0x00000000, 0x00300020, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000

glabel D_802411F8_AADA28
.word 0x00000000, 0x001C0018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000

glabel D_80241224_AADA54
.word 0x00000000, 0x00180018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000

glabel D_80241250_AADA80
.word 0x00000000, 0x001E0018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000, 0x00000000, 0x00170013, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000

glabel D_802412A8_AADAD8
.word 0x00000000, 0x00180018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000

glabel D_802412D4_AADB04
.word 0x00000000, 0x00160019, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000

glabel D_80241300_AADB30
.word 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00C20009, 0x00C20003, 0x00000000, 0x00010055, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241330_AADB60
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_80241300_AADB30, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241354_AADB84
.word 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00960004, 0x00960001, 0x00000000, 0x00010060, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241384_AADBB4
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_80241354_AADB84, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802413A8_AADBD8
.word 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00970004, 0x00970001, 0x00000000, 0x00010061, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802413D8_AADC08
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_802413A8_AADBD8, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802413FC_AADC2C
.word 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00CE0004, 0x00CE0001, 0x00000000, 0x00010056, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024142C_AADC5C
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_802413FC_AADC2C, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241450_AADC80
.word 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00CF0005, 0x00CF0001, 0x00000000, 0x00010057, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241480_AADCB0
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_80241450_AADC80, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802414A4_AADCD4
.word 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x009A0004, 0x009A0001, 0x00000000, 0x00010062, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802414D4_AADD04
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_802414A4_AADCD4, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802414F8_AADD28
.word 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x009A0004, 0x009A0001, 0x00000000, 0x00010063, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241528_AADD58
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_802414F8_AADD28, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024154C_AADD7C
.word 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00BD0005, 0x00BD0001, 0x00000000, 0x00010058, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024157C_AADDAC
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_8024154C_AADD7C, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802415A0_AADDD0
.word 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00940105, 0x00940101, 0x00000000, 0x0001005E, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802415D0_AADE00
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_802415A0_AADDD0, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802415F4_AADE24
.word 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00950004, 0x00950001, 0x00000000, 0x0001005D, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241624_AADE54
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_802415F4_AADE24, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241648_AADE78
.word 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00950104, 0x00950101, 0x00000000, 0x0001005F, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241678_AADEA8
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_80241648_AADE78, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024169C_AADECC
.word 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830204, 0x00830201, 0x00000000, 0x00010059, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802416CC_AADEFC
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_8024169C_AADECC, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802416F0_AADF20
.word 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00870004, 0x00870001, 0x00000000, 0x0001005A, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241720_AADF50
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_802416F0_AADF20, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241744_AADF74
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000003, NpcFacePlayer, 0x0000000E, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000006, SpeakToPlayer, 0x0000000E, 0x00870304, 0x00870301, 0x00000000, 0x0001005C, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, SetPlayerSpeed, 0xF24A8A80, 0x00000043, 0x00000004, PlayerMoveTo, 0x00000262, 0x0000006E, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802417E8_AAE018
.word 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00870304, 0x00870301, 0x00000000, 0x0001005B, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241818_AAE048
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_802417E8_AAE018, 0x00000047, 0x00000005, D_80241744_AADF74, 0x00000080, 0x00000002, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241858_AAE088
.word 0x00C20000, 0x00C20003, 0x00C20009, 0xFFFFFFFF

glabel D_80241868_AAE098
.word 0x00960000, 0x00960001, 0x00960004, 0xFFFFFFFF

glabel D_80241878_AAE0A8
.word 0x00970000, 0x00970001, 0x00970004, 0xFFFFFFFF

glabel D_80241888_AAE0B8
.word 0x00000000, D_802411CC_AAD9FC, 0x428C0000, 0x00000000, 0xC1F00000, 0x00002D09, D_80241330_AADB60, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00C20003, 0x00C20003, 0x00C20003, 0x00C20003, 0x00C20003, 0x00C20003, 0x00C20003, 0x00C20003, 0x00C20003, 0x00C20003, 0x00C20003, 0x00C20003, 0x00C20003, 0x00C20003, 0x00C20003, 0x00C20003, 0x00000000, 0x00000000, D_80241858_AAE088, 0x001A00BC, 0x00000001, D_802411CC_AAD9FC, 0x428C0000, 0x00000000, 0x43C80000, 0x00002D09, D_80241384_AADBB4, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00960001, 0x00960002, 0x00960001, 0x00960001, 0x00960001, 0x00960001, 0x00960001, 0x00960001, 0x00960001, 0x00960001, 0x00960001, 0x00960001, 0x00960001, 0x00960001, 0x00960001, 0x00960001, 0x00000000, 0x00000000, D_80241868_AAE098, 0x001A00C1, 0x00000002, D_802411F8_AADA28, 0x43200000, 0x00000000, 0x44070000, 0x00002D09, D_802413D8_AADC08, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00970001, 0x00970002, 0x00970003, 0x00970003, 0x00970001, 0x00970001, 0x00970001, 0x00970001, 0x00970001, 0x00970001, 0x00970001, 0x00970001, 0x00970001, 0x00970001, 0x00970001, 0x00970001, 0x00000000, 0x00000000, D_80241878_AAE0A8, 0x001A00C3

glabel D_80241E58_AAE688
.word 0x00CE0000, 0x00CE0001, 0x00CE0004, 0xFFFFFFFF

glabel D_80241E68_AAE698
.word 0x00CF0000, 0x00CF0001, 0x00CF0005, 0xFFFFFFFF

glabel D_80241E78_AAE6A8
.word 0x009A0000, 0x009A0001, 0x009A0004, 0xFFFFFFFF

glabel D_80241E88_AAE6B8
.word 0x00000003, D_80241224_AADA54, 0x43160000, 0x00000000, 0x42D20000, 0x00002D09, D_8024142C_AADC5C, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00CE0001, 0x00CE0002, 0x00CE0001, 0x00CE0001, 0x00CE0001, 0x00CE0001, 0x00CE0001, 0x00CE0001, 0x00CE0001, 0x00CE0001, 0x00CE0001, 0x00CE0001, 0x00CE0001, 0x00CE0001, 0x00CE0001, 0x00CE0001, 0x00000000, 0x00000000, D_80241E58_AAE688, 0x001A00E6, 0x00000004, D_80241224_AADA54, 0x43480000, 0x00000000, 0x42D20000, 0x00002D09, D_80241480_AADCB0, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00CF0001, 0x00CF0002, 0x00CF0001, 0x00CF0001, 0x00CF0001, 0x00CF0001, 0x00CF0001, 0x00CF0001, 0x00CF0001, 0x00CF0001, 0x00CF0001, 0x00CF0001, 0x00CF0001, 0x00CF0001, 0x00CF0001, 0x00CF0001, 0x00000000, 0x00000000, D_80241E68_AAE698, 0x001A00E5, 0x00000005, D_80241224_AADA54, 0x42E60000, 0x00000000, 0x44070000, 0x00000D0D, D_802414D4_AADD04, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x009A0001, 0x009A0002, 0x009A0003, 0x009A0003, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x00000000, 0x00000000, D_80241E78_AAE6A8, 0x00000000, 0x00000006, D_80241224_AADA54, 0x43500000, 0x00000000, 0x44070000, 0x00000D0D, D_80241528_AADD58, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x009A0001, 0x009A0002, 0x009A0003, 0x009A0003, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x009A0001, 0x00000000, 0x00000000, D_80241E78_AAE6A8, 0x00000000

glabel D_80242648_AAEE78
.word 0x00BD0000, 0x00BD0001, 0x00BD0005, 0xFFFFFFFF

glabel D_80242658_AAEE88
.word 0x00940000, 0x00940001, 0x00940005, 0xFFFFFFFF

glabel D_80242668_AAEE98
.word 0x00000007, D_802412D4_AADB04, 0xC2700000, 0x00000000, 0xC1A00000, 0x00002D09, D_8024157C_AADDAC, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00BD0001, 0x00BD0001, 0x00BD0004, 0x00BD0004, 0x00BD0001, 0x00BD0001, 0x00BD0001, 0x00BD0001, 0x00BD0001, 0x00BD0001, 0x00BD0001, 0x00BD0001, 0x00BD0001, 0x00BD0001, 0x00BD0001, 0x00BD0001, 0x00000000, 0x00000000, D_80242648_AAEE78, 0x001A0099, 0x00000008, D_802412D4_AADB04, 0xC2C80000, 0x00000000, 0xC2480000, 0x00002D09, D_802415D0_AADE00, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00940101, 0x00940104, 0x00940104, 0x00940101, 0x00940101, 0x00940101, 0x00940101, 0x00940101, 0x00940101, 0x00940101, 0x00940101, 0x00940101, 0x00940101, 0x00940101, 0x00940101, 0x00940101, 0x00000000, 0x00000000, D_80242658_AAEE88, 0x00000000

glabel D_80242A48_AAF278
.word 0x00950000, 0x00950001, 0x00950004, 0xFFFFFFFF

glabel D_80242A58_AAF288
.word 0x00000009, D_802412A8_AADAD8, 0x43870000, 0x41A00000, 0x432F0000, 0x00000D09, D_80241624_AADE54, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00950001, 0x00950002, 0x00950003, 0x00950003, 0x00950001, 0x00950001, 0x00950000, 0x00950000, 0x00950003, 0x00950003, 0x00950003, 0x00950003, 0x00950003, 0x00950003, 0x00950003, 0x00950003, 0x00000000, 0x00000000, D_80242A48_AAF278, 0x00000000, 0x0000000A, D_802412A8_AADAD8, 0x43A00000, 0x41A00000, 0x43480000, 0x00000D09, D_80241678_AADEA8, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00950101, 0x00950102, 0x00950103, 0x00950103, 0x00950101, 0x00950101, 0x00950100, 0x00950100, 0x0095010A, 0x00950103, 0x00950103, 0x00950103, 0x00950103, 0x00950103, 0x00950103, 0x00950103, 0x00000000, 0x00000000, D_80242A48_AAF278, 0x00000000

glabel D_80242E38_AAF668
.word 0x00830000, 0x00830001, 0x00830004, 0xFFFFFFFF

glabel D_80242E48_AAF678
.word 0x00870000, 0x00870001, 0x00870004, 0xFFFFFFFF

glabel D_80242E58_AAF688
.word 0x0000000C, D_80241250_AADA80, 0xC1C80000, 0x00000000, 0x43480000, 0x00002D09, D_802416CC_AADEFC, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00830201, 0x00830202, 0x00830203, 0x00830203, 0x00830201, 0x00830201, 0x00830206, 0x00830206, 0x00830203, 0x00830203, 0x00830203, 0x00830203, 0x00830203, 0x00830203, 0x00830203, 0x00830203, 0x00000000, 0x00000000, D_80242E38_AAF668, 0x00000000, 0x0000000D, D_80241250_AADA80, 0xC2480000, 0x00000000, 0xC3480000, 0x00002D09, D_80241720_AADF50, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00870001, 0x00870001, 0x00870001, 0x00870001, 0x00870001, 0x00870001, 0x00870001, 0x00870001, 0x00870001, 0x00870001, 0x00870001, 0x00870001, 0x00870001, 0x00870001, 0x00870001, 0x00870001, 0x00000000, 0x00000000, D_80242E48_AAF678, 0x00000000, 0x0000000E, D_80241250_AADA80, 0x440C0000, 0x41A00000, 0x42C80000, 0x00002D09, D_80241818_AAE048, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00870301, 0x00870301, 0x00870301, 0x00870301, 0x00870301, 0x00870301, 0x00870301, 0x00870301, 0x00870301, 0x00870301, 0x00870301, 0x00870301, 0x00870301, 0x00870301, 0x00870301, 0x00870301, 0x00000000, 0x00000000, D_80242E48_AAF678, 0x00000000, 0x00000003, D_80241888_AAE0B8, 0x00000000, 0x00000004, D_80241E88_AAE6B8, 0x00000000, 0x00000002, D_80242668_AAEE98, 0x00000000, 0x00000002, D_80242A58_AAF288, 0x00000000, 0x00000003, D_80242E58_AAF688, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x00000307, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0x00000014, 0xFFFFFFED, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000004, osr_00_UnkFunc27, 0x00000002, 0x00000000, 0x00000003, 0x00000043, 0x00000004, osr_00_UnkFunc27, 0x00000001, 0xFFFFFFFF, 0x00000003, 0x00000043, 0x00000007, func_80240678_AACEA8, 0x000000C8, 0x000000C8, 0x000000C8, 0x00000028, 0x00000028, 0x00000028, 0x00000043, 0x00000001, func_802406E0_AACF10, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x00000022, 0x000000A0, 0x00000028, 0x00000008, 0x00000001, 0x0000000C, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x00000023, 0x000000A0, 0x00000028, 0x00000008, 0x00000001, 0x00000003, 0x00000043, 0x00000004, GotoMapSpecial, 0x802437B0, 0x00000001, 0x00000007, 0x00000008, 0x00000001, 0x00000028, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF2550680, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24A8880, 0xF24A6280, 0x00000043, 0x00000004, SetCamPosA, 0x00000000, 0xF24B6A80, 0x00000000, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000056, 0x00000000, 0x00000043, 0x00000004, PlayerMoveTo, 0x00000000, 0xFFFFFF06, 0x00000096, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x0082001E, 0x00000043, 0x00000005, SetNpcPos, 0x00000000, 0x00000000, 0x00000000, 0x0000015E, 0x00000043, 0x00000005, NpcMoveTo, 0x00000000, 0x00000000, 0xFFFFFF38, 0x00000096, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x0082001C, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000043, 0x00000003, GotoMap, 0x802437B8, 0x00000005, 0x00000008, 0x00000001, 0x00000064, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000
