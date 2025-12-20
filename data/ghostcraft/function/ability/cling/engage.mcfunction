#
#   Engage
#   
#   Purpose: To engage this cling
#
#   Input: None
#


tag @s add ghostcraft.ability.cling.engaged
attribute @s gravity modifier add ghostcraft.ability.cling -0.08 add_value

execute store result score @s ghostcraft.ability.cling.y run data get entity @s Pos[1] 1000

