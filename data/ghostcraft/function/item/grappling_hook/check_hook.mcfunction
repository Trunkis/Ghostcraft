#
#   Check Grappling Hook
#   
#   Purpose: To check if I have a grappling hook and update if not
#
#   Input: None
#


# Storage
setblock 0 0 0 chest{} strict
item replace block 0 0 0 container.0 from entity @s weapon.mainhand

# Tag relevant entities
scoreboard players operation #Temp ghostcraft.uuid = @s ghostcraft.uuid

execute as @e[type=fishing_bobber,tag=ghostcraft.item.grappling_hook.bobber] if score @s ghostcraft.uuid = #Temp ghostcraft.uuid run function ghostcraft:item/grappling_hook/check_bobber

execute unless entity @e[type=fishing_bobber,tag=ghostcraft.item.grappling_hook.check_hook.bobber] run function ghostcraft:item/grappling_hook/reeled_in

# Clear temp tags
tag @e[type=fishing_bobber,tag=ghostcraft.item.grappling_hook.check_hook.bobber] remove ghostcraft.item.grappling_hook.check_hook.bobber

