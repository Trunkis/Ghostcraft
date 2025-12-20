
tag @s add ghostcraft.item.poison_grenade
tag @s add ghostcraft.item.steed
tag @s add ghostcraft.item.timer
tag @s add ghostcraft.item.timer_sync
tag @s add ghostcraft.item.timer_cycle

tag @s add ghostcraft.item.motion_sync

summon item ~ ~ ~ {Item:{id:"snowball",count:1b},PickupDelay:10000,Tags:["ghostcraft.new", "ghostcraft.game.ghosthunt.item_ownership.compliance", "ghostcraft.game.ghosthunt.item_ownership.excepted", "ghostcraft.item.poison_grenade", "ghostcraft.item.ride_trigger", "ghostcraft.item.timer_receive", "ghostcraft.item.motion_receive", "ghostcraft.item.uuid"]}
execute store result entity @e[tag=ghostcraft.new,limit=1] Item.components."custom_data".ghostcraft.unstackable_id int 1 run scoreboard players get next_id ghostcraft.ride_id
ride @e[tag=ghostcraft.new,limit=1] mount @s

data modify entity @e[tag=ghostcraft.new,limit=1] Item.components."custom_data".ghostcraft.thrower_uuid set from entity @p[tag=ghostcraft.advtrigger.snowball.thrower] UUID[0]

scoreboard players operation @s ghostcraft.ride_id = next_id ghostcraft.ride_id
scoreboard players operation @e[tag=ghostcraft.new,limit=1] ghostcraft.ride_id = next_id ghostcraft.ride_id
scoreboard players add next_id ghostcraft.ride_id 1

scoreboard players operation @s ghostcraft.timer_id = next_id ghostcraft.timer_id
scoreboard players operation @e[tag=ghostcraft.new,limit=1] ghostcraft.timer_id = next_id ghostcraft.timer_id
scoreboard players add next_id ghostcraft.timer_id 1

scoreboard players operation @s ghostcraft.timer = kit.ghost.poison_grenade.timer ghostcraft.config
scoreboard players operation @s ghostcraft.timer_cycle = kit.ghost.poison_grenade.cycle ghostcraft.config
scoreboard players set @s ghostcraft.timer_cycle_offset 1
scoreboard players operation @e[tag=ghostcraft.new,limit=1] ghostcraft.timer_cycle = kit.ghost.poison_grenade.cycle ghostcraft.config
scoreboard players set @e[tag=ghostcraft.new,limit=1] ghostcraft.timer_cycle_offset 1

tag @e[tag=ghostcraft.new] remove ghostcraft.new
