# Update timer triggers
execute if entity @s[tag=ghostcraft.item.timer] run function ghostcraft:logic/timer
execute if entity @s[tag=ghostcraft.item.timer_cycle] run function ghostcraft:logic/timer_cycle

# Update ride triggers
execute if entity @s[tag=ghostcraft.item.ride_trigger] run function ghostcraft:logic/test_ride_trigger

# Update sync tagged entities
execute if entity @s[tag=ghostcraft.item.motion_sync] run function ghostcraft:logic/sync_motion
execute if entity @s[tag=ghostcraft.item.timer_sync] run function ghostcraft:logic/sync_timer

# Misc
scoreboard players remove @s[scores={ghostcraft.ghost.boost.cooldown=1..}] ghostcraft.ghost.boost.cooldown 1
scoreboard players remove @s[scores={ghostcraft.item.crafting_table.invincibility=1..}] ghostcraft.item.crafting_table.invincibility 1

# Arrows
execute as @e[type=arrow,tag=!ghostcraft.arrow.accounted] run function ghostcraft:logic/clean_arrow