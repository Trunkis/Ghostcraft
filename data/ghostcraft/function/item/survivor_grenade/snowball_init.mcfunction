
tag @s add ghostcraft.item.survivor_grenade
tag @s add ghostcraft.item.steed

scoreboard players operation @s ghostcraft.ride_id = next_id ghostcraft.ride_id
scoreboard players operation @s ghostcraft.timer_id = next_id ghostcraft.timer_id

##Summon
summon item ~ ~ ~ {Item:{id:"minecraft:snowball",count:1b},PickupDelay:10000,Tags:["ghostcraft.new", "ghostcraft.game.ghosthunt.item_ownership.compliance", "ghostcraft.game.ghosthunt.item_ownership.excepted", "ghostcraft.item.survivor_grenade", "ghostcraft.item.ride_trigger", "ghostcraft.item.uuid"]}

#Data
function ghostcraft:item/global/throwable/data

#Mount
ride @n[x=0,tag=ghostcraft.new] mount @s
execute on passengers run function ghostcraft:item/global/throwable/mount_set

function ghostcraft:item/global/throwable/end