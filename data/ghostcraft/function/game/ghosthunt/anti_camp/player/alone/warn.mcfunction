#
#   Warn
#   
#   Purpose: To warn this player that they are approaching the anti-camp activation
#
#   Input: None
#


effect give @s blindness 3 255 true
playsound entity.zombified_piglin.ambient master @s ~ ~-100000 ~ 1 0.001 1

title @s actionbar [{"text":"You feel a presence called towards you... ","italic":false,color:"red"},{"text":"Better move along.",color:"white"}]
title @s title ''

tag @s add ghostcraft.game.ghosthunt.anti_camp.current
execute as @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.player_marker,distance=..10] if score @s ghostcraft.uuid = @e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.anti_camp.current,limit=1,sort=nearest] ghostcraft.uuid run tag @s add ghostcraft.game.ghosthunt.anti_camp.alone.marker.warned
tag @s remove ghostcraft.game.ghosthunt.anti_camp.current

