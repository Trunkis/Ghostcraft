
tag @s add ghostcraft.item.blink
tag @s add ghostcraft.item.steed
tag @s add ghostcraft.item.timer_cycle
tag @s add ghostcraft.item.timer
scoreboard players operation @s ghostcraft.timer_id = next_id ghostcraft.timer_id
scoreboard players operation @s ghostcraft.ride_id = next_id ghostcraft.ride_id

summon item ~ ~ ~ {Item:{id:"snowball",count:1},PickupDelay:10000,Tags:["ghostcraft.new", "ghostcraft.game.ghosthunt.item_ownership.compliance", "ghostcraft.game.ghosthunt.item_ownership.excepted", "ghostcraft.item.blink", "ghostcraft.item.ride_trigger", "ghostcraft.item.timer_receive", "ghostcraft.item.motion_receive", "ghostcraft.item.uuid"]}

#Data
function ghostcraft:item/global/throwable_data

#Mount
ride @n[x=0,tag=ghostcraft.new] mount @s
execute on vehicle run function ghostcraft:item/global/throwable_mount_set

#Scores
scoreboard players set @s ghostcraft.timer 60
scoreboard players set @s ghostcraft.timer_cycle 2
scoreboard players set @s ghostcraft.timer_cycle_offset 1

function ghostcraft:item/global/throwable_end