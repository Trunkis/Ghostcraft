
tag @s add ghostcraft.item.survivor_grenade
tag @s add ghostcraft.item.steed

summon item ~ ~ ~ {Item:{id:"snowball",count:1b},PickupDelay:10000,Tags:["ghostcraft.new", "ghostcraft.game.ghosthunt.item_ownership.compliance", "ghostcraft.game.ghosthunt.item_ownership.excepted", "ghostcraft.item.survivor_grenade", "ghostcraft.item.ride_trigger", "ghostcraft.item.uuid"]}
execute store result entity @e[tag=ghostcraft.new,limit=1] Item.components."minecraft:custom_data".ghostcraft.unstackable_id int 1 run scoreboard players get next_id ghostcraft.ride_id
ride @e[tag=ghostcraft.new,limit=1] mount @s

execute store result score @e[tag=ghostcraft.new,limit=1] ghostcraft.uuid run data get entity @s Owner[0]

data modify entity @e[tag=ghostcraft.new,limit=1] Item.components."minecraft:custom_data".ghostcraft_uuid set from entity @s UUID[0]

scoreboard players operation @s ghostcraft.ride_id = next_id ghostcraft.ride_id
scoreboard players operation @e[tag=ghostcraft.new,limit=1] ghostcraft.ride_id = next_id ghostcraft.ride_id
scoreboard players add next_id ghostcraft.ride_id 1

tag @e[tag=ghostcraft.new] remove ghostcraft.new