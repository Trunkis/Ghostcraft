
playsound entity.ender_dragon.flap hostile @a[distance=..20] ~ ~ ~ 1 0.5

scoreboard players operation @s ghostcraft.temp = @s ghostcraft.ability.pounce.power
scoreboard players operation @s ghostcraft.temp *= power_scale ghostcraft.ability.pounce.power

scoreboard players operation $strength player_motion.api.launch = @s ghostcraft.temp

function player_motion:api/launch_looking

scoreboard players set @s ghostcraft.ability.pounce.power -20

execute unless entity @s[tag=ghostcraft.ability.pounce.no_energy_consume] run scoreboard players operation @s ghostcraft.ability.ghost_energy -= ability.pounce.energy_requirement ghostcraft.config

tag @s remove ghostcraft.ability.pounce.charging
