#include "common.h"
#include "stdlib/stdarg.h"

extern s16 D_8009A598;
extern s32 D_80400000;
extern s16 D_80400004;

extern s16 currentButtons;
extern s16 previousButtons;
extern s16 pressedButtons;
extern s16 initialFlag;
extern s16 D_800B1D48;
extern void func_800E1120(void);
extern void func_800E12D4(void);

void customUpdateInput(void) {
    previousButtons = currentButtons;
    pressedButtons = D_800B1D48 & previousButtons;
    pressedButtons = pressedButtons ^ previousButtons;
}

s32 func_perFrameC(void) {
    GameStatus* gameStatus = &gGameStatus;

    if (gameStatus->currentButtons & L_TRIG) {
        func_80026710(); //restore from hook (func: step_game_loop)
        func_80026710(); //restore from hook (func: step_game_loop)
        func_80026710(); //restore from hook (func: step_game_loop)
    } else {
        func_80026710(); //restore from hook (func: step_game_loop)
    }
}
