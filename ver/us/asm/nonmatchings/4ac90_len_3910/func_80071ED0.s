.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80071ED0
/* 4D2D0 80071ED0 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 4D2D4 80071ED4 AFA40010 */  sw        $a0, 0x10($sp)
/* 4D2D8 80071ED8 AFA50014 */  sw        $a1, 0x14($sp)
/* 4D2DC 80071EDC AFA60018 */  sw        $a2, 0x18($sp)
/* 4D2E0 80071EE0 AFA7001C */  sw        $a3, 0x1c($sp)
/* 4D2E4 80071EE4 E7AC0020 */  swc1      $f12, 0x20($sp)
/* 4D2E8 80071EE8 E7AE0024 */  swc1      $f14, 0x24($sp)
/* 4D2EC 80071EEC E7B00028 */  swc1      $f16, 0x28($sp)
/* 4D2F0 80071EF0 AFBF002C */  sw        $ra, 0x2c($sp)
/* 4D2F4 80071EF4 0C016959 */  jal       load_effect
/* 4D2F8 80071EF8 24040066 */   addiu    $a0, $zero, 0x66
/* 4D2FC 80071EFC 8FA40010 */  lw        $a0, 0x10($sp)
/* 4D300 80071F00 8FA50014 */  lw        $a1, 0x14($sp)
/* 4D304 80071F04 8FA60018 */  lw        $a2, 0x18($sp)
/* 4D308 80071F08 8FA7001C */  lw        $a3, 0x1c($sp)
/* 4D30C 80071F0C C7AC0020 */  lwc1      $f12, 0x20($sp)
/* 4D310 80071F10 C7AE0024 */  lwc1      $f14, 0x24($sp)
/* 4D314 80071F14 C7B00028 */  lwc1      $f16, 0x28($sp)
/* 4D318 80071F18 8FBF002C */  lw        $ra, 0x2c($sp)
/* 4D31C 80071F1C 27BD0030 */  addiu     $sp, $sp, 0x30
/* 4D320 80071F20 3C018008 */  lui       $at, %hi(gEffectTable+0x990)
/* 4D324 80071F24 8C21FBA0 */  lw        $at, %lo(gEffectTable+0x990)($at)
/* 4D328 80071F28 00200008 */  jr        $at
/* 4D32C 80071F2C 00000000 */   nop
