.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8006F8F0
/* 4ACF0 8006F8F0 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 4ACF4 8006F8F4 AFA40010 */  sw        $a0, 0x10($sp)
/* 4ACF8 8006F8F8 AFA50014 */  sw        $a1, 0x14($sp)
/* 4ACFC 8006F8FC AFA60018 */  sw        $a2, 0x18($sp)
/* 4AD00 8006F900 AFA7001C */  sw        $a3, 0x1c($sp)
/* 4AD04 8006F904 E7AC0020 */  swc1      $f12, 0x20($sp)
/* 4AD08 8006F908 E7AE0024 */  swc1      $f14, 0x24($sp)
/* 4AD0C 8006F90C E7B00028 */  swc1      $f16, 0x28($sp)
/* 4AD10 8006F910 AFBF002C */  sw        $ra, 0x2c($sp)
/* 4AD14 8006F914 0C016959 */  jal       load_effect
/* 4AD18 8006F918 24040001 */   addiu    $a0, $zero, 1
/* 4AD1C 8006F91C 8FA40010 */  lw        $a0, 0x10($sp)
/* 4AD20 8006F920 8FA50014 */  lw        $a1, 0x14($sp)
/* 4AD24 8006F924 8FA60018 */  lw        $a2, 0x18($sp)
/* 4AD28 8006F928 8FA7001C */  lw        $a3, 0x1c($sp)
/* 4AD2C 8006F92C C7AC0020 */  lwc1      $f12, 0x20($sp)
/* 4AD30 8006F930 C7AE0024 */  lwc1      $f14, 0x24($sp)
/* 4AD34 8006F934 C7B00028 */  lwc1      $f16, 0x28($sp)
/* 4AD38 8006F938 8FBF002C */  lw        $ra, 0x2c($sp)
/* 4AD3C 8006F93C 27BD0030 */  addiu     $sp, $sp, 0x30
/* 4AD40 8006F940 3C018008 */  lui       $at, %hi(gEffectTable+0x18)
/* 4AD44 8006F944 8C21F228 */  lw        $at, %lo(gEffectTable+0x18)($at)
/* 4AD48 8006F948 00200008 */  jr        $at
/* 4AD4C 8006F94C 00000000 */   nop
