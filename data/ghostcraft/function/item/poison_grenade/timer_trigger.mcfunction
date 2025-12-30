function ghostcraft:item/poison_grenade/explode

#Self
tag @s add ghostcraft.item.timer_trigger_parent
scoreboard players operation #Temp ghostcraft.ride_id = @s ghostcraft.ride_id
kill

#Linked entity
execute as @e[tag=ghostcraft.item.poison_grenade,tag=!ghostcraft.item.timer_trigger_parent] if score @s ghostcraft.ride_id = #Temp ghostcraft.ride_id run kill