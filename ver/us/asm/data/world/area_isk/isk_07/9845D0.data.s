.include "macro.inc"

.section .data

glabel D_80242190_9845D0
.word 0x0000000A, 0x00000002, 0xF8405EF6, 0x00000000, 0x00000024, 0x00000002, 0xF971888A, 0x00000000, 0x00000024, 0x00000002, 0xF971888B, 0x00000000, 0x00000024, 0x00000002, 0xF971888C, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x0000002F, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000030, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000031, 0x7FFFFE00, 0x00000003, 0x00000001, 0x0000000A, 0x0000000A, 0x00000002, 0xF8405EF6, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000043, 0x00000002, PlaySound, 0x0000000A, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000001E, 0xF24A7E80, 0x00000043, 0x00000003, SetNpcYaw, 0x00000000, 0x00000069, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000000, 0x00000002, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000001, 0x00000002, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000002, 0x00000002, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000C, 0x00000043, 0x00000003, InterpPlayerYaw, 0x0000006D, 0x00000000, 0x00000008, 0x00000001, 0x00000003, 0x00000043, 0x00000007, func_802D2520, 0x00010002, 0x00000005, 0x00000000, 0x00000001, 0x00000001, 0x00000000, 0x00000043, 0x00000002, SetPlayerAnimation, 0x0008000A, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000007, func_802D2520, 0x00010002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010002, 0x00000057, 0x00000000, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8280, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFFFFFF69, 0xFFFFFE7A, 0x00000240, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFFFFFF69, 0xFFFFFE7A, 0x00000240, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000044, 0x00000001, D_8024286C_984CAC, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000033, 0xFFFFFE7A, 0x0000024D, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000044, 0x00000001, D_802428E8_984D28, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x000000EF, 0xFFFFFE7A, 0x00000203, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000044, 0x00000001, D_80242964_984DA4, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000205, 0xFFFFFE7A, 0x00000124, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000044, 0x00000001, 0x80241D74, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xF971888D, 0x00000001, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xF971888A, 0x00000001, 0x00000024, 0x00000002, 0xF971888B, 0x00000001, 0x00000024, 0x00000002, 0xF971888C, 0x00000001, 0x00000043, 0x00000005, TranslateModel, 0x0000006B, 0x00000026, 0x00000000, 0x0000000D, 0x00000043, 0x00000006, RotateModel, 0x0000006B, 0x00000023, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000074, 0x00000026, 0x00000000, 0x0000000D, 0x00000043, 0x00000006, RotateModel, 0x00000074, 0x00000023, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000007D, 0x00000026, 0x00000000, 0x0000000D, 0x00000043, 0x00000006, RotateModel, 0x0000007D, 0x00000023, 0x00000000, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000024, 0x00000002, 0xF971888A, 0x00000000, 0x00000024, 0x00000002, 0xF971888B, 0x00000000, 0x00000024, 0x00000002, 0xF971888C, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x0000002B, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x0000002C, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x0000002D, 0x7FFFFE00, 0x00000024, 0x00000002, 0xF971888D, 0x00000001, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242750_984B90
.word 0x00000043, 0x00000004, PlaySoundAtModel, 0xFE363C83, 0x000001D1, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C83, 0x00000000, 0x00000000, 0x0000000D, 0x00000008, 0x00000001, 0x00000003, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x00000023, 0x00000009, 0x0000000A, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000001, UpdateLerp, 0x00000024, 0x00000002, 0xFE363C82, 0xFE363C80, 0x0000002E, 0x00000002, 0xFE363C82, 0xF24A7EE7, 0x00000043, 0x00000005, TranslateModel, 0xFE363C83, 0xFE363C82, 0x00000000, 0x0000000D, 0x00000043, 0x00000006, RotateModel, 0xFE363C83, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000B, 0x00000002, 0xFE363C81, 0x00000000, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000003, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024286C_984CAC
.word 0x00000024, 0x00000002, 0xF971888A, 0x00000001, 0x00000024, 0x00000002, 0xFE363C83, 0x0000006B, 0x00000046, 0x00000001, D_80242750_984B90, 0x00000024, 0x00000002, 0xF971888A, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x0000002B, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x0000002F, 0x7FFFFE00, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802428E8_984D28
.word 0x00000024, 0x00000002, 0xF971888B, 0x00000001, 0x00000024, 0x00000002, 0xFE363C83, 0x00000074, 0x00000046, 0x00000001, D_80242750_984B90, 0x00000024, 0x00000002, 0xF971888B, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x0000002C, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000030, 0x7FFFFE00, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242964_984DA4
.word 0x00000024, 0x00000002, 0xF971888C, 0x00000001, 0x00000024, 0x00000002, 0xFE363C83, 0x0000007D, 0x00000046, 0x00000001, D_80242750_984B90, 0x00000024, 0x00000002, 0xF971888C, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x0000002D, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000031, 0x7FFFFE00, 0x00000002, 0x00000000, 0x00000001, 0x00000000
