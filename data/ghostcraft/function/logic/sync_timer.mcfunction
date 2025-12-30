tag @s add ghostcraft.item.timer.parent

execute as @e[tag=ghostcraft.item.timer_receive] if score @s ghostcraft.timer_id = @e[tag=ghostcraft.item.timer.parent,limit=1] ghostcraft.timer_id run scoreboard players operation @s ghostcraft.timer = @e[tag=ghostcraft.item.timer.parent,limit=1] ghostcraft.timer

tag @s remove ghostcraft.item.timer.parent
