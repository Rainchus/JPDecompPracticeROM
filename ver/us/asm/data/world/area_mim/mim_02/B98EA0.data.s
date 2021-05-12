.include "macro.inc"

.section .data

glabel D_802412A0_B98EA0
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80243820, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802412FC_B98EFC
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80243828, 0x00000003, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241358_B98F58
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000002, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80243828, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802413B4_B98FB4
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000003, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80243828, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241410_B99010
.word 0x00000047, 0x00000005, D_802412A0_B98EA0, 0x00080000, 0x00000004, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_802412FC_B98EFC, 0x00080000, 0x00000013, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80241358_B98F58, 0x00080000, 0x0000000E, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_802413B4_B98FB4, 0x00080000, 0x00000009, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x0000000C, 0x00000043, 0x00000002, SetSpriteShading, 0x00070001, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x0000028A, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xF70F2E82, 0xF5DE022B, 0x00000043, 0x00000002, GetMapID, 0xF5DE022B, 0x00000046, 0x00000001, 0x80243430, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, D_80242754_B9A354, 0x00000024, 0x00000002, 0xFE363C80, D_80241410_B99010, 0x00000044, 0x00000001, EnterWalk, 0x00000008, 0x00000001, 0x00000001, 0x00000044, 0x00000001, 0x80241260, 0x00000044, 0x00000001, 0x80243650, 0x00000043, 0x00000001, func_80240000_B97C00, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8680, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802415E0_B991E0
.word 0x00000000, 0x00200018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000

glabel D_8024160C_B9920C
.word 0x3F800000, 0x0000001E, 0x0000000A, 0x42F00000, 0x00000000, 0x00000005, 0x40900000, 0x0000005A, 0x00000005, 0x43200000, 0x00000000, 0x00000001

glabel D_8024163C_B9923C
.word 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000040, 0x00000001, 0x00000043, 0x00000003, func_80240C60_B98860, D_8024160C_B9920C, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241678_B99278
.word 0x00000000, 0x00140016, 0x00000000, 0x00000000, D_8024163C_B9923C, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x000B0000, 0x0000001B, 0x00000000

glabel D_802416AC_B992AC
.word 0x00000000

glabel D_802416B0_B992B0
.word 0x00000000

