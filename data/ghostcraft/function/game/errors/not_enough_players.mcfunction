#
#   Not Enough Players Error
#   
#   Purpose: To fail a transition due to player count
#
#   Input: None
#

function #ghostcraft:game/stop

title @a actionbar [{"text":"2 Players minimum is needed for the game to start."}]
scoreboard players operation phase ghostcraft.master = return_phase ghostcraft.master

function #ghostcraft:game/start

