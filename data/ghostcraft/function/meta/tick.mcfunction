#
#   Tick
#   
#   Purpose: To update everything that can't be triggered by an event
#
#   Input: None
#

# Ensure every player has a UUID initialized
execute as @e[type=#ghostcraft:player,tag=!ghostcraft.player.initialized] at @s run function ghostcraft:logic/refresh_player

# Player rejoins
execute as @a if score @s ghostcraft.times_left matches 1.. at @s run function ghostcraft:logic/restart_player

execute as @e[type=!player] run function ghostcraft:entity_tick

function ghostcraft:game/tick

function #ghostcraft:item/tick
