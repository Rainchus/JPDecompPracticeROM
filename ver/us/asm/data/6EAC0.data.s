.include "macro.inc"

.section .data

glabel D_800936C0
.word 0x00000043, 0x00000001, func_8005DB00, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0xFE363C80, 0x00000043, 0x00000005, GetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C83, 0xFE363C82, 0x00000024, 0x00000002, 0xFE363C81, 0xFE363C83, 0x00000027, 0x00000002, 0xFE363C81, 0x00000001, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0xFE363C83, 0x00000027, 0x00000002, 0xFE363C81, 0x00000004, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0xFE363C83, 0x00000027, 0x00000002, 0xFE363C81, 0x00000010, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0xFE363C83, 0x00000027, 0x00000002, 0xFE363C81, 0x00000008, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0xFE363C83, 0x00000027, 0x00000002, 0xFE363C81, 0x00000014, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0xFE363C83, 0x00000027, 0x00000002, 0xFE363C81, 0x00000008, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0xFE363C83, 0x00000027, 0x00000002, 0xFE363C81, 0x0000000C, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0xFE363C83, 0x00000027, 0x00000002, 0xFE363C81, 0x00000006, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0xFE363C83, 0x00000027, 0x00000002, 0xFE363C81, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_800939A4
.word 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, GetSelfVar, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000001, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, D_800939A4, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00040200, 0x00000001, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000808, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0xFE363C82, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000005, 0x00000001, 0x0000001E, 0x00000043, 0x00000005, SetNpcRotation, 0xFFFFFFFF, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000001, func_8005DD54, 0x00000043, 0x00000007, func_802CFD30, 0xFFFFFFFF, 0x00000006, 0xFE363C82, 0xFE363C82, 0xFE363C82, 0x00000000, 0x00000027, 0x00000002, 0xFE363C80, 0x0000001E, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000005, SetNpcRotation, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000007, func_802CFD30, 0xFFFFFFFF, 0x00000006, 0x000000FF, 0x000000FF, 0x000000FF, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00040000, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000043, 0x00000001, func_8005DDF0, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, 0xFE363C81, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_80093B80
.word 0x00000000

glabel D_80093B84
.word 0x4E755379, 0x7374656D, 0x322E3035, 0x00000000

glabel D_80093B94
.word D_80093B84, 0x00000000, 0x00000000

glabel D_80093BA0
.word 0x80096030, 0x80097660

glabel FrameBuf
.word 0x8038F800, 0x803B5000, D_803DA800, 0x00000000

glabel rdpstateinit_dl
.word 0xFB000000, 0x00000000, 0xFA000000, 0x00000000, 0xF9000000, 0x00000000, 0xF8000000, 0x00000000, 0xF7000000, 0x00000000, 0xEE000000, 0x00000000, 0xEC000000, 0x00000000, 0xEB000000, 0x00000000, 0xEA000000, 0x00000000, 0xFCFFFFFF, 0xFFFE793C, 0xED000000, 0x005003C0, 0xF5100000, 0x00000000, 0xF5100000, 0x01000000, 0xF5100000, 0x02000000, 0xF5100000, 0x03000000, 0xF5100000, 0x04000000, 0xF5100000, 0x05000000, 0xF5100000, 0x06000000, 0xF5100000, 0x07000000, 0xF2000000, 0x00000000, 0xF2000000, 0x01000000, 0xF2000000, 0x02000000, 0xF2000000, 0x03000000, 0xF2000000, 0x04000000, 0xF2000000, 0x05000000, 0xF2000000, 0x06000000, 0xF2000000, 0x07000000, 0xE7000000, 0x00000000, 0xDF000000, 0x00000000

glabel nuContPakCompanyCode
.short 0x0000, 0x0000

glabel nuContPakGameCode
.word 0x00000000

glabel D_80093CA8
.word 0x00000000, contPakOpen, contPakFree, contPakFileOpen, contPakFileReadWrite, contPakFileDelete, contPakFileState, contPakFileNum, contPakRepairId, 0x00000000

glabel nuContPakCallBack
.word 0x00000000, D_80093CA8, 0x02000000, 0x00000000
