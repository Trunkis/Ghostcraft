data modify storage ghostcraft:data temp set value {}
execute store result storage ghostcraft:data temp.ghostcraft.unstackable_id int 1 run scoreboard players get next_id ghostcraft.ride_id
data modify storage ghostcraft:data temp.ghostcraft.thrower_uuid set from entity @s Owner[0]