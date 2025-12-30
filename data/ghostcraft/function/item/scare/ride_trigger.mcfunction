execute store result score @s ghostcraft.temp run data get entity @s Item.components."minecraft:custom_data".ghostcraft.thrower_uuid

execute run playsound ambient.cave hostile @a[distance=..20] ~ ~ ~ 1 0.5
execute run playsound ghostcraft:stab_start hostile @a[distance=..20] ~ ~ ~ 1 1

kill