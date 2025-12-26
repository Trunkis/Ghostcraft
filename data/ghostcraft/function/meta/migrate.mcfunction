
# Ensure the master scoreboard exists
scoreboard objectives add ghostcraft.master dummy

# Apply migration if required
execute unless score version ghostcraft.master matches 7.. run schedule function ghostcraft:meta/migrations/latest_version 1s