#include "common.h"

void state_init_language_select(void) {
    D_800A0931 = 0;
    D_800A0932[0] = 0;
    disable_player_input();
    set_time_freeze_mode(2);
    set_transition_stencil_zoom_0(0, D_800A0932[0]);
}

void state_init_file_select(void) {
    D_800A0931 = 0;
    D_800A0932[0] = 0;
    disable_player_input();
    set_time_freeze_mode(2);
    general_heap_create();
    func_801452E8(0, 0);
    func_80141100();
    load_model_textures(0, 0, 0);
    gCameras[0].mode = 6;
    gCameras[0].unk_06 = 1;
    gCameras[0].nearClip = 16;
    gCameras[0].farClip = 4096;
    gCameras[0].flags |= 2;
    gCurrentCameraID = 0;
    gCameras[1].flags |= 2;
    gCameras[2].flags |= 2;
    gCameras[3].flags |= 2;
    gCameras[0].vfov = 25.0f;
    set_cam_viewport(0, 12, 28, 296, 184);
    gCameras[0].unk_1E = 40;
    gCameras[0].lookAt_eye[0] = 500.0f;
    gCameras[0].lookAt_eye[1] = 1000.0f;
    gCameras[0].lookAt_eye[2] = 1500.0f;
    gCameras[0].unk_5C = 150.0f;
    gCameras[0].backgroundColor[0] = 0;
    gCameras[0].backgroundColor[1] = 0;
    gCameras[0].backgroundColor[2] = 0;
    gCameras[0].unk_54 = 25.0f;
    gCameras[0].unk_58 = 25.0f;
    gCameras[0].unk_1C = 0;
    gCameras[0].unk_20 = 100;
    gCameras[0].unk_22 = 0;
    gOverrideFlags |= 0x10000;
}

INCLUDE_ASM(s32, "10400_len_d30", state_step_language_select);

INCLUDE_ASM(s32, "10400_len_d30", func_800354EC);

void state_drawUI_language_select(void) {
}

void state_drawUI_file_select(void) {
}

void func_800355D4(void) {
    if (D_800A0932[0] > 0) {
        D_800A0931 = 0;
        set_transition_stencil_zoom_0(0, D_800A0932[0]);
    } else {
        D_800A0931 = 1;
        set_transition_stencil_zoom_0(0, D_800A0932[0]);
    }
    D_800A0930 = 1;
    gOverrideFlags &= ~0x40;
}

void func_80035660(void) {
    D_800A0931 = 0;
    D_800A0932[0] = 0;
    D_800A0930 = 0;

    if (func_80244BC4() == 0) {
        set_map_transition_effect(7);
    } else {
        set_map_transition_effect(8);
        gOverrideFlags &= ~0x0010000;
        bgm_set_song(0, -1, 0, 1000, 8);
    }
    gOverrideFlags &= ~0x40;
}

INCLUDE_ASM(s32, "10400_len_d30", func_80035704);

INCLUDE_ASM(s32, "10400_len_d30", func_80035B40);

void func_80035D18(void) {
}

void func_80035D20(void) {
}
