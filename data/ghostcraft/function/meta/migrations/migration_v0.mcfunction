#
#   Migration File V1
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#


tellraw @a ["",{"text":"[GhostCraft Datapack]","bold":true,"color":"dark_blue"}," - Setup"]

# Set the version
scoreboard players set version ghostcraft.master 1

# Create general scoreboards
scoreboard objectives add ghostcraft.temp dummy
scoreboard objectives add ghostcraft.config dummy
scoreboard objectives add ghostcraft.uuid dummy
scoreboard objectives add ghostcraft.times_left minecraft.custom:minecraft.leave_game


# # # Abilty scoreboards

# Health indicator
scoreboard objectives add ghostcraft.health health

# Pounce
scoreboard objectives add ghostcraft.ability.pounce.power dummy
scoreboard players set power_scale ghostcraft.ability.pounce.power 400

scoreboard objectives add ghostcraft.ability.ghost_energy dummy


# # # Item scoreboards

scoreboard objectives add ghostcraft.used_coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ghostcraft.used_snowball minecraft.used:minecraft.snowball

scoreboard objectives add ghostcraft.ride_id dummy
scoreboard objectives add ghostcraft.timer_id dummy
scoreboard players set next_id ghostcraft.ride_id 0
scoreboard players set next_id ghostcraft.timer_id 0

scoreboard objectives add ghostcraft.timer dummy
scoreboard objectives add ghostcraft.timer_cycle dummy
scoreboard objectives add ghostcraft.timer_cycle_offset dummy

scoreboard objectives add ghostcraft.motion.x dummy
scoreboard objectives add ghostcraft.motion.y dummy
scoreboard objectives add ghostcraft.motion.z dummy

scoreboard objectives add ghostcraft.ghost.boost.cooldown dummy

scoreboard objectives add ghostcraft.item.crafting_table.invincibility dummy

scoreboard objectives add ghostcraft.item.grappling_hook.used minecraft.used:minecraft.fishing_rod
scoreboard objectives add ghostcraft.item.grappling_hook.in_entity_timer dummy
scoreboard players set max_time ghostcraft.item.grappling_hook.in_entity_timer 7


# # # Class scoreboards

scoreboard objectives add ghostcraft.class dummy
scoreboard objectives add ghostcraft.trigger.class trigger


# # # Map scoreboards

scoreboard players set map ghostcraft.config 1


# # # Game Loop scoreboards

scoreboard players set game ghostcraft.master 0

scoreboard players set phase ghostcraft.master 0
scoreboard players set return_phase ghostcraft.master 0

scoreboard objectives add ghostcraft.logic.login dummy
scoreboard objectives add ghostcraft.trigger.game trigger

scoreboard objectives add ghostcraft.game.deaths deathCount

scoreboard objectives add ghostcraft.game.map_change.vote trigger


# Setup base config
function ghostcraft:config/reset

# Setup dimension
function ghostcraft:world/initialize

schedule function ghostcraft:map/refresh 5s

# Gracious messages to spam chat with
schedule function ghostcraft:meta/grace/message_1 1s
schedule function ghostcraft:meta/grace/message_5 5s
schedule function ghostcraft:meta/grace/message_10 10s
schedule function ghostcraft:meta/grace/message_15 15s


# Create storage
data merge storage ghostcraft:data {stab_queue:[],vampire_queue:[],dimension:"ghostcraft:empty"}



return 0

scoreboard objectives add player_motion.api.launch dummy
