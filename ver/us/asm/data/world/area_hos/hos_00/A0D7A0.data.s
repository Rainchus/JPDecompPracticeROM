.include "macro.inc"

.section .data

glabel D_80241AB0_A0D7A0
.word 0x00000000, 0x00140014, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000

glabel D_80241ADC_A0D7CC
.word 0x00000000, 0x001E0018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000, 0x00000000, 0x00170013, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000

glabel D_80241B34_A0D824
.word 0x00000000, 0x00220018, 0x00000000, 0x00000000, 0x00000000, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x001A0000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000131, 0xFFFFFFF6, 0xFFFFFFCE, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000131, 0xFFFFFFF6, 0xFFFFFFCE, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF250BA80, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24A9E80, 0xF24A5280, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000003, 0x00860004, 0x00860006, 0x00000000, 0x000A006C, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000003, 0x00860001, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000002, 0x00840104, 0x00840101, 0x00000000, 0x000A006D, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000003, 0x00860004, 0x00860001, 0x00000000, 0x000A006E, 0x00000008, 0x00000001, 0x00000032, 0x00000043, 0x00000003, GotoMap, 0x80244B80, 0x00000003, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241CE8_A0D9D8
.word 0x00000043, 0x00000002, GetBattleOutcome, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C83, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C83, 0xFE363C81, 0xFFFFFFD3, 0x00000027, 0x00000002, 0xFE363C83, 0x00000028, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFC, 0xFE363C83, 0xFE363C81, 0xFFFFFFD3, 0x00000043, 0x00000005, GetNpcPos, 0x00000000, 0xFE363C83, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C83, 0xFFFFFFE7, 0x00000043, 0x00000005, SetNpcPos, 0x00000000, 0xFE363C83, 0xFE363C81, 0xFFFFFFD3, 0x00000044, 0x00000001, 0x80244210, 0x00000043, 0x00000001, DoNpcDefeat, 0x00000016, 0x00000001, 0x00000001, 0x00000016, 0x00000001, 0x00000002, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241DFC_A0DAEC
.word 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000003, GetSelfVar, 0x00000000, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000002, StartBossBattle, 0x00000003, 0x00000023, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241E80_A0DB70
.word 0x0000000C, 0x00000002, 0xF5DE0180, 0xFFFFFF98, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, D_80241DFC_A0DAEC, 0x00000043, 0x00000003, BindNpcDefeat, 0xFFFFFFFF, D_80241CE8_A0D9D8, 0x00000012, 0x00000000, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241EE8_A0DBD8
.word 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000003, GetSelfVar, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000002, EnablePartner, 0x0000000B, 0x00000043, 0x00000002, func_802407C0_A0C4B0, 0x0000000B, 0x00000043, 0x00000001, StartBattle, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241F8C_A0DC7C
.word 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241F9C_A0DC8C
.word 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000002, 0x00000043, 0x00000002, DisablePartner, 0x0000000B, 0x00000043, 0x00000002, func_802407C0_A0C4B0, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241FE0_A0DCD0
.word 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, D_80241EE8_A0DBD8, 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_80241F8C_A0DC7C, 0x00000043, 0x00000003, BindNpcDefeat, 0xFFFFFFFF, D_80241F9C_A0DC8C, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024202C_A0DD1C
.word 0x00000000, D_80241AB0_A0D7A0, 0x00000000, 0xC47A0000, 0x00000000, 0x00000F05, D_80241FE0_A0DCD0, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00200001, 0x00200005, 0x00200008, 0x00200008, 0x00200001, 0x00200001, 0x00200001, 0x00200001, 0x00200001, 0x00200001, 0x00200001, 0x00200001, 0x00200001, 0x00200001, 0x00200001, 0x00200001, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_8024221C_A0DF0C
.word 0x00000001, D_80241B34_A0D824, 0x00000000, 0xC47A0000, 0x00000000, 0x00840701, D_80241E80_A0DB70, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00570000, 0x00570001, 0x00570001, 0x00570001, 0x00570001, 0x00570001, 0x00570004, 0x00570004, 0x00570002, 0x00570003, 0x00570001, 0x00570001, 0x00570001, 0x00570001, 0x00570001, 0x00570001, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_8024240C_A0E0FC
.word 0x00000002, D_80241ADC_A0D7CC, 0x438C0000, 0xC1200000, 0xC2480000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00840101, 0x00840102, 0x00840103, 0x00840103, 0x00840101, 0x00840101, 0x00840106, 0x00840106, 0x00840103, 0x00840103, 0x00840103, 0x00840103, 0x00840103, 0x00840103, 0x00840103, 0x00840103, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000003, D_80241ADC_A0D7CC, 0x43A50000, 0xC1200000, 0xC2200000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00860001, 0x00860002, 0x00860003, 0x00860003, 0x00860001, 0x00860001, 0x00860000, 0x00860000, 0x00860000, 0x00860000, 0x00860000, 0x00860000, 0x00860000, 0x00860000, 0x00860000, 0x00860000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, D_8024202C_A0DD1C, 0x04000000, 0x00000001, D_8024221C_A0DF0C, 0x04030000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, D_8024240C_A0E0FC, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
