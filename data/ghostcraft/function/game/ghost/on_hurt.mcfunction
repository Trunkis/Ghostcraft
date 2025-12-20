#
#   Ghost On Hurt Effect
#   
#   Purpose: To make the current player display the ghost hurt effect
#
#   Input: None
#


execute unless score effect.ghost.hurt_effect ghostcraft.config matches -2147483648..2147483647 run particle block{block_state:"obsidian"} ~ ~ ~ 0.05 1 0.05 0.05 15 force @a[tag=!effect.ghost.hurt_effect.invisible]
execute if score effect.ghost.hurt_effect ghostcraft.config matches 0 run particle block{block_state:"obsidian"} ~ ~1 ~ 0.05 0.5 0.05 1 50 force @a[tag=!effect.ghost.hurt_effect.invisible]

playsound ghostcraft:ghost_hurt hostile @a[distance=..25] ~ ~ ~ 1 1
