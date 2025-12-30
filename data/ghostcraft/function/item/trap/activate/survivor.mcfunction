#
#   Survivor Activate
#   
#   Purpose: To activate the trap due to a survivor stepping on it
#
#   Input: None
#


# Tag the entity as current stepping on a trap
tag @s add ghostcraft.item.trap.stepped.current

# If already accounted, stop execution
execute if entity @s[tag=ghostcraft.item.trap.stepped] run return 0

tag @s add ghostcraft.item.trap.stepped
execute as @n[type=marker,tag=ghostcraft.item.trap,distance=..1] run function ghostcraft:item/trap/visible_mark

