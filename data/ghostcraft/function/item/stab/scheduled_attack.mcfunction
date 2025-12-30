
# Update UUID from stab queue
execute store result score #Temp ghostcraft.temp run data get storage ghostcraft:data stab_queue[0]

# Make stabber stab
execute as @a[tag=ghostcraft.stab.using] if score @s ghostcraft.uuid = #Temp ghostcraft.temp at @s run function ghostcraft:item/stab/attack

# Remove from the stab queue
data remove storage ghostcraft:data stab_queue[0]