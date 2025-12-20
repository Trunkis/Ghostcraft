#
#   Play Music
#   
#   Purpose: To play a random background song
#
#   Input: None
#


execute if predicate {"condition":"random_chance",chance:0.125} run return run playsound music_disc.ward master @s 0 0 0 100000000000 0.1 1

execute if predicate {"condition":"random_chance",chance:0.142857142} run return run playsound music_disc.strad master @s 0 0 0 100000000000 0.1 1

execute if predicate {"condition":"random_chance",chance:0.166666} run return run playsound music_disc.pigstep master @s 0 0 0 100000000000 0.1 1

execute if predicate {"condition":"random_chance",chance:0.2} run return run playsound music_disc.otherside master @s 0 0 0 100000000000 0.1 1

execute if predicate {"condition":"random_chance",chance:0.25} run return run playsound music_disc.mellohi master @s 0 0 0 100000000000 0.1 1

execute if predicate {"condition":"random_chance",chance:0.33333333} run return run playsound music_disc.chirp master @s 0 0 0 100000000000 0.1 1

execute if predicate {"condition":"random_chance",chance:0.5} run return run playsound music_disc.mall master @s 0 0 0 100000000000 0.1 1

playsound music_disc.far master @s 0 0 0 100000000000 0.1 1

