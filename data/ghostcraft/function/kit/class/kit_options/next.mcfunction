#
#   Next Kit Option
#   
#   Purpose: To cycle the kit options to the next class
#
#   Input: None
#

function ghostcraft:item/get_data
data modify storage ghostcraft:data temp set from storage ghostcraft:data temp."minecraft:custom_data".ghostcraft.kit_options

#Append kit option
data modify storage ghostcraft:data temp append from storage ghostcraft:data temp[0]
#Remove kit option
data remove storage ghostcraft:data temp[0]
#Save to item
item modify entity @s weapon.mainhand ghostcraft:game/lobby/kit_data