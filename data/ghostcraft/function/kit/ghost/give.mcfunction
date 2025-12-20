
# Basic Items
loot give @s loot ghostcraft:ghost/boost
loot give @s loot ghostcraft:ghost/stab
loot give @s loot ghostcraft:ghost/scare

# Consumables
loot give @s loot ghostcraft:ghost/crafting_table
loot give @s loot ghostcraft:ghost/flashbang
loot give @s loot ghostcraft:ghost/frag_grenade
loot give @s loot ghostcraft:ghost/poison_grenade

# Infinite
loot give @s loot ghostcraft:ghost/blink
loot give @s loot ghostcraft:ghost/teleport_crystal

# Armor items
item replace entity @s armor.feet with netherite_boots\
[\
    unbreakable={},\
    tooltip_display={"hidden_components":["enchantments", "attribute_modifiers"]},\
    enchantment_glint_override=false,\
    enchantments={"binding_curse":1,"vanishing_curse":1,projectile_protection:7,"ghostcraft:ability/pounce/pounce":1,"ghostcraft:kit/ghost/suffocation_immunity":1},\
    attribute_modifiers=\
    [\
        {type:"armor",amount:0,id:"ghostcraft.kit.ghost.feet",operation:add_value},\
        {type:"armor_toughness",amount:0,id:"ghostcraft.kit.ghost.feet",operation:add_value},\
        {type:"knockback_resistance",amount:-0,id:"ghostcraft.kit.ghost.feet",operation:add_value}\
    ]]

# Add abilities
function ghostcraft:ability/feather_falling/grant
tag @s add ghostcraft.ability.pounce
tag @s add ghostcraft.ability.vampire
tag @s add ghostcraft.ability.ghost_energy
tag @s add ghostcraft.ability.ghost_compass
tag @s add ghostcraft.ability.cling

# Add effects
effect give @s invisibility infinite 0 true
effect give @s resistance infinite 0 true

# Add immunities
tag @s add ghostcraft.item.flashbang.immune
tag @s add ghostcraft.item.frag_grenade.immune
tag @s add ghostcraft.item.poison_grenade.immune
tag @s add ghostcraft.item.stab.immune

tag @s add ghostcraft.effect.ambient_ghost.invisible
tag @s add effect.ghost.hurt_effect.invisible
