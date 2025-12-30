# Player rejoins
execute if score @s ghostcraft.times_left matches 1.. run function ghostcraft:logic/restart_player

# Misc
scoreboard players remove @s[scores={ghostcraft.ghost.boost.cooldown=1..}] ghostcraft.ghost.boost.cooldown 1
scoreboard players remove @s[scores={ghostcraft.item.crafting_table.invincibility=1..}] ghostcraft.item.crafting_table.invincibility 1