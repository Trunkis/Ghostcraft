#Regen
execute as @a if items entity @s armor.* *[enchantments~[{"enchantments":"ghostcraft:kit/ghost/suffocation_immunity"}]] if score @s ghostcraft.kit.ghost.suffocation_immunity = last_id ghostcraft.kit.ghost.suffocation_immunity run tag @s add ghostcraft.kit.ghost.suffocation_immunity.target
scoreboard players add last_id ghostcraft.kit.ghost.suffocation_immunity 1

effect clear @a[tag=ghostcraft.kit.ghost.suffocation_immunity.target] regeneration

tag @a remove ghostcraft.kit.ghost.suffocation_immunity.target
