
execute as @e[type=#ghostcraft:player] if score @s ghostcraft.uuid = thrower_uuid ghostcraft.uuid run tag @s add ghostcraft.item.frag_grenade.thrower

execute as @e[type=#ghostcraft:player,tag=!ghostcraft.item.frag_grenade.immune,distance=0..3] run damage @s 16 ghostcraft:frag_grenade by @e[type=#ghostcraft:player,tag=ghostcraft.item.frag_grenade.thrower,limit=1]
execute as @e[type=#ghostcraft:player,tag=!ghostcraft.item.frag_grenade.immune,distance=3..6] run damage @s 10 ghostcraft:frag_grenade by @e[type=#ghostcraft:player,tag=ghostcraft.item.frag_grenade.thrower,limit=1]
execute as @e[type=#ghostcraft:player,tag=!ghostcraft.item.frag_grenade.immune,distance=6..9] run damage @s 4 ghostcraft:frag_grenade by @e[type=#ghostcraft:player,tag=ghostcraft.item.frag_grenade.thrower,limit=1]

tag @e[type=#ghostcraft:player] remove ghostcraft.item.frag_grenade.thrower

playsound ghostcraft:explosion hostile @a ~ ~ ~ 2

particle explosion_emitter ~ ~ ~ 0 0 0 0 2 force
particle explosion ~ ~ ~ 0 0 0 0 10 force
