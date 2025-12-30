#
#   Logic Timer
#   
#   Purpose: To update any entities marked for a timer trigger
#
#   Input: None
#

scoreboard players remove @s ghostcraft.timer 1

execute if score @s ghostcraft.timer matches ..0 run function #ghostcraft:item/timer_trigger

