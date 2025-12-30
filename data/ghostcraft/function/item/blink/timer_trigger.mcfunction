tag @s add ghostcraft.item.blink.timer_trigger_parent

execute if entity @s[tag=ghostcraft.item.steed] as @e[tag=ghostcraft.item.blink,tag=!ghostcraft.item.blink.timer_trigger_parent] if score @s ghostcraft.ride_id = @e[tag=ghostcraft.item.blink.timer_trigger_parent,limit=1] ghostcraft.ride_id run kill

kill