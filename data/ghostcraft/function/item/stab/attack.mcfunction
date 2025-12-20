
attribute @s attack_damage modifier remove ghostcraft.item.stab.using

playsound ghostcraft:stab_finish hostile @a ~ ~ ~ 1
execute positioned ~ ~1 ~ run particle block{block_state:"fire"} ^ ^ ^1 0.25 0.5 0.25 0 30

tag @s add ghostcraft.item.stab.stabber

execute positioned ^ ^ ^1 as @e[type=#ghostcraft:player,tag=!ghostcraft.item.stab.immune,tag=!ghostcraft.stab.remove,distance=..1.5] run damage @s 12 ghostcraft:stab by @e[type=#ghostcraft:player,tag=ghostcraft.item.stab.stabber,limit=1]

tag @s remove ghostcraft.item.stab.stabber
