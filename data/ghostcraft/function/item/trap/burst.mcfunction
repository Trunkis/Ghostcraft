#
#   Hit Block
#   
#   Purpose: To test whether should set a trap due to the player hitting a block
#
#   Input: None
#


particle angry_villager ~ ~ ~ 0.2 0.55 0.2 0.5 30 force
playsound block.anvil.land master @s ~ ~ ~ 100000000000 1 1
playsound entity.ghast.hurt block @a ~ ~ ~ 2 0.1 0.5

effect give @s poison 8 0 true

kill @e[type=marker,tag=ghostcraft.item.trap,distance=..1]
