#
#   Next Kit Option
#   
#   Purpose: To cycle the kit options to the next class
#
#   Input: None
#


summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,ShowArms:1b,Tags:["ghostcraft.kit.class.kit_options.get.temp"]}

item replace entity @e[tag=ghostcraft.kit.class.kit_options.get.temp,limit=1] weapon.mainhand from entity @s weapon.mainhand

# Cycle class option here
data modify entity @e[tag=ghostcraft.kit.class.kit_options.get.temp,limit=1] equipment.mainhand.components."custom_data".ghostcraft.kit_options append from entity @e[tag=ghostcraft.kit.class.kit_options.get.temp,limit=1] equipment.mainhand.components."custom_data".ghostcraft.kit_options[0]
data remove entity @e[tag=ghostcraft.kit.class.kit_options.get.temp,limit=1] equipment.mainhand.components."custom_data".ghostcraft.kit_options[0]

item replace entity @s weapon.mainhand from entity @e[tag=ghostcraft.kit.class.kit_options.get.temp,limit=1] weapon.mainhand

kill @e[tag=ghostcraft.kit.class.kit_options.get.temp]
