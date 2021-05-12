.include "macro.inc"

.section .data

glabel D_80240990_BDB140
.word 0x0000000F, 0x00000002, 0xF5DE0180, 0xFFFFFFDC, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0180, 0xFFFFFFDC, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x0000001C, 0x00000000, 0x00000008, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, SetPlayerPos, 0xFFFFFF4C, 0x00000000, 0x00000158, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFC, 0xFFFFFF4C, 0x00000014, 0x00000158, 0x00000043, 0x00000004, PlayerMoveTo, 0x00000000, 0x000000BE, 0x0000003C, 0x00000043, 0x00000002, SetPlayerAnimation, 0x0008001E, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, SetCamType, 0x00000000, 0x00000004, 0x00000001, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24A8E80, 0xF24A5680, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x000001F4, 0x00000043, 0x00000004, SetCamPosA, 0x00000000, 0x000000C8, 0x00000118, 0x00000043, 0x00000004, SetCamPosB, 0x00000000, 0x00000000, 0x0000006E, 0x00000043, 0x00000004, SetCamPosC, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x00000030, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x000E0042, 0x000000A0, 0x00000028, 0x00000049, 0x00000001, 0xFE363C8A, 0x00000043, 0x00000003, InterpPlayerYaw, 0x00000028, 0x00000000, 0x00000043, 0x00000002, SetPlayerAnimation, 0x01010002, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8280, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24A8A80, 0xF24A5680, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x00000190, 0x00000043, 0x00000004, SetCamPosA, 0x00000000, 0x000000C8, 0x0000012C, 0x00000043, 0x00000004, SetCamPosB, 0x00000000, 0xFFFFFFEC, 0x0000000A, 0x00000043, 0x00000004, SetCamPosC, 0x00000000, 0x00000000, 0x0000003C, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000005, SetNpcPos, 0x00000000, 0xFFFFFFF6, 0x00000050, 0xFFFFFFDD, 0x00000043, 0x00000005, SetNpcPos, 0x00000001, 0x0000001E, 0x00000046, 0xFFFFFFB5, 0x00000043, 0x00000003, SetNpcYaw, 0x00000000, 0x0000010E, 0x00000043, 0x00000003, SetNpcYaw, 0x00000001, 0x0000010E, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000000, 0x000000C1, 0x00000000, 0x00000026, 0x00000002, 0xFE363C80, 0xF24A7A80, 0x00000005, 0x00000001, 0x00000014, 0x0000002C, 0x00000002, 0xFE363C80, 0xF24AAA80, 0x00000043, 0x00000007, func_802CFD30, 0x00000000, 0x00000007, 0xFE363C80, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000007, func_802CFD30, 0x00000001, 0x00000007, 0xFE363C80, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000008, 0x00000001, 0x00000028, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000000, 0x00000032, 0xFFFFFFBA, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF24F2A80, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24A8680, 0xF24A5280, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000000, 0x00000032, 0xFFFFFFBA, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00050004, 0x00050001, 0x00000000, 0x000E0043, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00BF0004, 0x00BF0001, 0x00000000, 0x000E0044, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00050004, 0x00050001, 0x00000000, 0x000E0045, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000004, InterpNpcYaw, 0x00000000, 0x000000E1, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00BF0004, 0x00BF0001, 0x00000000, 0x000E0046, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8280, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000014, 0x00000032, 0xFFFFFFBA, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00BF0004, 0x00BF0001, 0x00000000, 0x000E0047, 0x00000043, 0x00000004, SetCamType, 0x00000000, 0x00000004, 0x00000001, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24AB880, 0xF24A5480, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x00000226, 0x00000043, 0x00000004, SetCamPosA, 0x00000000, 0x000000C8, 0x0000012C, 0x00000043, 0x00000004, SetCamPosB, 0x00000000, 0x00000000, 0x00000050, 0x00000043, 0x00000004, SetCamPosC, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00BF0007, 0x00BF0008, 0x00000000, 0x000E0048, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000000, 0x00000032, 0xFFFFFFBA, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x0000012C, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24A8680, 0xF24A5280, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000014, 0x00000032, 0xFFFFFFBA, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00BF0004, 0x00BF0001, 0x00000000, 0x000E0049, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8280, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000000, 0x00000032, 0xFFFFFFBA, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, InterpNpcYaw, 0x00000000, 0x0000010E, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00050004, 0x00050001, 0x00000005, 0x000E004A, 0x00000043, 0x00000004, InterpNpcYaw, 0x00000000, 0x0000005A, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00050004, 0x00050001, 0x00000005, 0x000E004B, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x00000226, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24A8680, 0xF24A4A80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, EnableGroup, 0x00000029, 0x00000001, 0x00000043, 0x00000005, SetNpcPos, 0x00000002, 0x00000001, 0x0000028A, 0x00000050, 0x00000043, 0x00000003, EnableNpcShadow, 0x00000002, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000002, 0x8000000F, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0xFFFFFEE8, 0xFFFFFE20, 0x00000064, 0x00000001, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateGroup, 0x00000029, 0x00000000, 0xFE363C80, 0x00000000, 0x00000027, 0x00000002, 0xFE363C80, 0x0000028A, 0x00000043, 0x00000005, SetNpcPos, 0x00000002, 0x00000001, 0xFE363C80, 0x00000050, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000002, StopSound, 0x8000000F, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000002, 0x0000009B, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000000F, 0xF24A7B4D, 0x00000008, 0x00000001, 0x00000028, 0x00000043, 0x00000004, SetCamType, 0x00000000, 0x00000004, 0x00000001, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24AF280, 0xF24A3280, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x000001F4, 0x00000043, 0x00000004, SetCamPosA, 0x00000000, 0x00000000, 0x0000015E, 0x00000043, 0x00000004, SetCamPosB, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, SetCamPosC, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000002, 0x00140005, 0x00140009, 0x00000000, 0x000E004C, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000000, 0x00000032, 0xFFFFFFBA, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x0000012C, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24A8680, 0xF24A5280, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000000, 0x00000032, 0xFFFFFFBA, 0x00000008, 0x00000001, 0x00000014, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000005, SetNpcPos, 0x00000002, 0x00000001, 0x0000026C, 0x00000050, 0x00000043, 0x00000003, EnableNpcShadow, 0x00000002, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000002, 0x8000000F, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0xFFFFFE20, 0xFFFFFEE8, 0x00000064, 0x00000001, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateGroup, 0x00000029, 0x00000000, 0xFE363C80, 0x00000000, 0x00000027, 0x00000002, 0xFE363C80, 0x00000280, 0x00000043, 0x00000005, SetNpcPos, 0x00000002, 0x00000001, 0xFE363C80, 0x00000050, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000002, StopSound, 0x8000000F, 0x00000043, 0x00000003, EnableGroup, 0x00000029, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00050004, 0x00050001, 0x00000000, 0x000E004D, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00BF0006, 0x00BF0005, 0x00000000, 0x000E004E, 0x00000043, 0x00000007, SpeakToNpc, 0x00000000, 0x00050004, 0x00050001, 0x00000000, 0x00000001, 0x000E004F, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00BF000B, 0x00BF0008, 0x00000000, 0x000E0050, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00050008, 0x00050001, 0x00000000, 0x000E0051, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00BF0007, 0x00BF0008, 0x00000000, 0x000E0052, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8280, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000000, 0x00000000, 0x00000043, 0x00000005, GetNpcPos, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000002, 0xFE363C81, 0x00000028, 0x00000027, 0x00000002, 0xFE363C82, 0x00000096, 0x00000043, 0x00000006, NpcJump0, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000019, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00050004, 0x00050001, 0x00000000, 0x000E0053, 0x00000043, 0x00000003, obk_09_UnkFunc41, 0x00000000, 0x00000009, 0x00000043, 0x00000001, func_80240350_BDAB00, 0x00000044, 0x00000001, 0x80240508, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x001D018D, 0x000000A0, 0x00000028, 0x00000044, 0x00000001, 0x80240534, 0x00000008, 0x00000001, 0x0000000A, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x0005000B, 0x0005000B, 0x00000000, 0x000E0054, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241830_BDBFE0
.word 0x00000000, 0x00180018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000, 0x00000000, 0x001A0018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000, 0x00000000, 0x00140014, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000, 0x00000000, 0x00160018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000

