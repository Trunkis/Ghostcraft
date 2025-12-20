#
#   Ghosthunt Timer
#   
#   Purpose: To display and perform changes based on the state of the timer
#
#   Input: None
#


# Flag that the game hasn't ended
scoreboard players set ghosthunt.timer.ended ghostcraft.temp 1

# Reduce the timer
scoreboard players remove game_timer ghostcraft.temp 1

# General messages
execute if score game_timer ghostcraft.temp matches 1200 run tellraw @a [{"text":"One minute remaining!","color":"red","bold": true}]
execute if score game_timer ghostcraft.temp matches 600 run tellraw @a [{"text":"30 seconds remaining!","color":"red","bold": true}]
execute if score game_timer ghostcraft.temp matches 200 run tellraw @a [{"text":"10 seconds remaining!","color":"red","bold": true}]

execute if score game_timer ghostcraft.temp matches 60 run tellraw @a [{"text":"3","color":"red","bold": true}]
execute if score game_timer ghostcraft.temp matches 40 run tellraw @a [{"text":"2","color":"red","bold": true}]
execute if score game_timer ghostcraft.temp matches 20 run tellraw @a [{"text":"1","color":"red","bold": true}]
execute if score game_timer ghostcraft.temp matches 60 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100000000000 1 1
execute if score game_timer ghostcraft.temp matches 40 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100000000000 1 1 
execute if score game_timer ghostcraft.temp matches 20 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100000000000 1 1

execute if score game_timer ghostcraft.temp matches 0 run return run function ghostcraft:game/ghosthunt/endings/survivors_win

execute if score game_timer ghostcraft.temp = kit.ghost.ghost_compass.time ghostcraft.config run function ghostcraft:game/ghosthunt/give_ghost_compass

scoreboard players set ghosthunt.timer.ended ghostcraft.temp 0
