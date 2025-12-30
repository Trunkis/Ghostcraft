
tag @s add ghostcraft.item.flashbang
tag @s add ghostcraft.item.steed
tag @s add ghostcraft.item.timer
tag @s add ghostcraft.item.timer_sync
tag @s add ghostcraft.item.timer_cycle

tag @s add ghostcraft.item.motion_sync

scoreboard players operation @s ghostcraft.ride_id = next_id ghostcraft.ride_id
scoreboard players operation @s ghostcraft.timer_id = next_id ghostcraft.timer_id

##Summon
summon item ~ ~ ~ {Item:{id:"snowball",count:1},PickupDelay:10000,Tags:["ghostcraft.new", "ghostcraft.game.ghosthunt.item_ownership.compliance", "ghostcraft.game.ghosthunt.item_ownership.excepted", "ghostcraft.item.flashbang", "ghostcraft.item.ride_trigger", "ghostcraft.item.timer_receive", "ghostcraft.item.motion_receive", "ghostcraft.item.uuid"]}

#Data
function ghostcraft:item/global/throwable/data

#Mount
ride @n[x=0,tag=ghostcraft.new] mount @s
execute on passengers run function ghostcraft:item/global/throwable/mount_set

#Scores
scoreboard players operation @s ghostcraft.timer = kit.ghost.flashbang.timer ghostcraft.config
scoreboard players operation @s ghostcraft.timer_cycle = kit.ghost.flashbang.cycle ghostcraft.config

scoreboard players set @s ghostcraft.timer_cycle_offset 1

function ghostcraft:item/global/throwable/end