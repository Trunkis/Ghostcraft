
#tag @s add ghostcraft.item.scare.timer_cycle_trigger.snowball

# Tag player who is the thrower of this snowball
#execute store result score @s ghostcraft.temp run data get entity @s Passengers[0].Item.components."minecraft:custom_data".ghostcraft.thrower_uuid
#execute as @e[type=#ghostcraft:player] if score @s ghostcraft.uuid = @e[tag=ghostcraft.item.scare.timer_cycle_trigger.snowball,limit=1] ghostcraft.temp run tag @s add ghostcraft.item.scare.thrower

particle item{item:"bone"} ~ ~ ~ 0 0 0 0.05 5 force @a[tag=ghostcraft.ghost]

# Clear the tag
#tag @e[type=#ghostcraft:player,tag=ghostcraft.item.scare.thrower] remove ghostcraft.item.scare.thrower
#tag @s remove ghostcraft.item.scare.timer_cycle_trigger.snowball