#
#   Hit Block
#   
#   Purpose: To test whether should set a trap due to the player hitting a block
#
#   Input: None
#


tag @s add ghostcraft.trap.trapper

execute if block ~ ~ ~ #ghostcraft:item/trap/nonsolid run return run title @s actionbar {"text":"The trap needs to be on a solid block"}

execute unless block ~ ~1 ~ air run return run title @s actionbar {"text":"The trap needs to have space above it"}
execute unless block ~ ~2 ~ air run return run title @s actionbar {"text":"The trap needs to have space above it"}

execute positioned ~ ~0.5 ~ if entity @e[type=marker,tag=ghostcraft.item.trap,distance=..0.1] run return run title @s actionbar {"text":"There is already a trap there"}

execute positioned ~ ~0.5 ~ run function ghostcraft:item/trap/place

tag @s remove ghostcraft.trap.trapper

# Get the hand damage vs. the max damage and clear the item if they match
execute store result score hand_damage ghostcraft.temp run data get entity @s SelectedItem.components."damage"
scoreboard players add hand_damage ghostcraft.temp 1
execute store result score max_damage ghostcraft.temp run data get entity @s SelectedItem.components."max_damage"
execute if score max_damage ghostcraft.temp <= hand_damage ghostcraft.temp run return run item replace entity @s weapon.mainhand with air

# Use an armor stand to change the damage
summon armor_stand ~ ~ ~ {equipment:{},Tags:["ghostcraft.item.trap.hit_block.temp"]}
item replace entity @e[tag=ghostcraft.item.trap.hit_block.temp] weapon.mainhand from entity @s weapon.mainhand
execute store result entity @e[tag=ghostcraft.item.trap.hit_block.temp,limit=1] equipment.mainhand.components."damage" int 1 run scoreboard players get hand_damage ghostcraft.temp
# Reapply the item to the player
item replace entity @s weapon.mainhand from entity @e[tag=ghostcraft.item.trap.hit_block.temp,limit=1] weapon.mainhand

# Clean up
kill @e[tag=ghostcraft.item.trap.hit_block.temp]

