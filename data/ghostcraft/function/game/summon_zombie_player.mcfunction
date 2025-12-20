#
#   Summon Zombie Player
#   
#   Purpose: To summon a zombie as a placeholder player
#
#   Input: None
#


summon zombie ~ ~ ~ {Tags:["ghostcraft.zombie_player.new"],Silent:1b,equipment:{head:{id:"leather_helmet",count:1},feet:{id:"leather_boots",count:1}},PersistenceRequired:1b}

execute as @e[type=zombie,tag=ghostcraft.zombie_player.new] run scoreboard players set @s ghostcraft.effect.ghost.particle_effect 0
tag @e[type=zombie,tag=ghostcraft.zombie_player.new] remove ghostcraft.zombie_player.new
