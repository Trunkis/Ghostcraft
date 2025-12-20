#
#   Countdown Display
#   
#   Purpose: To display the relevant countdown to the player
#
#   Input: None
#


execute anchored eyes run playsound block.note_block.harp master @s ^ ^ ^0.05 100000000000 2 1
title @a title {"text":""}
title @a subtitle {"score":{"name": "seconds","objective": "ghostcraft.temp"},"color":"gold","bold": true}
