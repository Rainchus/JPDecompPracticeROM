#include "common.h"

void begin_state_init(void) {
    gOverrideFlags |= 0x8;
    gGameStatusPtr->loadMenuState = 3;
}

void step_init_state(void) {
    GameStatus* gameStatus = gGameStatusPtr;
    s32 i;

    if (gameStatus->loadMenuState != 0) {
        gameStatus->loadMenuState--;
        return;
    }

    gOverrideFlags = 0;
    gGameStatusPtr->areaID = 0;
    gGameStatusPtr->isBattle = 0;
    gameStatus->prevArea = -1;
    gameStatus->mapID = 0;
    gameStatus->entryID = 0;
    gGameStatusPtr->unk_76 = 0;
    gGameStatusPtr->disableScripts = 0;
    gGameStatusPtr->unk_7D = 0;
    gGameStatusPtr->creditsViewportMode = -1;
    gGameStatusPtr->demoFlags = 0;
    gGameStatusPtr->unk_A9 = -1;
    gGameStatusPtr->demoState = 0;

    general_heap_create();
    func_8011D890();
    clear_dynamic_entity_list();
    clear_script_list();
    create_cameras_a();
    spr_init_sprites(0);
    clear_entity_models();
    func_8011E224();
    clear_model_data();
    func_80148040();
    use_default_background_settings();
    func_801452E8(0, 0);
    func_80141100();
    clear_trigger_data();
    clear_printers();
    clear_entity_data(0);
    clear_transition_stencil();
    clear_player_status();
    npc_list_clear();
    clear_player_data();
    func_80072B30();
    func_8003E338();
    clear_effect_data();
    clear_item_entity_data();
    clear_saved_variables();
    initialize_collision();
    bgm_init_music_players();
    clear_windows();
    partner_initialize_data();
    sfx_clear_sounds();
    bgm_reset_volume();
    initialize_curtains();

    for (i = 0; i < 4; i++) {
        gGameStatusPtr->unk_50[i] = 4;
        gGameStatusPtr->unk_48[i] = 0xF;
    }

    fio_has_valid_backup();

    if (D_800D9620 == 0) {
        gGameStatusPtr->unk_AB = 1;
        func_8005615C();
    } else {
        gGameStatusPtr->unk_AB = 0;
        func_80056180();
    }

    gOverrideFlags &= ~0x8;
    set_game_mode(1);
}

void state_drawUI_startup(void) {
    func_8002AB5C(0, 0, 0x13F, 0xEF, 0, 0, 0, 0xFF);
}
