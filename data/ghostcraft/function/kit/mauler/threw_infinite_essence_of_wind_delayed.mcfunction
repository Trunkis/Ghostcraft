
tag @e[type=wind_charge,tag=ghostcraft.kit.mauler.infinite_essence_of_wind.delayed,limit=1] add ghostcraft.kit.mauler.infinite_essence_of_wind.temp

execute store result score thrown_essence_of_wind ghostcraft.uuid run data get entity @e[type=wind_charge,tag=ghostcraft.kit.mauler.infinite_essence_of_wind.temp,limit=1] Owner[0]

execute as @e[type=#ghostcraft:player] if score @s ghostcraft.uuid = thrown_essence_of_wind ghostcraft.uuid run loot give @s loot ghostcraft:item/essence_of_wind/essence_of_wind

tag @e[type=wind_charge,tag=ghostcraft.kit.mauler.infinite_essence_of_wind.temp,limit=1] remove ghostcraft.kit.mauler.infinite_essence_of_wind.delayed
tag @e[type=wind_charge,tag=ghostcraft.kit.mauler.infinite_essence_of_wind.temp,limit=1] remove ghostcraft.kit.mauler.infinite_essence_of_wind.temp
