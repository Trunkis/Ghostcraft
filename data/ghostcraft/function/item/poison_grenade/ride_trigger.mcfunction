
tag @s add ghostcraft.item.timer_cycle
tag @s add ghostcraft.item.timer

execute at @s run tp ~ ~0.1 ~

data modify entity @s Item.components."minecraft:custom_data".ghostcraft.type set value "poison_grenade"
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["ghost_poison_grenade"]

execute store result entity @s Motion[0] double 0.0006 run scoreboard players get @s ghostcraft.motion.x
execute if score @s ghostcraft.motion.y matches 0.. store result entity @s Motion[1] double 0.0003 run scoreboard players get @s ghostcraft.motion.y
execute if score @s ghostcraft.motion.y matches ..0 store result entity @s Motion[1] double -0.0003 run scoreboard players get @s ghostcraft.motion.y
execute store result entity @s Motion[2] double 0.0006 run scoreboard players get @s ghostcraft.motion.z

tag @s remove ghostcraft.item.timer_receive
tag @s remove ghostcraft.item.motion_receive
tag @s remove ghostcraft.item.motion_sync
tag @s remove ghostcraft.item.ride_trigger
