##Add tag to nearest survivor
execute at @n[type=#ghostcraft:player,tag=ghostcraft.survivor] summon marker run function ghostcraft:item/tracking_compass/get_pos

##Item data
#Tracker data
data modify storage ghostcraft:data tracking_compass_data set value {tracked:false,target:{dimension:"ghostcraft:empty",pos:[I;0,0,0]}}
data modify storage ghostcraft:data tracking_compass_data.target.dimension set from storage ghostcraft:data dimension
data modify storage ghostcraft:data tracking_compass_data.target.pos set from storage ghostcraft:data pos
#Current data
function ghostcraft:item/get_data
data modify block 0 0 0 Items[0].components."minecraft:lodestone_tracker" set from storage ghostcraft:data tracking_compass_data

##Apply
execute if items entity @s weapon.mainhand compass run item replace entity @s weapon.mainhand from block 0 0 0 container.0