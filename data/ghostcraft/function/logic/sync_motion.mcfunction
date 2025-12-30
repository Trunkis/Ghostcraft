tag @s add ghostcraft.item.motion.parent

execute as @e[tag=ghostcraft.item.motion_receive] if score @s ghostcraft.ride_id = @e[tag=ghostcraft.item.motion.parent,limit=1] ghostcraft.ride_id run tag @s add ghostcraft.item.motion.child

execute store result score @e[tag=ghostcraft.item.motion.child] ghostcraft.motion.x run data get entity @e[tag=ghostcraft.item.motion.parent,limit=1] Motion[0] 1000
execute store result score @e[tag=ghostcraft.item.motion.child] ghostcraft.motion.y run data get entity @e[tag=ghostcraft.item.motion.parent,limit=1] Motion[1] 1000
execute store result score @e[tag=ghostcraft.item.motion.child] ghostcraft.motion.z run data get entity @e[tag=ghostcraft.item.motion.parent,limit=1] Motion[2] 1000

tag @s remove ghostcraft.item.motion.parent
tag @e[tag=ghostcraft.item.motion.child] remove ghostcraft.item.motion.child
