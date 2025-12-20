#
#   Save Bobber Data
#   
#   Purpose: To save the position of the bobber for when it's reeled in
#
#   Input: None
#


execute unless data entity @s {OnGround:1b} run tag @s add ghostcraft.item.grappling_hook.aerial
execute if data entity @s {OnGround:1b} run tag @s add ghostcraft.item.grappling_hook.grounded

function ghostcraft:item/grappling_hook/tag_owner

execute if entity @s[tag=ghostcraft.item.grappling_hook.aerial] unless entity @s[tag=ghostcraft.item.grappling_hook.grounded] run data modify storage ghostcraft:data bobber_data set value {OnGround:0b}
execute unless entity @s[tag=ghostcraft.item.grappling_hook.aerial] run data modify storage ghostcraft:data bobber_data set value {OnGround:1b}
execute unless entity @s[tag=ghostcraft.item.grappling_hook.aerial] unless entity @s[tag=ghostcraft.item.grappling_hook.clicked] at @s run playsound entity.fishing_bobber.retrieve master @a[distance=..25] ~ ~ ~ 1 1.9 0.5
execute unless entity @s[tag=ghostcraft.item.grappling_hook.aerial] unless entity @s[tag=ghostcraft.item.grappling_hook.clicked] at @s run playsound entity.fishing_bobber.retrieve master @a[distance=..25] ~ ~ ~ 1 0.1 0.5
execute unless entity @s[tag=ghostcraft.item.grappling_hook.aerial] unless entity @s[tag=ghostcraft.item.grappling_hook.clicked] as @p[tag=ghostcraft.item.grappling_hook.owner] at @s run playsound entity.fishing_bobber.retrieve master @s ~ ~ ~ 100000000000 1.9 1
execute unless entity @s[tag=ghostcraft.item.grappling_hook.aerial] unless entity @s[tag=ghostcraft.item.grappling_hook.clicked] as @p[tag=ghostcraft.item.grappling_hook.owner] at @s run playsound entity.fishing_bobber.retrieve master @s ~ ~ ~ 100000000000 0.1 1
execute unless entity @s[tag=ghostcraft.item.grappling_hook.aerial] unless entity @s[tag=ghostcraft.item.grappling_hook.clicked] run tag @s add ghostcraft.item.grappling_hook.clicked
execute unless entity @s[tag=ghostcraft.item.grappling_hook.aerial] run data modify storage ghostcraft:data bobber_data.Pos set from entity @s Pos

item modify entity @p[tag=ghostcraft.item.grappling_hook.owner] weapon.mainhand ghostcraft:item/grappling_hook/copy_storage

tag @a remove ghostcraft.item.grappling_hook.owner
tag @s remove ghostcraft.item.grappling_hook.aerial
