
advancement revoke @s only ghostcraft:kit/ghost/suffocation_immunity/suffocation_damage

execute unless data entity @s equipment.feet.components."enchantments"{"ghostcraft:kit/ghost/suffocation_immunity":1} run return 0

# Add to the suffocation immunity regen countdown
scoreboard players add next_id ghostcraft.kit.ghost.suffocation_immunity 1
scoreboard players operation @s ghostcraft.kit.ghost.suffocation_immunity = next_id ghostcraft.kit.ghost.suffocation_immunity

schedule function ghostcraft:kit/ghost/suffocation_immunity/schedule_regen 1t
effect give @s regeneration 1 4 true
execute if predicate {"condition":"random_chance","chance":0.75} run effect give @s regeneration 1 5 true
