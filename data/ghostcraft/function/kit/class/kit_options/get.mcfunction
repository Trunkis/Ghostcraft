#
#   Get Kit Options
#   
#   Purpose: To provide a stick that has all the class dialog functions listed in it
#
#   Input: None
#

data modify storage ghostcraft:data kit_options set value []

function #ghostcraft:kit/option_insert

item replace entity @s hotbar.0 with stick[\
    lore=[{color:"gray",italic:true,text:"Right click to change your class"}],\
    item_model="diamond_sword",\
    custom_name={text:"Change Class",italic:false},\
    food={"can_always_eat":true,nutrition:0,saturation:0},\
    consumable={"animation":"block",consume_seconds:1000000,has_consume_particles:false},\
    custom_data={ghostcraft:{is_kit_option:true,kit_options:[]}}\
]

item modify entity @s hotbar.0 ghostcraft:game/lobby/replace_kit_options
