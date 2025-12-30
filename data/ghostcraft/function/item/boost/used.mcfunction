##Energy
scoreboard players operation required_energy ghostcraft.ability.ghost_energy = item.boost.energy_requirement ghostcraft.config
execute unless function ghostcraft:ability/ghost_energy/has_enough_energy run return run title @s actionbar "You do not have enough energy to boost."

##is_server
#Off
execute unless score is_server ghostcraft.config matches 1.. run return run function ghostcraft:item/boost/used_client
#On
function ghostcraft:item/boost/used_server