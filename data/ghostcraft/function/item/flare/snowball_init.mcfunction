
tag @s add ghostcraft.item.flare
tag @s add ghostcraft.item.steed
tag @s add ghostcraft.item.timer_cycle
tag @s add ghostcraft.item.timer

summon item ~ ~ ~ {Item:{id:"snowball",count:1b},PickupDelay:10000,Tags:["ghostcraft.new", "ghostcraft.game.ghosthunt.item_ownership.compliance", "ghostcraft.game.ghosthunt.item_ownership.excepted", "ghostcraft.item.flare", "ghostcraft.item.ride_trigger", "ghostcraft.item.uuid"]}
execute store result entity @e[tag=ghostcraft.new,limit=1] Item.components."minecraft:custom_data".ghostcraft.unstackable_id int 1 run scoreboard players get next_id ghostcraft.ride_id
ride @e[tag=ghostcraft.new,limit=1] mount @s

data modify entity @e[tag=ghostcraft.new,limit=1] Item.components."minecraft:custom_data".ghostcraft.uuid set from entity @s UUID[0]

scoreboard players operation @s ghostcraft.ride_id = next_id ghostcraft.ride_id
scoreboard players operation @e[tag=ghostcraft.new,limit=1] ghostcraft.ride_id = next_id ghostcraft.ride_id
scoreboard players add next_id ghostcraft.ride_id 1

scoreboard players operation @s ghostcraft.timer_id = next_id ghostcraft.timer_id
scoreboard players operation @e[tag=ghostcraft.new,limit=1] ghostcraft.timer_id = next_id ghostcraft.timer_id
scoreboard players add next_id ghostcraft.timer_id 1

scoreboard players set @s ghostcraft.timer 60
scoreboard players set @s ghostcraft.timer_cycle 10
scoreboard players set @s ghostcraft.timer_cycle_offset 1

tag @e[tag=ghostcraft.new] remove ghostcraft.new
