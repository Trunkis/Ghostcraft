
execute as @e[type=#ghostcraft:player,tag=!ghostcraft.item.flashbang.immune,distance=..5] run effect give @s blindness 5 1 true

particle block_marker{block_state:"black_concrete"} ~ ~1 ~ 2 0.5 2 1 200 force @a[tag=!ghostcraft.item.flashbang.immune]
particle block_marker{block_state:"black_concrete"} ~ ~ ~ 2 0.5 2 1 10 force @a[tag=ghostcraft.item.flashbang.immune]
