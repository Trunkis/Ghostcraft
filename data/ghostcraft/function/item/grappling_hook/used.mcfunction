#
#   Grappling Hook Used
#   
#   Purpose: To update a player when a grappling hook is used
#
#   Input: None
#


advancement revoke @s only ghostcraft:item/grappling_hook/cast
scoreboard players reset @s ghostcraft.item.grappling_hook.used

data modify storage ghostcraft:data bobber_data set value {"type":"grappling_hook"}
execute if items entity @s weapon.mainhand *[custom_data~{ghostcraft:{bobber_data:{}}}] run item modify entity @s weapon.mainhand ghostcraft:item/grappling_hook/clear_bobber_data
#execute if data entity @s SelectedItem.components."minecraft:custom_data".ghostcraft.bobber_data run item modify entity @s weapon.mainhand ghostcraft:item/grappling_hook/clear_bobber_data

execute unless predicate ghostcraft:item/grappling_hook/holding run return 0

# Confirm there is a bobber untouched, to avoid any issues
execute unless entity @e[type=fishing_bobber,tag=!ghostcraft.item.grappling_hook.accounted] run return 0

tag @s add ghostcraft.item.grappling_hook.caster

tag @s add ghostcraft.item.grappling_hook.casting
execute as @e[type=fishing_bobber,tag=!ghostcraft.item.grappling_hook.accounted] at @s run function ghostcraft:item/grappling_hook/initialize

tag @s remove ghostcraft.item.grappling_hook.caster