glabel D_802416B4_B992B4
.word 0x00000024, 0x00000002, 0xFE363C89, 0xFE363C81, 0x00000043, 0x00000001, func_802D6420, 0x00000024, 0x00000002, 0xFE363C8A, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000016, 0x00000001, 0xFFFFFFFF, 0x0000001C, 0x00000000, 0x00000043, 0x00000002, RemoveKeyItemAt, 0xFE363C81, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000043, 0x00000004, mim_02_AddPlayerHandsOffset, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000042, 0x00000002, 0xFE363C80, 0x00050000, 0x00000043, 0x00000007, MakeItemEntity, 0xFE363C80, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000001, 0x00000000, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00060005, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010002, 0x00000043, 0x00000002, RemoveItemEntity, 0xFE363C80, 0x00000023, 0x00000000, 0x00000043, 0x00000002, func_80241104_B98D04, 0xFE363C8A, 0x00000043, 0x00000001, func_802D6954, 0x00000048, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_8024113C_B98D3C, 0xFE363C80, 0x0000004E, 0x00000006, D_802416B4_B992B4, 0x00000010, 0x00000000, func_80243880_95EA80, 0x00000000, 0x00000001, 0x00000043, 0x00000002, func_802410B0_B98CB0, 0xFE363C80, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241848_B99448
.word 0x0000000C, 0x00000002, 0xF5DE0180, 0xFFFFFFCE, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00BE0002, 0x00BE0001, 0x00000000, 0x000E0006, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00BE0002, 0x00BE0001, 0x00000000, 0x000E0007, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000000, 0x00000100, 0x00000001, 0x00000008, 0x00000001, 0x00000005, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0003, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0004, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFFFFFE56, 0x0000003A, 0xFFFFFFBA, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24A9280, 0xF24A6280, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x000000FA, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8680, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000057, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000000, 0x0000032C, 0x00000000, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000006, NpcJump0, 0x00000000, 0xFFFFFE56, 0x0000003A, 0xFFFFFFBA, 0x00000014, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0005, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0001, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00BE0002, 0x00BE0001, 0x00000000, 0x000E0008, 0x00000008, 0x00000001, 0x00000005, 0x00000056, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8680, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0003, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0004, 0x00000057, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000000, 0x0000032C, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0x00000000, 0xFFFFFEB3, 0x00000000, 0xFFFFFFAF, 0x00000014, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0005, 0x00000008, 0x00000001, 0x00000005, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0003, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0004, 0x00000057, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000000, 0x0000032C, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0x00000000, 0xFFFFFED4, 0x00000000, 0xFFFFFF56, 0x0000000F, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0005, 0x00000008, 0x00000001, 0x00000005, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0003, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0004, 0x00000057, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000000, 0x0000032C, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0x00000000, 0xFFFFFF1E, 0x00000000, 0xFFFFFF0B, 0x0000000F, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0005, 0x00000008, 0x00000001, 0x00000005, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0003, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0004, 0x00000057, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000000, 0x0000032C, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0x00000000, 0xFFFFFF60, 0x00000000, 0xFFFFFED8, 0x0000000F, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0005, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000005, SetNpcPos, 0x00000000, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0180, 0xFFFFFFCF, 0x00000046, 0x00000001, 0x80243620, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241DE0_B999E0
.word 0x00000014, 0x00000001, 0xF5DE0180, 0x00000018, 0x00000001, 0xFFFFFFCF, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000008, 0x00000001, 0x00000019, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, GetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24A9280, 0xF24A6280, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x0000012C, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8680, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00BE0002, 0x00BE0001, 0x00000000, 0x000E0003, 0x00000008, 0x00000001, 0x0000000A, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0003, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0004, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8680, 0x00000057, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000000, 0x0000032C, 0x00000000, 0x00000043, 0x00000003, SetNpcJumpscale, 0xFFFFFFFF, 0xF24A7E80, 0x00000043, 0x00000006, NpcJump0, 0xFFFFFFFF, 0xFFFFFE39, 0x00000000, 0x00000000, 0x00000014, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0005, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00BE0001, 0x00000008, 0x00000001, 0x0000000F, 0x0000000C, 0x00000002, 0xF5DE0180, 0xFFFFFFB7, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00BE0002, 0x00BE0001, 0x00000000, 0x000E0004, 0x00000012, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00BE0002, 0x00BE0001, 0x00000000, 0x000E0005, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242110_B99D10
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_80241848_B99448, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, D_80241DE0_B999E0, 0x00000014, 0x00000001, 0xF5DE0180, 0x0000001B, 0x00000001, 0xFFFFFFCF, 0x00000043, 0x00000005, SetNpcPos, 0x00000000, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242184_B99D84
.word 0x00000000, D_802415E0_B991E0, 0xC3D50000, 0x42680000, 0xC28C0000, 0x00400901, D_80242110_B99D10, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00BE0001, 0x00BE0001, 0x00BE0001, 0x00BE0001, 0x00BE0001, 0x00BE0001, 0x00BE0001, 0x00BE0001, 0x00BE0001, 0x00BE0001, 0x00BE0001, 0x00BE0001, 0x00BE0001, 0x00BE0001, 0x00BE0001, 0x00BE0001, 0x00000000, 0x00000000, 0x00000000, 0x001A00A1

glabel D_80242374_B99F74
.word 0x00000001, D_80241678_B99278, 0x43960000, 0x00000000, 0x43020000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x80050084, 0x000A0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980002, 0x3FFF2666, 0x4CCC0002, 0x3FFF3FFF, 0x3FFF0002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00020000, 0x00000000, 0x00000000, 0x00000000, 0x00000190, 0x00000000, 0xFFFF8001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000190, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x002B0102, 0x002B0102, 0x002B0103, 0x002B0103, 0x002B0101, 0x002B0101, 0x002B0108, 0x002B0108, 0x002B0103, 0x002B0103, 0x002B0103, 0x002B0103, 0x002B0103, 0x002B0103, 0x002B0103, 0x002B0103, 0x00000001, 0x00000000, 0x00000000, 0x00000000

glabel D_80242564_B9A164
.word 0x00000002, D_80241678_B99278, 0xC2C80000, 0x00000000, 0xC3A00000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x80050084, 0x000A0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980002, 0x3FFF2666, 0x4CCC0002, 0x3FFF3FFF, 0x3FFF0002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00020000, 0x00000000, 0x00000000, 0x00000000, 0x00000190, 0x00000000, 0xFFFF8001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000190, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x002B0102, 0x002B0102, 0x002B0103, 0x002B0103, 0x002B0101, 0x002B0101, 0x002B0108, 0x002B0108, 0x002B0103, 0x002B0103, 0x002B0103, 0x002B0103, 0x002B0103, 0x002B0103, 0x002B0103, 0x002B0103, 0x00000001, 0x00000000, 0x00000000, 0x00000000

glabel D_80242754_B9A354
.word 0x00000001, D_80242184_B99D84, 0x00000000, 0x00000001, D_80242374_B99F74, 0x0D000001, 0x00000001, D_80242564_B9A164, 0x0D010001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
