#
#   Grappling Hook Tick
#   
#   Purpose: To update all relevant grappling hook data
#
#   Input: None
#


execute as @e[type=fishing_bobber] at @s run function ghostcraft:item/grappling_hook/entity_check

execute as @a[tag=ghostcraft.item.grappling_hook.casting] run function ghostcraft:item/grappling_hook/check_hook

