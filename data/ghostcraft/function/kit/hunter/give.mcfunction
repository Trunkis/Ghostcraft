
loot give @s loot ghostcraft:kit/hunter/sword

loot give @s loot ghostcraft:kit/hunter/compass

# kit.hunter.flare_count ghostcraft.config
loot give @s loot ghostcraft:kit/hunter/flare

# kit.hunter.trap.count ghostcraft.config
setblock 0 0 0 chest{} strict
loot insert 0 0 0 loot ghostcraft:item/trap/item
execute store result block 0 0 0 Items[0].components."minecraft:max_damage" int 1 run scoreboard players get kit.hunter.trap.count ghostcraft.config

item replace entity @s hotbar.3 from block 0 0 0 container.0

item replace entity @s armor.head with diamond_helmet[unbreakable={},dyed_color=1908001,tooltip_display={hidden_components:["enchantments","dyed_color","enchantment_glint_override","unbreakable"]},enchantment_glint_override=false,enchantments={"binding_curse":1,"vanishing_curse":1}]
item replace entity @s armor.feet with golden_boots[unbreakable={},dyed_color=1908001,tooltip_display={hidden_components:["enchantments","dyed_color","enchantment_glint_override","unbreakable"]},enchantment_glint_override=false,enchantments={"binding_curse":1,"vanishing_curse":1,"projectile_protection":6},attribute_modifiers=[{"id":"ghostcraft.kit.hunter.boots.armor",amount:3.0d,slot:"feet",type:"armor",operation:"add_value"},{"id":"ghostcraft.kit.hunter.boots.armor_toughness",amount:1.0d,slot:"feet",type:"armor_toughness",operation:"add_value"}]]

tag @s add ghostcraft.ability.tracking
