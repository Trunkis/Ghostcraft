#
#   Tick
#   
#   Purpose: To tick the Anti-Camp clock
#
#   Input: None
#


execute if score game.ghosthunt.anti_camp.clock ghostcraft.config matches -1 run return 0

scoreboard players add game.ghosthunt.anti_camp.time ghostcraft.temp 1

execute if score game.ghosthunt.anti_camp.clock ghostcraft.config <= game.ghosthunt.anti_camp.time ghostcraft.temp run function ghostcraft:game/ghosthunt/anti_camp/update

scoreboard players operation game.ghosthunt.anti_camp.time ghostcraft.temp %= game.ghosthunt.anti_camp.clock ghostcraft.config

scoreboard players remove @e[type=vex,tag=ghostcraft.game.ghosthunt.anti_camp.vex] ghostcraft.game.ghosthunt.anti_camp.lifetime 1
execute as @e[type=vex,tag=ghostcraft.game.ghosthunt.anti_camp.vex] if score @s ghostcraft.game.ghosthunt.anti_camp.lifetime matches ..0 run kill @s

#execute as @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.player_marker] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force

