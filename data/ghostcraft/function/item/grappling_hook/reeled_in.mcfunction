#
#   Grappling Hook Reeled
#   
#   Purpose: To update a player who just reeled in a grappling hook
#
#   Input: None
#


tag @s remove ghostcraft.item.grappling_hook.casting

execute if items entity @s weapon.mainhand *[custom_data~{ghostcraft:{type:grappling_hook,bobber_data:{OnGround:1b}}}] run function ghostcraft:item/grappling_hook/launch

# Clear bobber data
data modify storage ghostcraft:data bobber_data set value {type:grappling_hook}
item modify entity @s weapon.mainhand ghostcraft:item/grappling_hook/clear_bobber_data
