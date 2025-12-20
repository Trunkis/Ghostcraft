#
#   Migration File V1
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#


# Apply last migration
execute unless score version ghostcraft.master matches 3.. run function ghostcraft:meta/migrations/migration_v2

# Set the version
scoreboard players set version ghostcraft.master 4


gamerule max_block_modifications 9000000

