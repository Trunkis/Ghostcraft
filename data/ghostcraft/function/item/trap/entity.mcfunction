execute if entity @n[type=marker,tag=ghostcraft.item.trap,distance=..1] run function ghostcraft:item/trap/team_check

# Remove all stepped entities that aren't stepping on one anymore
tag @s[tag=ghostcraft.item.trap.stepped,tag=!ghostcraft.item.trap.stepped.current] remove ghostcraft.item.trap.stepped

tag @s remove ghostcraft.item.trap.stepped.current