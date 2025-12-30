attribute @s attack_damage modifier remove ghostcraft.item.stab.using

playsound ghostcraft:stab_finish hostile @a ~ ~ ~ 1
particle block{block_state:"fire"} ^ ^1 ^1 0.25 0.5 0.25 0 30

tag @s add ghostcraft.item.stab.stabber

execute positioned ^ ^ ^1 as @e[type=#ghostcraft:player,tag=!ghostcraft.item.stab.immune,tag=!ghostcraft.item.stab.stabber,distance=..1.5] run damage @s 12 ghostcraft:stab by @n[tag=ghostcraft.item.stab.stabber]

# Remove tags
tag @s remove ghostcraft.item.stab.stabber
tag @s remove ghostcraft.stab.using