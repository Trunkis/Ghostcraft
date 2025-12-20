#
#   Ghosthunt Tick
#   
#   Purpose: To tick the ghosthunt game state
#
#   Input: None
#


# Run all abilities
execute as @a at @s run function #ghostcraft:ability/tick

# Update the score
bossbar set ghostcraft.game.time players @a
execute store result bossbar ghostcraft.game.time value run scoreboard players get game_timer ghostcraft.temp

# Check that the game hasn't ended yet
function ghostcraft:game/ghosthunt/mid_game_player_check
execute if score ghosthunt.mid_game_player_check.ended ghostcraft.temp matches 1 run return 0

# Reset potentially old triggers
execute as @a if score @s ghostcraft.trigger.game matches 1.. run function ghostcraft:game/ghosthunt/trigger

# Ghost particle effect
execute if score timer ghostcraft.temp matches 0 as @e[type=#ghostcraft:player,tag=ghostcraft.ghost] at @s run function ghostcraft:game/ghost/timer
scoreboard players add timer ghostcraft.temp 1
scoreboard players operation timer ghostcraft.temp %= kit.ghost.particle.cycle ghostcraft.config

# Do ghost timer logic
function ghostcraft:game/ghosthunt/timer
execute if score ghosthunt.timer.ended ghostcraft.temp matches 1 run return 0

# Make all ghosts glow for the spectators
execute as @e[type=#ghostcraft:player,tag=ghostcraft.ghost] at @s run particle glow ~ ~1 ~ 0.1 0.5 0.1 0 2 force @a[tag=ghostcraft.spectating]

# Tick all ghosthunt-related functions
function #ghostcraft:game/ghosthunt/tick

