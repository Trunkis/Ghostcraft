
# Check energy requirements first
scoreboard players operation required_energy ghostcraft.ability.ghost_energy = item.stab.energy_requirement ghostcraft.config
execute unless function ghostcraft:ability/ghost_energy/has_enough_energy run return run function ghostcraft:item/stab/not_enough_energy

scoreboard players operation @s ghostcraft.ability.ghost_energy -= item.stab.energy_requirement ghostcraft.config

playsound ghostcraft:stab_start hostile @a ~ ~ ~ 1
schedule function ghostcraft:item/stab/scheduled_attack 2s

tag @s add ghostcraft.stab.using

attribute @s attack_damage modifier add ghostcraft.item.stab.using -1000 add_value
data modify storage ghostcraft:data stab_queue append from entity @s UUID[0]

scoreboard players set @s ghostcraft.ghost.boost.cooldown 50
scoreboard players set @s ghostcraft.ability.pounce.power -50
