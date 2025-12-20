
effect give @e[type=#ghostcraft:player,tag=!ghostcraft.item.poison_grenade.immune,distance=0..5] poison 12 0 true
effect give @e[type=#ghostcraft:player,tag=!ghostcraft.item.poison_grenade.immune,distance=5..10] poison 5 0 true

playsound block.glass.break hostile @a ~ ~ ~ 3
playsound block.glass.break hostile @a ~ ~ ~ 3

particle dripping_water ~ ~1 ~ 2 1 2 0 100 force
particle dripping_honey ~ ~1 ~ 2 1 2 0 100 force
