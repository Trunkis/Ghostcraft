tag @s add ghostcraft.item.survivor_grenade.thrower

execute as @e[type=#ghostcraft:player,tag=!ghostcraft.item.survivor_grenade.immune] run function ghostcraft:item/survivor_grenade/explosion/team_check

tag @s remove ghostcraft.item.survivor_grenade.thrower

playsound ghostcraft:explosion hostile @a ~ ~ ~ 3

particle explosion_emitter ~ ~ ~ 0 0 0 0 3 force
particle explosion ~ ~ ~ 0 0 0 0 13 force