#
#   Save Bobber Data
#   
#   Purpose: To save the position of the bobber for when it's reeled in
#
#   Input: None
#

execute if predicate ghostcraft:on_ground run tag @s add ghostcraft.item.grappling_hook.grounded

function ghostcraft:item/grappling_hook/tag_owner

execute unless entity @s[tag=ghostcraft.item.grappling_hook.grounded] run data modify storage ghostcraft:data bobber_data set value {OnGround:0b}

##On ground
execute if entity @s[tag=ghostcraft.item.grappling_hook.grounded] run function ghostcraft:item/grappling_hook/aerial_bobber

item modify entity @p[tag=ghostcraft.item.grappling_hook.owner] weapon.mainhand ghostcraft:item/grappling_hook/copy_storage

tag @a remove ghostcraft.item.grappling_hook.owner