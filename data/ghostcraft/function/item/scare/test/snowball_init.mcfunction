function ghostcraft:item/global/store_item
execute if items block 0 0 0 container.0 *[custom_data~{ghostcraft:{type:scare}}] at @s run function ghostcraft:item/scare/snowball_init