#
#   Player Teardown
#   
#   Purpose: To remove lobby setup logic
#
#   Input: None
#


attribute @s attack_damage modifier remove ghostcraft.game.lobby.player

function ghostcraft:ability/feather_falling/revoke

execute at @e[type=marker,tag=ghostcraft.map.lobby,sort=random,limit=1] run spawnpoint @s ~ ~ ~

