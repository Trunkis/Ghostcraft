data modify storage ghostcraft:data temp.ghostcraft.uuid set from entity @s Owner[0]
execute store result score @s ghostcraft.uuid run data get storage ghostcraft:data temp.ghostcraft.uuid
scoreboard players operation @s ghostcraft.ride_id = next_id ghostcraft.ride_id