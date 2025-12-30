###Motion
data modify storage ghostcraft:data temp set value [0,0,0]
##X
execute store result storage ghostcraft:data temp[0] double 0.0006 run scoreboard players get @s ghostcraft.motion.x
##Y
#Positive
execute if score @s ghostcraft.motion.y matches 1.. store result storage ghostcraft:data temp[1] double 0.0003 run scoreboard players get @s ghostcraft.motion.y
#Negative
execute if score @s ghostcraft.motion.y matches ..0 store result storage ghostcraft:data temp[1] double -0.0003 run scoreboard players get @s ghostcraft.motion.y
##Z
execute store result storage ghostcraft:data temp[2] double 0.0006 run scoreboard players get @s ghostcraft.motion.z
##Apply
data modify entity @s Motion set from storage ghostcraft:data temp