#
#   Tag Owner
#   
#   Purpose: To tag the owner of the bobber with the tag 'ghostcraft.item.grappling_hook.owner'
#
#   Input: None
#


scoreboard players operation #Temp ghostcraft.uuid = @s ghostcraft.uuid

execute as @a if score @s ghostcraft.uuid = #Temp ghostcraft.uuid run tag @s add ghostcraft.item.grappling_hook.owner