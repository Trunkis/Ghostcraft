scoreboard players operation @s ghostcraft.ride_id = next_id ghostcraft.ride_id
scoreboard players operation @s ghostcraft.timer_id = next_id ghostcraft.timer_id
data modify entity @s Item.components."minecraft:custom_data" set from storage ghostcraft:data temp
tag @s remove ghostcraft.new