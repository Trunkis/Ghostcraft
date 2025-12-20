


execute at @s as @e[type=#ghostcraft:player,tag=ghostcraft.ghost,tag=!ghostcraft.item.survivor_grenade.immune,distance=0..2.5] run damage @s 16 ghostcraft:survivor_grenade by @e[type=#ghostcraft:player,limit=1,tag=ghostcraft.item.survivor_grenade.thrower]
execute at @s as @e[type=#ghostcraft:player,tag=ghostcraft.ghost,tag=!ghostcraft.item.survivor_grenade.immune,distance=2.5..6] run damage @s 9 ghostcraft:survivor_grenade by @e[type=#ghostcraft:player,limit=1,tag=ghostcraft.item.survivor_grenade.thrower]

execute at @s as @e[type=#ghostcraft:player,tag=!ghostcraft.ghost,tag=!ghostcraft.item.survivor_grenade.immune,distance=0..2.5] run damage @s 5 ghostcraft:survivor_grenade by @e[type=#ghostcraft:player,limit=1,tag=ghostcraft.item.survivor_grenade.thrower]
execute at @s as @e[type=#ghostcraft:player,tag=!ghostcraft.ghost,tag=!ghostcraft.item.survivor_grenade.immune,distance=2.5..6] run damage @s 3 ghostcraft:survivor_grenade by @e[type=#ghostcraft:player,limit=1,tag=ghostcraft.item.survivor_grenade.thrower]

playsound ghostcraft:explosion hostile @a ~ ~ ~ 3

particle explosion_emitter ~ ~ ~ 0 0 0 0 3 force
particle explosion ~ ~ ~ 0 0 0 0 13 force
