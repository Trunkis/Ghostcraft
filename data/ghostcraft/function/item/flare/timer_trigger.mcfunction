function ghostcraft:item/flare/small_explode

#Self
tag @s add ghostcraft.item.timer_trigger_parent
scoreboard players operation #Temp ghostcraft.ride_id = @s ghostcraft.ride_id

#Linked entity
execute as @e[tag=ghostcraft.item.flare,tag=!ghostcraft.item.timer_trigger_parent] if score @s ghostcraft.ride_id = #Temp ghostcraft.ride_id run kill

kill