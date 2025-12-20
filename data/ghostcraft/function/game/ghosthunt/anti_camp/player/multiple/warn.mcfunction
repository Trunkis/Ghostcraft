#
#   Warn
#   
#   Purpose: To warm this player that they are approaching the anti-camp activation
#
#   Input: None
#


effect give @s blindness 5 255 true
playsound entity.zombified_piglin.ambient master @s ~-5 ~-100000 ~ 1 0.001 1
playsound entity.zombified_piglin.ambient master @s ~5 ~-100000 ~ 1 0.001 1
playsound entity.zombified_piglin.ambient master @s ~ ~-100000 ~5 1 0.001 1
playsound entity.zombified_piglin.ambient master @s ~ ~-100000 ~-5 1 0.001 1

title @s actionbar [{"text":"You feel a presence called towards your group... ","italic":false,color:"red"},{"text":"Better move along.",color:"white"}]
title @s title ''

tag @s add ghostcraft.game.ghosthunt.anti_camp.player.warn.current
execute as @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.marker.warning_all] if score @s ghostcraft.uuid = @e[type=#ghostcraft:player,limit=1,tag=ghostcraft.game.ghosthunt.anti_camp.player.warn.current] ghostcraft.uuid run tag @s add ghostcraft.game.ghosthunt.anti_camp.multiple.marker.warned
tag @s remove ghostcraft.game.ghosthunt.anti_camp.player.warn.current

