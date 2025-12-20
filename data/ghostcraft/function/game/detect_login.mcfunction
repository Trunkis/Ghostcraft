#
#   Detect Login
#   
#   Purpose: To detect when a player has just joined the world
#
#   Input: None
#


execute unless score set_up ghostcraft.master matches 1 run return 0

execute as @a unless score @s ghostcraft.logic.login = time ghostcraft.logic.login run function #ghostcraft:logic/player_logged_in

scoreboard players add time ghostcraft.logic.login 1
execute as @a run scoreboard players operation @s ghostcraft.logic.login = time ghostcraft.logic.login
