#
#   Grappling Hook Launch
#   
#   Purpose: To launch a player based on their grappling hook data
#
#   Input: Player data: SelectedItem.components."minecraft:custom_data".ghostcraft{type:"grappling_hook"}.bobber_data{Pos[double, double, double]}
#
#   Executor: Player
#


# $y player_motion.api.launch
# # 10000 is equivalent to  5 blocks
# # 14500 is equivalent to 10 blocks
# # 19400 is equivalent to 17 blocks

# (Scaled down by 1000)
# # Formula is  y = 0.034*x^2 + 1.284*x - 1.214
# Used approximation: 0.83y + 4.1 = 1.2x

function ghostcraft:item/get_data
execute store result score dx ghostcraft.temp run data get storage ghostcraft:data temp."custom_data".ghostcraft.bobber_data.Pos[0] 1000
execute store result score dy ghostcraft.temp run data get storage ghostcraft:data temp."custom_data".ghostcraft.bobber_data.Pos[1] 1000
execute store result score dz ghostcraft.temp run data get storage ghostcraft:data temp."custom_data".ghostcraft.bobber_data.Pos[2] 1000

scoreboard players set 0.83 ghostcraft.temp 830
scoreboard players set 1000 ghostcraft.temp 1000
scoreboard players set 4.1 ghostcraft.temp 4100
scoreboard players set -1 ghostcraft.temp -1

scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 0
scoreboard players set $z player_motion.api.launch 0

execute store result score temp ghostcraft.temp run data get entity @s Pos[0] 1000
scoreboard players operation dx ghostcraft.temp -= temp ghostcraft.temp
execute if score dx ghostcraft.temp matches -1000..1000 run tag @s add item.grappling_hook.launch.zeroed
scoreboard players operation dx ghostcraft.temp *= 0.83 ghostcraft.temp
scoreboard players operation dx ghostcraft.temp /= 1000 ghostcraft.temp
execute if score dx ghostcraft.temp matches ..0 run tag @s add item.grappling_hook.launch.negative
execute if entity @s[tag=item.grappling_hook.launch.negative] run scoreboard players operation dx ghostcraft.temp *= -1 ghostcraft.temp
scoreboard players operation dx ghostcraft.temp += 4.1 ghostcraft.temp
execute if entity @s[tag=item.grappling_hook.launch.negative] run scoreboard players operation dx ghostcraft.temp *= -1 ghostcraft.temp
execute unless entity @s[tag=item.grappling_hook.launch.zeroed] run scoreboard players operation $x player_motion.api.launch = dx ghostcraft.temp
tag @s remove item.grappling_hook.launch.negative
tag @s remove item.grappling_hook.launch.zeroed

execute store result score temp ghostcraft.temp run data get entity @s Pos[1] 1000
scoreboard players operation dy ghostcraft.temp -= temp ghostcraft.temp
execute if score dy ghostcraft.temp matches -1000..1000 run tag @s add item.grappling_hook.launch.zeroed
scoreboard players operation dy ghostcraft.temp *= 0.83 ghostcraft.temp
scoreboard players operation dy ghostcraft.temp /= 1000 ghostcraft.temp
execute if score dy ghostcraft.temp matches ..0 run tag @s add item.grappling_hook.launch.negative
execute if entity @s[tag=item.grappling_hook.launch.negative] run scoreboard players operation dy ghostcraft.temp *= -1 ghostcraft.temp
scoreboard players operation dy ghostcraft.temp += 4.1 ghostcraft.temp
execute if entity @s[tag=item.grappling_hook.launch.negative] run scoreboard players operation dy ghostcraft.temp *= -1 ghostcraft.temp
execute unless entity @s[tag=item.grappling_hook.launch.zeroed] run scoreboard players operation $y player_motion.api.launch = dy ghostcraft.temp
tag @s remove item.grappling_hook.launch.negative
tag @s remove item.grappling_hook.launch.zeroed

execute store result score temp ghostcraft.temp run data get entity @s Pos[2] 1000
scoreboard players operation dz ghostcraft.temp -= temp ghostcraft.temp
execute if score dz ghostcraft.temp matches -1000..1000 run tag @s add item.grappling_hook.launch.zeroed
scoreboard players operation dz ghostcraft.temp *= 0.83 ghostcraft.temp
scoreboard players operation dz ghostcraft.temp /= 1000 ghostcraft.temp
execute if score dz ghostcraft.temp matches ..0 run tag @s add item.grappling_hook.launch.negative
execute if entity @s[tag=item.grappling_hook.launch.negative] run scoreboard players operation dz ghostcraft.temp *= -1 ghostcraft.temp
scoreboard players operation dz ghostcraft.temp += 4.1 ghostcraft.temp
execute if entity @s[tag=item.grappling_hook.launch.negative] run scoreboard players operation dz ghostcraft.temp *= -1 ghostcraft.temp
execute unless entity @s[tag=item.grappling_hook.launch.zeroed] run scoreboard players operation $z player_motion.api.launch = dz ghostcraft.temp
tag @s remove item.grappling_hook.launch.negative
tag @s remove item.grappling_hook.launch.zeroed

function player_motion:api/launch_xyz
