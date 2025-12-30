
tag @s remove ghostcraft.ability.pounce.charging

execute if predicate ghostcraft:ability/pounce/primed run tag @s add ghostcraft.ability.pounce.should_update

execute if entity @s[tag=ghostcraft.ability.pounce.should_update] run tag @s add ghostcraft.ability.pounce.charging

execute if score @s ghostcraft.ability.pounce.power matches ..-1 run scoreboard players add @s ghostcraft.ability.pounce.power 1
execute if score @s ghostcraft.ability.pounce.power matches 56.. run scoreboard players set @s ghostcraft.ability.pounce.power 56
scoreboard players operation required_energy ghostcraft.ability.ghost_energy = ability.pounce.energy_requirement ghostcraft.config
execute unless function ghostcraft:ability/ghost_energy/has_enough_energy run return run function ghostcraft:ability/pounce/not_enough_energy

execute if entity @s[tag=ghostcraft.ability.pounce.should_update] unless predicate {condition:"entity_properties",entity:"this",predicate:{"flags":{is_on_ground:false}}} run scoreboard players add @s ghostcraft.ability.pounce.power 1
execute if score @s ghostcraft.ability.pounce.power matches 56.. run scoreboard players set @s ghostcraft.ability.pounce.power 56

execute if entity @s[tag=ghostcraft.ability.pounce.charging] run function ghostcraft:ability/pounce/match_experience

# Allow charging on the ground
#execute unless predicate ghostcraft:on_ground if score @s ghostcraft.ability.pounce.power matches 1.. run scoreboard players set @s ghostcraft.ability.pounce.power 0

execute unless predicate ghostcraft:ability/pounce/primed if score @s ghostcraft.ability.pounce.power matches 20.. run function ghostcraft:ability/pounce/activate

execute unless entity @s[tag=ghostcraft.ability.pounce.should_update] if score @s ghostcraft.ability.pounce.power matches 1.. run scoreboard players set @s ghostcraft.ability.pounce.power 0
tag @s remove ghostcraft.ability.pounce.should_update
