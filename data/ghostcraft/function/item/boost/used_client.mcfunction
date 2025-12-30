scoreboard players set @s ghostcraft.ability.pounce.power 19

tag @s add ghostcraft.ability.pounce.no_energy_consume
function ghostcraft:ability/pounce/activate
tag @s remove ghostcraft.ability.pounce.no_energy_consume

scoreboard players set @s ghostcraft.ability.pounce.power 0

scoreboard players set @s ghostcraft.ghost.boost.cooldown 20
scoreboard players set @s ghostcraft.ability.pounce.power -50

scoreboard players operation @s ghostcraft.ability.ghost_energy -= item.boost.energy_requirement ghostcraft.config