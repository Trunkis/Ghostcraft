# Tag self uniquely
tag @s add ghostcraft.item.ride_trigger.target

execute as @e[tag=ghostcraft.item.steed] if score @s ghostcraft.ride_id = @e[tag=ghostcraft.item.ride_trigger.target,limit=1] ghostcraft.ride_id run tag @e[tag=ghostcraft.item.ride_trigger.target] add ghostcraft.item.ride_trigger.failure

execute unless entity @s[tag=ghostcraft.item.ride_trigger.failure] run function #ghostcraft:item/ride_trigger
# Remove unique tag
tag @s remove ghostcraft.item.ride_trigger.target
tag @s remove ghostcraft.item.ride_trigger.failure
