#
#   Kit Class Trigger
#   
#   Purpose: To run when the class trigger is set and remove the advancement
#
#   Input: None
#


data modify storage ghostcraft:data macro set value {function:""}

data modify storage ghostcraft:data macro.function set from entity @s SelectedItem.components."custom_data".ghostcraft.kit_options[0]

function ghostcraft:kit/class/show_dialog_macro with storage ghostcraft:data macro

item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with air

