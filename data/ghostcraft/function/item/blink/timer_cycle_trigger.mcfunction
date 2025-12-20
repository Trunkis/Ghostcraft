
#tag @s add ghostcraft.item.blink.timer_cycle_trigger.snowball

# Tag player who is the thrower of this snowball
#execute store result score @s ghostcraft.temp run data get entity @s Passengers[0].Item.components."minecraft:custom_data".ghostcraft.thrower_uuid
#execute as @e[type=#ghostcraft:player] if score @s ghostcraft.uuid = @e[tag=ghostcraft.item.blink.timer_cycle_trigger.snowball,limit=1] ghostcraft.temp run tag @s add ghostcraft.item.blink.thrower

particle dust{color:[0.831,0.274,0.925],scale:1} ~ ~ ~ 0 0 0 0 1 force @a[tag=ghostcraft.item.blink.thrower]

# Clear the tag
#tag @e[type=#ghostcraft:player,tag=ghostcraft.item.blink.thrower] remove ghostcraft.item.blink.thrower
#tag @s remove ghostcraft.item.blink.timer_cycle_trigger.snowball
