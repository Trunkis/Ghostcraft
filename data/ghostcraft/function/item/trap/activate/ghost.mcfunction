#
#   Ghost Activate
#   
#   Purpose: To activate the trap due to a ghost stepping on it
#
#   Input: None
#


# Tag the entity as current stepping on a trap
tag @s add ghostcraft.item.trap.stepped.current

# If already accounted, stop execution
execute if entity @s[tag=ghostcraft.item.trap.stepped] run return 0

tag @s add ghostcraft.item.trap.stepped
function ghostcraft:item/trap/burst

