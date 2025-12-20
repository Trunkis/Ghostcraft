#
#   Ghosthunt Ghost Role
#   
#   Purpose: To assign the player as a ghost
#
#   Input: None
#

execute unless score ghosts_left ghostcraft.temp matches 1.. run return 0

# If score is negative, a ghost has already been chosen
execute if score target_ghost_choice_weight ghostcraft.temp matches ..-1 run return 0

# Subtract our weight
scoreboard players operation target_ghost_choice_weight ghostcraft.temp -= @s ghostcraft.game.ghost_choice_weight

# If not negative now, we ain't it!
execute unless score target_ghost_choice_weight ghostcraft.temp matches ..-1 run return 0

tag @s add ghostcraft.ghost
tag @s add ghostcraft.game.ghosthunt.role.ghost

scoreboard players remove ghosts_left ghostcraft.temp 1

# Reset our ghost choice weight
scoreboard players set @s ghostcraft.game.ghost_choice_weight 0

attribute @s attack_speed modifier add ghostcraft.game.ghosthunt.ghost.attack_speed 1000000 add_value

team join ghostcraft.game.ghosthunt.ghost
function ghostcraft:ability/damage_indicator/grant

