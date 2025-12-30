##Behaviour
data modify storage ghostcraft:data bobber_data set value {OnGround:1b}

execute if entity @s[tag=ghostcraft.item.grappling_hook.clicked] run return run data modify storage ghostcraft:data bobber_data.Pos set from entity @s Pos

##Audio
execute at @s run playsound entity.fishing_bobber.retrieve master @a[distance=..25] ~ ~ ~ 1 1.9 0.5

execute at @s run playsound entity.fishing_bobber.retrieve master @a[distance=..25] ~ ~ ~ 1 0.1 0.5

execute as @p[tag=ghostcraft.item.grappling_hook.owner] at @s run function ghostcraft:item/grappling_hook/hook_audio
tag @s add ghostcraft.item.grappling_hook.clicked