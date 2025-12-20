#
#   Ghost Effect
#   
#   Purpose: To make the current player display the ghost effect
#
#   Input: None
#


execute if score @s ghostcraft.effect.ghost.particle_effect matches 0 run particle smoke ~ ~1 ~ 0.05 0.5 0.05 0 30 force @a[tag=!ghostcraft.effect.ambient_ghost.invisible]
execute if score @s ghostcraft.effect.ghost.particle_effect matches 1 run particle ominous_spawning ~ ~1 ~ 0.15 0.5 0.15 0 50 force @a[tag=!ghostcraft.effect.ambient_ghost.invisible]
execute if score @s ghostcraft.effect.ghost.particle_effect matches 2 run particle small_flame ~ ~1 ~ 0.1 0.5 0.1 0 50 force @a[tag=!ghostcraft.effect.ambient_ghost.invisible]
execute if score @s ghostcraft.effect.ghost.particle_effect matches 3 run particle glow ~ ~1 ~ 0.05 0.5 0.05 0 30 force @a[tag=!ghostcraft.effect.ambient_ghost.invisible]
execute if score @s ghostcraft.effect.ghost.particle_effect matches 4 run particle trial_omen ~ ~1 ~ 0.05 0.5 0.05 0 30 force @a[tag=!ghostcraft.effect.ambient_ghost.invisible]
execute if score @s ghostcraft.effect.ghost.particle_effect matches 5 run particle raid_omen ~ ~1 ~ 0.05 0.5 0.05 0 30 force @a[tag=!ghostcraft.effect.ambient_ghost.invisible]
execute if score @s ghostcraft.effect.ghost.particle_effect matches 6 run particle small_gust ~ ~1.25 ~ 0.1 0.5 0.1 0 20 force @a[tag=!ghostcraft.effect.ambient_ghost.invisible]
execute if score @s ghostcraft.effect.ghost.particle_effect matches 7 run particle spit ~ ~1 ~ 0.05 0.5 0.05 0 30 force @a[tag=!ghostcraft.effect.ambient_ghost.invisible]
execute if score @s ghostcraft.effect.ghost.particle_effect matches 8 run particle splash ~ ~1.25 ~ 0.05 0.5 0.05 0 40 force @a[tag=!ghostcraft.effect.ambient_ghost.invisible]
execute if score @s ghostcraft.effect.ghost.particle_effect matches 9 run particle sculk_charge_pop ~ ~1 ~ 0.1 0.5 0.1 0 40 force @a[tag=!ghostcraft.effect.ambient_ghost.invisible]
execute if score @s ghostcraft.effect.ghost.particle_effect matches 10 run particle totem_of_undying ~ ~1 ~ 0.05 0.5 0.05 0 30 force @a[tag=!ghostcraft.effect.ambient_ghost.invisible]
execute if score @s ghostcraft.effect.ghost.particle_effect matches 11 run particle sculk_charge{roll:0} ~ ~1 ~ 0.05 0.5 0.05 0 30 force @a[tag=!ghostcraft.effect.ambient_ghost.invisible]

