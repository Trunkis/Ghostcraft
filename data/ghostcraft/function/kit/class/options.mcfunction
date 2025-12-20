#
#   Kit Class Trigger
#   
#   Purpose: To run when the class trigger is set and remove the advancement
#
#   Input: None
#


execute if items entity @s weapon.offhand stick[custom_data~{ghostcraft:{is_kit_option:true}}] run function ghostcraft:kit/class/kit_options/return_offhand

execute if score @s ghostcraft.trigger.class matches -1 run function ghostcraft:kit/class/kit_options/previous
execute if score @s ghostcraft.trigger.class matches -2 run function ghostcraft:kit/class/kit_options/next

function ghostcraft:kit/class/open_kit_menu

scoreboard players reset @s ghostcraft.trigger.class
scoreboard players enable @s ghostcraft.trigger.class

advancement revoke @s only ghostcraft:kit/class/options

