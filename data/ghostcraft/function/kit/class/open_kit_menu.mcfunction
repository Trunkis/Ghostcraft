#
#   Kit Class Trigger
#   
#   Purpose: To run when the class trigger is set and remove the advancement
#
#   Input: None
#


execute if items entity @s weapon.mainhand stick[custom_data~{ghostcraft:{is_kit_option:true}}] run function ghostcraft:kit/class/show_dialog

advancement revoke @s only ghostcraft:kit/class/open_kit_menu

