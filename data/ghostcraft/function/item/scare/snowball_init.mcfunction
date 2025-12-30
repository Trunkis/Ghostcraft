
tag @s add ghostcraft.item.scare
tag @s add ghostcraft.item.steed
tag @s add ghostcraft.item.timer_cycle
tag @s add ghostcraft.item.timer

loot give @p[tag=ghostcraft.advtrigger.snowball.thrower] loot ghostcraft:ghost/scare

data modify entity @s NoGravity set value 1b

##Summon
summon item ~ ~ ~ {Item:{id:"snowball",count:1b},PickupDelay:10000,Tags:["ghostcraft.new", "ghostcraft.game.ghosthunt.item_ownership.compliance", "ghostcraft.game.ghosthunt.item_ownership.excepted", "ghostcraft.item.scare", "ghostcraft.item.ride_trigger", "ghostcraft.item.timer_receive", "ghostcraft.item.motion_receive", "ghostcraft.item.uuid"]}

#Data
function ghostcraft:item/global/throwable/data

#Mount
ride @n[x=0,tag=ghostcraft.new] mount @s
execute on passengers run function ghostcraft:item/global/throwable/mount_set

##Motion
data modify storage ghostcraft:data temp set from entity @s Motion
#Scale
execute store result storage ghostcraft:data temp[0] double 0.0015 run data get storage ghostcraft:data temp[0] 2000
execute store result storage ghostcraft:data temp[1] double 0.0015 run data get storage ghostcraft:data temp[1] 2000
execute store result storage ghostcraft:data temp[2] double 0.0015 run data get storage ghostcraft:data temp[2] 2000
#Apply
data modify entity @s Motion set from storage ghostcraft:data temp

#/retellraw @p {"nbt":"Motion","entity":"@s"}

#Scores
scoreboard players set @s ghostcraft.timer 100
scoreboard players set @s ghostcraft.timer_cycle 2
scoreboard players set @s ghostcraft.timer_cycle_offset 1

function ghostcraft:item/global/throwable/end