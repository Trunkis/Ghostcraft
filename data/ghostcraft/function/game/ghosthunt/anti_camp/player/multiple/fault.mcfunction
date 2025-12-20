#
#   Fault
#   
#   Purpose: To run the anti-camp activation logic of grouped players
#
#   Input: None
#


playsound entity.allay.death master @s ~ ~-100000 ~ 0.35 0.001 1
playsound entity.allay.hurt master @s ~ ~-100000 ~ 0.35 0.001 1

effect give @s blindness 10 255 true

particle reverse_portal ~ ~0.2 ~ 0.5 0 0.5 1 100 force
particle portal ~ ~0.2 ~ 0.5 0 0.5 1 100 force
particle block{block_state:{Name:"red_concrete"}} ~ ~0.2 ~ 1 0 1 1 200 force
particle dripping_obsidian_tear ~ ~1 ~ 1.5 0.5 1.5 1 100 force

title @s actionbar [{"text":"Underworldly creatures have found you group!","italic":false,"bold":true,color:"red"}]
title @s title ''

tag @s add ghostcraft.game.ghosthunt.anti_camp.current

# Summon a ton of vexes
summon vex ~1 ~2 ~ {attributes:[{base:1.4,id:"movement_speed"}],Tags:["ghostcraft.game.ghosthunt.anti_camp.vex", "ghostcraft.game.ghosthunt.anti_camp.vex.new"],Health:2,Team:"ghostcraft.game.ghosthunt.ghost",ticks_since_last_hurt_by_mob:0,last_hurt_by_player_memory_time:100}
summon vex ~-1 ~2 ~ {attributes:[{base:1.4,id:"movement_speed"}],Tags:["ghostcraft.game.ghosthunt.anti_camp.vex", "ghostcraft.game.ghosthunt.anti_camp.vex.new"],Health:2,Team:"ghostcraft.game.ghosthunt.ghost",ticks_since_last_hurt_by_mob:0,last_hurt_by_player_memory_time:100}
summon vex ~ ~2 ~1 {attributes:[{base:1.4,id:"movement_speed"}],Tags:["ghostcraft.game.ghosthunt.anti_camp.vex", "ghostcraft.game.ghosthunt.anti_camp.vex.new"],Health:2,Team:"ghostcraft.game.ghosthunt.ghost",ticks_since_last_hurt_by_mob:0,last_hurt_by_player_memory_time:100}
summon vex ~ ~2 ~-1 {attributes:[{base:1.4,id:"movement_speed"}],Tags:["ghostcraft.game.ghosthunt.anti_camp.vex", "ghostcraft.game.ghosthunt.anti_camp.vex.new"],Health:2,Team:"ghostcraft.game.ghosthunt.ghost",ticks_since_last_hurt_by_mob:0,last_hurt_by_player_memory_time:100}

summon vex ~1 ~2 ~ {attributes:[{base:1.4,id:"movement_speed"}],Tags:["ghostcraft.game.ghosthunt.anti_camp.vex", "ghostcraft.game.ghosthunt.anti_camp.vex.new"],Health:2,Team:"ghostcraft.game.ghosthunt.ghost",ticks_since_last_hurt_by_mob:0,last_hurt_by_player_memory_time:100}
summon vex ~-1 ~2 ~ {attributes:[{base:1.4,id:"movement_speed"}],Tags:["ghostcraft.game.ghosthunt.anti_camp.vex", "ghostcraft.game.ghosthunt.anti_camp.vex.new"],Health:2,Team:"ghostcraft.game.ghosthunt.ghost",ticks_since_last_hurt_by_mob:0,last_hurt_by_player_memory_time:100}
summon vex ~ ~2 ~1 {attributes:[{base:1.4,id:"movement_speed"}],Tags:["ghostcraft.game.ghosthunt.anti_camp.vex", "ghostcraft.game.ghosthunt.anti_camp.vex.new"],Health:2,Team:"ghostcraft.game.ghosthunt.ghost",ticks_since_last_hurt_by_mob:0,last_hurt_by_player_memory_time:100}
summon vex ~ ~2 ~-1 {attributes:[{base:1.4,id:"movement_speed"}],Tags:["ghostcraft.game.ghosthunt.anti_camp.vex", "ghostcraft.game.ghosthunt.anti_camp.vex.new"],Health:2,Team:"ghostcraft.game.ghosthunt.ghost",ticks_since_last_hurt_by_mob:0,last_hurt_by_player_memory_time:100}

# Save lifetime of vex
scoreboard players operation @e[type=vex,tag=ghostcraft.game.ghosthunt.anti_camp.vex.new] ghostcraft.game.ghosthunt.anti_camp.lifetime = game.ghosthunt.anti_camp.vex.lifetime ghostcraft.config

# Save  some hurt-based data
execute as @e[type=vex,tag=ghostcraft.game.ghosthunt.anti_camp.vex.new] at @s run data modify entity @s last_hurt_by_player set from entity @e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.anti_camp.current,limit=1] UUID

# Clear all my tail markers
execute as @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.player_marker] if score @s ghostcraft.uuid = @e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.anti_camp.current,limit=1,sort=nearest] ghostcraft.uuid run kill @s

# Clean up tags
tag @e[type=vex,tag=ghostcraft.game.ghosthunt.anti_camp.vex.new] remove ghostcraft.game.ghosthunt.anti_camp.vex.new
tag @s remove ghostcraft.game.ghosthunt.anti_camp.current



