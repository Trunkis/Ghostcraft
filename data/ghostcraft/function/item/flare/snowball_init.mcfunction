
tag @s add ghostcraft.item.flare
tag @s add ghostcraft.item.steed
tag @s add ghostcraft.item.timer_cycle
tag @s add ghostcraft.item.timer
scoreboard players operation @s ghostcraft.ride_id = next_id ghostcraft.ride_id
scoreboard players operation @s ghostcraft.timer_id = next_id ghostcraft.timer_id

summon item ~ ~ ~ {Item:{id:"snowball",count:1b},PickupDelay:10000,Tags:["ghostcraft.new", "ghostcraft.game.ghosthunt.item_ownership.compliance", "ghostcraft.game.ghosthunt.item_ownership.excepted", "ghostcraft.item.flare", "ghostcraft.item.ride_trigger", "ghostcraft.item.uuid"]}

#Data
function ghostcraft:item/global/throwable_data

#Mount
ride @n[x=0,tag=ghostcraft.new] mount @s
execute on vehicle run function ghostcraft:item/global/throwable_mount_set

#data modify entity @e[tag=ghostcraft.new,limit=1] Item.components."minecraft:custom_data".ghostcraft.uuid set from entity @s UUID[0]

#Scores
scoreboard players set @s ghostcraft.timer 60
scoreboard players set @s ghostcraft.timer_cycle 10
scoreboard players set @s ghostcraft.timer_cycle_offset 1

function ghostcraft:item/global/throwable_end