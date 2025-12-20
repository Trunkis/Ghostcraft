#
#   Hit Block
#   
#   Purpose: To test whether should set a trap due to the player hitting a block
#
#   Input: None
#

tag @s add ghostcraft.trap.trapper

##Check placement
#Fail
execute if block ~ ~ ~ #ghostcraft:item/trap/nonsolid run return run title @s actionbar "The trap needs to be on a solid block"
execute unless block ~ ~1 ~ air run return run title @s actionbar "The trap needs to have space above it"
execute unless block ~ ~2 ~ air run return run title @s actionbar "The trap needs to have space above it"
execute positioned ~ ~0.5 ~ if entity @n[type=marker,tag=ghostcraft.item.trap,distance=..0.1] run return run title @s actionbar "There is already a trap there"
#Success
execute positioned ~ ~0.5 ~ run function ghostcraft:item/trap/place

tag @s remove ghostcraft.trap.trapper

## Get the hand damage vs. the max damage and clear the item if they match
function ghostcraft:item/get_data
execute store result score hand_damage ghostcraft.temp run data get storage ghostcraft:data temp."minecraft:damage"
execute store result score max_damage ghostcraft.temp run data get storage ghostcraft:data temp."minecraft:max_damage"
#Check
scoreboard players add hand_damage ghostcraft.temp 1
execute if score max_damage ghostcraft.temp <= hand_damage ghostcraft.temp run return run item replace entity @s weapon.mainhand with air

## Change damage
item modify entity @s weapon.mainhand {function:set_damage,damage:{type:"score",score:"ghostcraft.temp",target:{type:"fixed",name:"hand_damage"}}}