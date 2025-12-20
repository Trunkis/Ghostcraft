
tag @s add ghostcraft.item.survivor_grenade
tag @s add ghostcraft.item.steed
scoreboard players operation @s ghostcraft.ride_id = next_id ghostcraft.ride_id

##Summon
summon item ~ ~ ~ {Item:{id:"snowball",count:1b},PickupDelay:10000,Tags:["ghostcraft.new", "ghostcraft.game.ghosthunt.item_ownership.compliance", "ghostcraft.game.ghosthunt.item_ownership.excepted", "ghostcraft.item.survivor_grenade", "ghostcraft.item.ride_trigger", "ghostcraft.item.uuid"]}

##Data
data modify storage ghostcraft:data temp set value {}
execute store result storage ghostcraft:data temp.ghostcraft.unstackable_id int 1 run scoreboard players get next_id ghostcraft.ride_id

#Mount
ride @n[x=0,tag=ghostcraft.new] mount @s
execute on vehicle run function ghostcraft:item/survivor_grenade/snowball_mount_set

#Apply
item modify entity @s contents {"function":"copy_custom_data","source":{"type":"storage","source": "ghostcraft:data"},"ops":[{"source":"temp","target":"ghostcraft","op":"replace"}]}

scoreboard players add next_id ghostcraft.ride_id 1
tag @e[x=0,tag=ghostcraft.new] remove ghostcraft.new