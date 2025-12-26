
tag @s add ghostcraft.item.scare.timer_trigger_parent

execute if entity @s[tag=ghostcraft.item.steed] as @e[tag=ghostcraft.item.scare,tag=!ghostcraft.item.scare.timer_trigger_parent] if score @s ghostcraft.ride_id = @e[tag=ghostcraft.item.scare.timer_trigger_parent,limit=1] ghostcraft.ride_id run kill

kill