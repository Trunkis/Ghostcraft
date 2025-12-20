
execute store result score item.blink.ride_trigger.thrower_uuid ghostcraft.temp run data get entity @s Item.components."minecraft:custom_data".ghostcraft.thrower_uuid

execute at @s run playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 0.5
particle dust{color:[0.831,0.274,0.925],scale:1} ~ ~ ~ 0 1 0 0 30 force

execute at @s as @a if score @s ghostcraft.uuid = item.blink.ride_trigger.thrower_uuid ghostcraft.temp run tp ~ ~ ~

kill
