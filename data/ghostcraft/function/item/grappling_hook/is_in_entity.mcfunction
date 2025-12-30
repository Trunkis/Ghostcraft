#
#   Is In Entity
#   
#   Purpose: To check if this fishing bobber is attached to a player
#
#   Input: None
#
#   Executor: Fishing Bobber
#


# Get the motion of the grappling hook and tag the entity if it's all 0's and OnGround:0b
execute store result score dx ghostcraft.temp run data get entity @s Motion[0]
execute store result score dy ghostcraft.temp run data get entity @s Motion[1]
execute store result score dz ghostcraft.temp run data get entity @s Motion[2]

execute if score dx ghostcraft.temp matches 0 if score dy ghostcraft.temp matches 0 if score dz ghostcraft.temp matches 0 unless predicate ghostcraft:on_ground run tag @s add ghostcraft.item.grappling_hook.is_in_entity

scoreboard players reset dx ghostcraft.temp
scoreboard players reset dy ghostcraft.temp
scoreboard players reset dz ghostcraft.temp

# Reset score if tagged as is_in_entity
execute if entity @s[tag=!ghostcraft.item.grappling_hook.is_in_entity] run scoreboard players set @s ghostcraft.item.grappling_hook.in_entity_timer 0
execute if entity @s[tag=!ghostcraft.item.grappling_hook.is_in_entity] run return fail
tag @s remove ghostcraft.item.grappling_hook.is_in_entity

# Add 1 to timer
scoreboard players add @s ghostcraft.item.grappling_hook.in_entity_timer 1

#tellraw @a {score:{name:"@e[tag=ghostcraft.item.grappling_hook.bobber,limit=1]",objective:"ghostcraft.item.grappling_hook.in_entity_timer"}}

execute if score max_time ghostcraft.item.grappling_hook.in_entity_timer <= @s ghostcraft.item.grappling_hook.in_entity_timer run return run scoreboard players reset @s ghostcraft.item.grappling_hook.in_entity_timer
return fail

