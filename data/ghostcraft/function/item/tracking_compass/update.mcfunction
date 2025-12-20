
tag @e[type=#ghostcraft:player,tag=ghostcraft.ghost,limit=1,sort=nearest] add ghostcraft.item.tracking_compass.target

summon armor_stand ~ ~ ~ {equipment:{},Tags:["ghostcraft.item.tracking_compass.compass_placeholder"],ShowArms:1b}
item replace entity @e[tag=ghostcraft.item.tracking_compass.compass_placeholder,limit=1] weapon.mainhand from entity @s weapon.mainhand
data modify entity @e[tag=ghostcraft.item.tracking_compass.compass_placeholder,limit=1] equipment.mainhand.components."lodestone_tracker" set value {"tracked":false,target:{dimension:"ghostcraft:empty",pos:[I; 0, 0, 0 ]}}

data modify entity @e[tag=ghostcraft.item.tracking_compass.compass_placeholder,limit=1] equipment.mainhand.components."lodestone_tracker".target.dimension set from storage ghostcraft:data dimension

data modify entity @e[tag=ghostcraft.item.tracking_compass.compass_placeholder,limit=1] equipment.mainhand.components."lodestone_tracker".target.pos[0] set from entity @e[tag=ghostcraft.item.tracking_compass.target,limit=1] Pos[0]
data modify entity @e[tag=ghostcraft.item.tracking_compass.compass_placeholder,limit=1] equipment.mainhand.components."lodestone_tracker".target.pos[1] set from entity @e[tag=ghostcraft.item.tracking_compass.target,limit=1] Pos[1]
data modify entity @e[tag=ghostcraft.item.tracking_compass.compass_placeholder,limit=1] equipment.mainhand.components."lodestone_tracker".target.pos[2] set from entity @e[tag=ghostcraft.item.tracking_compass.target,limit=1] Pos[2]

execute if data entity @s SelectedItem{id:"compass"} run item replace entity @s weapon.mainhand from entity @e[tag=ghostcraft.item.tracking_compass.compass_placeholder,limit=1] weapon.mainhand

kill @e[tag=ghostcraft.item.tracking_compass.compass_placeholder]
tag @e[tag=ghostcraft.item.tracking_compass.target,limit=1] remove ghostcraft.item.tracking_compass.target
