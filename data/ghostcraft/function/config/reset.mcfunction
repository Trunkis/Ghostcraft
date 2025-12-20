

scoreboard players set is_server ghostcraft.config 0

scoreboard players set required_players ghostcraft.config 2

scoreboard players set map.change_cooldown ghostcraft.config 2

bossbar add ghostcraft.game.time [{"text":"Time Left"}]
bossbar set ghostcraft.game.time style notched_20
bossbar set ghostcraft.game.time visible false

function #ghostcraft:config/reset

