#
#   Previous Kit Option
#   
#   Purpose: To cycle the kit options to the previous class
#
#   Input: None
#

function ghostcraft:item/get_data
data modify storage ghostcraft:data temp set from storage ghostcraft:data temp."minecraft:custom_data".ghostcraft.kit_options

#Prepend kit option
data modify storage ghostcraft:data temp prepend from storage ghostcraft:data temp[-1]
#Remove kit option
data remove storage ghostcraft:data temp[-1]
#Save to item
item modify entity @s weapon.mainhand ghostcraft:game/lobby/kit_data