#include "common.h"
#include "stdlib/stdarg.h"

s32 func_perFrameC(void) {
    PlayerData* playerData = (PlayerData*)0x8010F450;

    func_80026710(); //restore from hook
    playerData->coins = 999; //poke coins to 999 each frame
    return 0;
}
