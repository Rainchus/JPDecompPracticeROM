.include "macro.inc"

.section .data

glabel D_802412B0_B45A20
.word 0x0000004D, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C85, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C86, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C87, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C88, 0x00000001, 0x00000043, 0x00000001, jan_04_UnkTexturePanFunc, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, jan_04_UnkTexturePanFunc2, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, FadeOutMusic, 0x00000000, 0x000005DC, 0x00000043, 0x00000004, GotoMapSpecial, 0x802462B0, 0x00000000, 0x00000009, 0x00000008, 0x00000001, 0x00000064

glabel D_80241384_B45AF4
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x802462B8, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802413E0_B45B50
.word 0x00000047, 0x00000005, D_80241384_B45AF4, 0x00080000, 0x00000000, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024140C_B45B7C
.word 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000001, 0x7FFFFE00, 0x00000024, 0x00000002, 0xFE363C80, D_802413E0_B45B50, 0x00000044, 0x00000001, EnterWalk, 0x00000021, 0x00000002, 0x00000001, 0x00000002, 0x00000044, 0x00000001, 0x802449E0, 0x00000016, 0x00000001, 0x00000003, 0x00000044, 0x00000001, 0x80244454, 0x00000016, 0x00000001, 0x00000004, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000024, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x80243708, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x80243720, 0x00000023, 0x00000000, 0x00000044, 0x00000001, D_80241998_B46108, 0x00000044, 0x00000001, 0x80244314, 0x00000044, 0x00000001, 0x80245B74, 0x00000044, 0x00000001, 0x8024385C, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000022, 0x00000004, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000025, 0x00000004, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000028, 0x00000004, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000022, 0x00080000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000025, 0x00080000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000028, 0x00080000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000004, 0x00000001, 0x00000043, 0x00000002, func_802C971C, 0x00000059, 0x00000043, 0x00000003, EnableTexPanning, 0x00000058, 0x00000001, 0x00000056, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0xFFFFFFB0, 0x00000024, 0x00000002, 0xFE363C82, 0x0000008C, 0x00000024, 0x00000002, 0xFE363C83, 0x00000050, 0x00000024, 0x00000002, 0xFE363C84, 0xFFFFFF9C, 0x00000024, 0x00000002, 0xFE363C85, 0x00000001, 0x00000024, 0x00000002, 0xFE363C86, 0x00000001, 0x00000024, 0x00000002, 0xFE363C87, 0x00000001, 0x00000024, 0x00000002, 0xFE363C88, 0x00000001, 0x00000024, 0x00000002, 0xFE363C89, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000044, 0x00000001, D_802412B0_B45A20, 0x00000057, 0x00000000, 0x00000043, 0x00000002, GetDemoState, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000046, 0x00000001, 0x80246260, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000044, 0x00000001, D_8024140C_B45B7C, 0x00000008, 0x00000001, 0x00000001, 0x00000044, 0x00000001, 0x80241180, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241800_B45F70
.word 0x00000000

glabel D_80241804_B45F74
.word 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_802D5830, 0x00000002, 0x00000008, 0x00000001, 0x00000028, 0x00000043, 0x00000004, ShowGotItem, 0xFE363C80, 0x00000000, 0x00000000, 0x00000043, 0x00000002, func_802D5830, 0x00000000, 0x00000002, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024186C_B45FDC
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0xFE363C8A, 0x0000000B, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000046, 0x00000001, D_80241804_B45F74, 0x00000013, 0x00000000, 0x00000014, 0x00000001, 0xFE363C8B, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000003, AddItem, 0xFE363C8A, 0xFE363C80, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000002, AddKeyItem, 0xFE363C8A, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000003, AddBadge, 0xFE363C8A, 0xFE363C80, 0x00000023, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024194C_B460BC
.word 0x00000024, 0x00000002, 0xFE363C8A, 0x0000005B, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000001, 0x00000024, 0x00000002, 0xF840604C, 0x00000001, 0x00000046, 0x00000001, D_8024186C_B45FDC, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241998_B46108
.word 0x00000014, 0x00000001, 0xF5DE0180, 0x00000021, 0x00000002, 0x00000026, 0x0000005F, 0x00000043, 0x00000008, MakeEntity, 0x802EAE30, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignFlag, 0xF840604C, 0x00000043, 0x00000002, AssignScript, D_8024194C_B460BC, 0x00000023, 0x00000000, 0x00000043, 0x00000007, MakeItemEntity, 0x0000015C, 0x0000012C, 0x00000000, 0xFFFFFF1F, 0x00000011, 0xF840604D, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000