glabel D_802418E0_BDC090
.word 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802418F0_BDC0A0
.word 0x00000043, 0x00000002, GetCurrentPartnerID, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000009, 0x00000043, 0x00000007, SpeakToNpc, 0x00000001, 0x00BF0004, 0x00BF0004, 0x00000000, 0xFFFFFFFC, 0x000E0057, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000043, 0x00000007, SpeakToNpc, 0xFFFFFFFC, 0x00050004, 0x00050001, 0x00000000, 0x00000001, 0x000E0058, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00BF0007, 0x00BF0008, 0x00000000, 0x000E0059, 0x00000012, 0x00000000, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000018, 0x00000001, 0xFFFFFFF0, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00BF0007, 0x00BF0008, 0x00000000, 0x000E0055, 0x00000018, 0x00000001, 0x00000027, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00BF0007, 0x00BF0008, 0x00000000, 0x000E0056, 0x0000001B, 0x00000001, 0x00000027, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00BF0007, 0x00BF0008, 0x00000000, 0x000E005A, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010029, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00BF000B, 0x00BF000B, 0x00000000, 0x000E005B, 0x00000023, 0x00000000, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241A94_BDC244
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_802418F0_BDC0A0, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000018, 0x00000001, 0xFFFFFFDC, 0x0000001B, 0x00000001, 0xFFFFFFDC, 0x00000043, 0x00000005, SetNpcPos, 0x00000001, 0x0000001E, 0x00000046, 0xFFFFFFB5, 0x00000043, 0x00000003, SetNpcYaw, 0x00000001, 0x0000010E, 0x0000001C, 0x00000000, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241B1C_BDC2CC
.word 0x00000043, 0x00000001, func_80240190_BDA940, 0x00000043, 0x00000001, func_80240248_BDA9F8, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241B44_BDC2F4
.word 0x00000043, 0x00000003, BindNpcAux, 0xFFFFFFFF, D_80241B1C_BDC2CC, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00140009, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x00000000, 0xFFFFFC18, 0xFFFFFF9C, 0x00000043, 0x00000003, EnableNpcShadow, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000007, func_802CFD30, 0xFFFFFFFF, 0x00000007, 0x000000AA, 0x00000000, 0x00000000, 0x00000000, 0x0000000F, 0x00000002, 0xF5DE0180, 0xFFFFFFDC, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241BF8_BDC3A8
.word 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFFFFFF3C, 0x0000000A, 0x00000079, 0x00000043, 0x00000003, SetNpcYaw, 0xFFFFFFFF, 0x0000005A, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241C38_BDC3E8
.word 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFFFFFFAE, 0x0000000A, 0x000000D4, 0x00000043, 0x00000003, SetNpcYaw, 0xFFFFFFFF, 0x0000010E, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241C78_BDC428
.word 0x00000000, D_80241830_BDBFE0, 0x00000000, 0xC47A0000, 0x00000000, 0x00000801, D_802418E0_BDC090, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00050001, 0x00050002, 0x00050003, 0x00050003, 0x00050001, 0x00050001, 0x00050000, 0x00050000, 0x00050003, 0x00050003, 0x00050003, 0x00050003, 0x00050003, 0x00050003, 0x00050003, 0x00050003, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, D_80241830_BDBFE0, 0x00000000, 0xC47A0000, 0x00000000, 0x00000801, D_80241A94_BDC244, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00BF0001, 0x00BF0002, 0x00BF0003, 0x00BF0003, 0x00BF0001, 0x00BF0001, 0x00BF0000, 0x00BF0000, 0x00BF0005, 0x00BF0006, 0x00BF0007, 0x00BF0008, 0x00BF0005, 0x00BF0006, 0x00BF0007, 0x00BF0008, 0x00000000, 0x00000000, 0x00000000, 0x001A00A4, 0x00000002, D_80241830_BDBFE0, 0x00000000, 0xC47A0000, 0x00000000, 0x00000801, D_80241B44_BDC2F4, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00140001, 0x00140001, 0x00140001, 0x00140001, 0x00140001, 0x00140001, 0x00140001, 0x00140001, 0x00140000, 0x00140001, 0x00140001, 0x00140001, 0x00140001, 0x00140001, 0x00140001, 0x00140001, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_80242248_BDC9F8
.word 0x00000000, D_80241830_BDBFE0, 0x00000000, 0xC47A0000, 0x00000000, 0x00000801, D_80241BF8_BDC3A8, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00050001, 0x00050002, 0x00050003, 0x00050003, 0x00050001, 0x00050001, 0x00050000, 0x00050000, 0x00050003, 0x00050003, 0x00050003, 0x00050003, 0x00050003, 0x00050003, 0x00050003, 0x00050003, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, D_80241830_BDBFE0, 0x00000000, 0xC47A0000, 0x00000000, 0x00000801, D_80241C38_BDC3E8, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00BF0001, 0x00BF0002, 0x00BF0003, 0x00BF0003, 0x00BF0001, 0x00BF0001, 0x00BF0000, 0x00BF0000, 0x00BF0005, 0x00BF0006, 0x00BF0007, 0x00BF0008, 0x00BF0005, 0x00BF0006, 0x00BF0007, 0x00BF0008, 0x00000000, 0x00000000, 0x00000000, 0x001A00A4, 0x00000003, D_80241C78_BDC428, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, D_80242248_BDC9F8, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
