.include "macro.inc"

.section .data

glabel D_80242C20_9FD410
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_802D5830, 0x00000001, 0x00000043, 0x00000001, func_802402F0_9FAAE0, 0x00000043, 0x00000007, func_802CB008, 0x00000000, 0x00000001, 0xFFFFFEF0, 0x00000000, 0xFFFFFFC8, 0x00000014, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000006, PlaySoundAt, 0x00000071, 0x00000000, 0xFFFFFEED, 0x00000000, 0xFFFFFFD9, 0x00000043, 0x00000005, MakeLerp, 0xFFFFFEC0, 0x00000000, 0x0000000F, 0x00000001, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateGroup, 0x00000092, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000B, 0x00000002, 0xFE363C81, 0x00000000, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000005, 0x00000001, 0x00000006, 0x00000043, 0x00000005, TranslateGroup, 0x00000092, 0x00000000, 0x00000003, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000005, TranslateGroup, 0x00000092, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000006, PlaySoundAt, 0x00000072, 0x00000000, 0xFFFFFEED, 0x00000000, 0xFFFFFFD9, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x0000005A, 0x0000000A, 0x00000001, 0x00000003, 0x00000001, 0x00000014, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0x00000086, 0xFE363C80, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000087, 0xFE363C80, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000088, 0xFE363C80, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000089, 0xFE363C80, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008A, 0xFE363C80, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008C, 0x00000000, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008D, 0x00000000, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008E, 0x00000000, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008F, 0x00000000, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000090, 0x00000000, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008C, 0xFE363C80, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008D, 0xFE363C80, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008E, 0xFE363C80, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008F, 0xFE363C80, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000090, 0xFE363C80, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008C, 0x00000000, 0x00000050, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008D, 0x00000000, 0x00000050, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008E, 0x00000000, 0x00000050, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008F, 0x00000000, 0x00000050, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000090, 0x00000000, 0x00000050, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000B, 0x00000002, 0xFE363C81, 0x00000000, 0x00000004, 0x00000001, 0x00000014, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000006, PlaySoundAt, 0x00000073, 0x00000000, 0xFFFFFEED, 0x00000000, 0xFFFFFFD9, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x0000005A, 0x0000000A, 0x00000001, 0x00000003, 0x00000001, 0x0000001E, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateModel, 0x0000008C, 0x00000000, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008D, 0x00000000, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008E, 0x00000000, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008F, 0x00000000, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000090, 0x00000000, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008C, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008D, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008E, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008F, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000090, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008C, 0x00000000, 0x00000050, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008D, 0x00000000, 0x00000050, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008E, 0x00000000, 0x00000050, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008F, 0x00000000, 0x00000050, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000090, 0x00000000, 0x00000050, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008C, 0xFE363C80, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008D, 0xFE363C80, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008E, 0xFE363C80, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008F, 0xFE363C80, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000090, 0xFE363C80, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000B, 0x00000002, 0xFE363C81, 0x00000000, 0x00000004, 0x00000001, 0x0000001E, 0x00000013, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000009, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000002, 0x7FFFFE00, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000007, func_802CB008, 0x00000000, 0x00000001, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x0000000A, 0x00000043, 0x00000001, func_8024030C_9FAAFC, 0x00000043, 0x00000002, func_802D5830, 0x00000000, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0180, 0xFFFFFF9E, 0x00000043, 0x00000003, SetGroupEnabled, 0x000000CE, 0x00000000, 0x00000048, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000000C, 0x00000002, 0xF5DE0180, 0xFFFFFF9E, 0x00000047, 0x00000005, D_80242C20_9FD410, 0x00020000, 0xF9718881, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateGroup, 0x00000092, 0x00000000, 0xFFFFFEC0, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000009, 0x7FFFFE00, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, SetGroupEnabled, 0x000000CE, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000086, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000087, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000088, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000089, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008A, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008C, 0x00000000, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008D, 0x00000000, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008E, 0x00000000, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008F, 0x00000000, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000090, 0x00000000, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008C, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008D, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008E, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008F, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000090, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008C, 0x00000000, 0x00000050, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008D, 0x00000000, 0x00000050, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008E, 0x00000000, 0x00000050, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000008F, 0x00000000, 0x00000050, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000090, 0x00000000, 0x00000050, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008C, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008D, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008E, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000008F, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000090, 0x0000005A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000002, 0x7FFFFE00, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000
