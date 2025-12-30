scoreboard players operation #Temp ghostcraft.uuid = @s ghostcraft.uuid

execute as @e[type=#ghostcraft:player] if score @s ghostcraft.uuid = #Temp ghostcraft.uuid run function ghostcraft:item/survivor_grenade/explode

kill