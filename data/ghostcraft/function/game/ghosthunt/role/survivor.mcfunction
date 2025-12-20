#
#   Ghosthunt Survivor Role
#   
#   Purpose: To assign the player as a survivor
#
#   Input: None
#


tag @s add ghostcraft.survivor

# Add 1 to our ghost choice weight
scoreboard players add @s ghostcraft.game.ghost_choice_weight 1

attribute @s attack_speed modifier add ghostcraft.game.ghosthunt.survivor.attack_speed 1000000 add_value

team join ghostcraft.game.ghosthunt.survivor
tag @s add ghostcraft.game.ghosthunt.role.survivor
function ghostcraft:ability/damage_indicator/grant
