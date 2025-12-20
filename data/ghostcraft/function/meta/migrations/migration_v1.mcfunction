#
#   Migration File V1
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#


# Apply last migration
execute unless score version ghostcraft.master matches 1.. run function ghostcraft:meta/migrations/migration_v0

# Set the version
scoreboard players set version ghostcraft.master 2


# Teams
team add ghostcraft.lobby
team modify ghostcraft.lobby collisionRule pushOtherTeams
team modify ghostcraft.lobby deathMessageVisibility never
team modify ghostcraft.lobby friendlyFire false
team modify ghostcraft.lobby seeFriendlyInvisibles true


# Setup gamerules
gamerule entity_drops false
gamerule immediate_respawn true
gamerule mob_drops false
gamerule spawn_mobs false
gamerule elytra_movement_check true
gamerule raids false
gamerule advance_time false
gamerule fire_spread_radius_around_player -1
gamerule spread_vines false
gamerule block_drops false
gamerule advance_weather false
gamerule spawn_wardens false
gamerule keep_inventory true
gamerule mob_griefing false
gamerule natural_health_regeneration false
gamerule respawn_radius 0
gamerule send_command_feedback true
gamerule show_death_messages false
gamerule show_advancement_messages false
