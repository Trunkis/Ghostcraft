function ghostcraft:item/global/store_item
execute if items block 0 0 0 container.0 *[custom_data~{ghostcraft:{type:poison_grenade}}] at @s run function ghostcraft:item/poison_grenade/snowball_init