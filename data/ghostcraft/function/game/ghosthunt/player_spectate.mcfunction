#
#   Player Spectate
#   
#   Purpose: To set the player as a spectator
#
#   Input: None
#


function ghostcraft:game/ghosthunt/survivor_hurt_ghost/reset

function ghostcraft:game/lobby/player_teardown
execute in ghostcraft:empty positioned 0 0 0 run function ghostcraft:game/ghosthunt/on_death

title @s title {"text":""}
title @s actionbar {"text":"A game is in progress, please wait..."}
