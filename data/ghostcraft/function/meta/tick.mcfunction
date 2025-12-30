#
#   Tick
#   
#   Purpose: To update everything that can't be triggered by an event
#
#   Input: None
#

# Ensure every player has a UUID initialized
execute as @e[type=#ghostcraft:player,tag=!ghostcraft.player.initialized] at @s run function ghostcraft:logic/refresh_player

execute as @a at @s run function ghostcraft:player_tick
execute as @e[type=!player] at @s run function ghostcraft:entity_tick

function ghostcraft:game/tick

function #ghostcraft:item/tick
