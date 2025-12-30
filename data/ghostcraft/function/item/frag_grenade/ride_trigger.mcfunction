
tag @s add ghostcraft.item.timer_cycle
tag @s add ghostcraft.item.timer

execute at @s run tp ~ ~0.1 ~

data modify entity @s Item.components."minecraft:custom_data".ghostcraft.type set value "frag_grenade"
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["ghost_frag_grenade"]

function ghostcraft:item/global/throwable/motion

tag @s remove ghostcraft.item.timer_receive
tag @s remove ghostcraft.item.motion_receive
tag @s remove ghostcraft.item.motion_sync
tag @s remove ghostcraft.item.ride_trigger
