#
#   Check
#   
#   Purpose: To detect missing datapacks and flag they are missing
#
#   Input: None
#


scoreboard players set $requirements.blockstate ghostcraft.temp 0
function ghostcraft:meta/requirements/blockstate
execute if score $requirements.blockstate ghostcraft.temp matches 0 run tellraw @a [{"text":"The BlockState datapack is missing or an unknown version. Please download the latest version "},{"text":"[Here]","bold":true,"color":"blue","hover_event":{action:"show_text","value":"Click to follow link (GitHub)"},"click_event":{"action":"open_url",url:"https://github.com/Triton365/BlockState/releases/download/v1.0.3/BlockState_1.21.5.zip"}}]

scoreboard players set $requirements.player_motion ghostcraft.temp 0
function ghostcraft:meta/requirements/player_motion
execute if score $requirements.player_motion ghostcraft.temp matches 0 run tellraw @a [{"text":"The PlayerMotion datapack is missing or an unknown version. Please download the latest version "},{"text":"[Here]","bold":true,"color":"blue","hover_event":{action:"show_text","value":"Click to follow link (modrinth)"},"click_event":{"action":"open_url",url:"https://cdn.modrinth.com/data/oDhxdGVZ/versions/aW4ph2OC/player_motion.zip"}}]