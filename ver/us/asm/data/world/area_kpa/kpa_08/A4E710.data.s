.include "macro.inc"

.section .data

glabel D_80241CF0_A4E710
.float 0.8

glabel D_80241CF4_A4E714
.float 1.0

glabel D_80241CF8_A4E718
.byte 0xC8, 0x00, 0x00, 0x00, 0x3F, 0x19, 0x99, 0x9A, 0x3F, 0x80, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x3E, 0xCC, 0xCC, 0xCD, 0x3F, 0x80, 0x00, 0x00, 0x8C, 0x00, 0x00, 0x00, 0x3E, 0x99, 0x99, 0x9A, 0x3F, 0x8C, 0xCC, 0xCD, 0x78, 0x00, 0x00, 0x00, 0x3E, 0x4C, 0xCC, 0xCD, 0x3F, 0xA6, 0x66, 0x66, 0x6E, 0x00, 0x00, 0x00, 0x3E, 0x19, 0x99, 0x9A, 0x3F, 0xCC, 0xCC, 0xCD, 0x64, 0x00, 0x00, 0x00, 0x3D, 0xF5, 0xC2, 0x8F, 0x40, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x3D, 0xE1, 0x47, 0xAE, 0x40, 0x40, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x3D, 0xCC, 0xCC, 0xCD, 0x40, 0x80, 0x00, 0x00, 0x46, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_80241D74_A4E794
.word 0x3F800000, 0x00000078, 0x0000001E, 0x42C80000, 0x00000000, 0x0000000A, 0x40400000, 0x0000005A, 0x0000000F, 0x43480000, 0x00000000, 0x00000001

glabel D_80241DA4_A4E7C4
.word 0x00000043, 0x00000002, func_8024110C_A4DB2C, D_80241D74_A4E794, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241DC4_A4E7E4
.word 0x00000043, 0x00000002, GetOwnerEncounterTrigger, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000001, 0x0000001D, 0x00000001, 0x00000002, 0x0000001D, 0x00000001, 0x00000004, 0x0000001D, 0x00000001, 0x00000006, 0x00000043, 0x00000003, GetSelfAnimationFromTable, 0x00000007, 0xFE363C80, 0x00000046, 0x00000001, 0x800936DC, 0x00000020, 0x00000000, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241E50_A4E870
.word 0x00000043, 0x00000002, GetBattleOutcome, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80241378_A4DD98, 0x00000043, 0x00000001, DoNpcDefeat, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000001, func_802413C4_A4DDE4, 0x00000043, 0x00000002, func_80045900, 0x00000000, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241ED0_A4E8F0
.word 0x00000000, 0x0020001C, 0x00000000, 0x00000000, D_80241DA4_A4E7C4, D_80241DC4_A4E7E4, 0x00000000, D_80241E50_A4E870, 0x00000000, 0x00000000, 0x001A0000

glabel D_80241EFC_A4E91C
.word 0x00560000, 0x00560001, 0x00560001, 0x00560001, 0x00560002, 0x00560003, 0x00560004, 0xFFFFFFFF

glabel D_80241F1C_A4E93C
.word 0x00000043, 0x00000003, SetSelfVar, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, SetSelfVar, 0x00000002, 0x00000028, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241F54_A4E974
.word 0x00000043, 0x00000003, SetSelfVar, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000002, 0x00000037, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241F8C_A4E9AC
.word 0x00000043, 0x00000001, func_80240270_A4CC90, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241FA8_A4E9C8
.word 0x00000043, 0x00000001, kpa_08_GetEncounterEnemyIsOwner, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, func_80241454_A4DE74, 0x00000044, 0x00000001, EnemyNpcHit, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241FFC_A4EA1C
.word 0x00000043, 0x00000002, GetBattleOutcome, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000043, 0x00000002, func_80045900, 0x00000001, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000004, SetEnemyFlagBits, 0xFFFFFFFF, 0x00000010, 0x00000001, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802420B8_A4EAD8
.word 0x00560000, 0x00000000, D_80241F1C_A4E93C, 0x00000000, D_80241F8C_A4E9AC, D_80241FA8_A4E9C8, 0x00000000, D_80241FFC_A4EA1C, 0x00000000, 0x00000000, 0x00000000, 0x00570000, 0x00000000, D_80241F54_A4E974, 0x00000000, D_80241F8C_A4E9AC, D_80241FA8_A4E9C8, 0x00000000, D_80241FFC_A4EA1C, 0x00000000, 0x00000000, 0x00000000

glabel D_80242110_A4EB30
.word 0x00000000, D_80241ED0_A4E8F0, 0xC3520000, 0x00000000, 0x41C80000, 0x00000C00, 0x00000000, 0x00000000, 0x00000000, 0x0000010E, 0x8005008C, 0x00050000, 0x00A30005, 0x00000082, 0x00050000, 0x00920005, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980002, 0x3FFF2666, 0x4CCC0002, 0x3FFF3FFF, 0x3FFF0002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0005, 0x33322666, 0x33320005, 0x33323FFF, 0x33320005, 0x33326665, 0x33320005, 0x33327FFF, 0x26660005, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00030000, 0xFFFFFF2E, 0x00000000, 0x00000019, 0x0000001E, 0x0000000A, 0xFFFF8001, 0x00000001, 0xFFFFFF2E, 0x00000000, 0x00000019, 0x000000C8, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00560001, 0x00560001, 0x00560001, 0x00560001, 0x00560001, 0x00560001, 0x00560004, 0x00560004, 0x00560002, 0x00560003, 0x00560001, 0x00560001, 0x00560001, 0x00560001, 0x00560001, 0x00560001, 0x00000003, 0x00000000, D_80241EFC_A4E91C, 0x00000000, 0x00000001, D_802420B8_A4EAD8, 0x00000000, 0xC47A0000, 0x00000000, 0x00800D00, 0x00000000, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00560000, 0x00560000, 0x00560000, 0x00560000, 0x00560000, 0x00560000, 0x00560000, 0x00560000, 0x00560000, 0x00560000, 0x00560000, 0x00560000, 0x00560000, 0x00560000, 0x00560000, 0x00560000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, D_80242110_A4EB30, 0x222B0002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
