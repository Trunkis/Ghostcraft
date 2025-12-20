
function ghostcraft:ability/feather_falling/grant

loot give @s loot ghostcraft:kit/archer/sword

loot give @s loot ghostcraft:kit/archer/bow

loot give @s loot ghostcraft:kit/archer/grappling_hook

loot give @s loot ghostcraft:kit/archer/speed_sugar

loot give @s loot ghostcraft:kit/archer/arrows

item replace entity @s armor.chest with leather_chestplate[dyed_color=13356031,unbreakable={},tooltip_display={hidden_components:["enchantments","dyed_color","enchantment_glint_override","unbreakable"]},enchantment_glint_override=false,enchantments={"binding_curse":1,"vanishing_curse":1}]
item replace entity @s armor.legs with leather_leggings[dyed_color=13356031,unbreakable={},tooltip_display={hidden_components:["enchantments","dyed_color","enchantment_glint_override","unbreakable"]},enchantment_glint_override=false,enchantments={"binding_curse":1,"vanishing_curse":1}]
item replace entity @s armor.feet with leather_boots[dyed_color=13356031,unbreakable={},tooltip_display={hidden_components:["enchantments","dyed_color","enchantment_glint_override","unbreakable"]},enchantment_glint_override=false,enchantments={"feather_falling":4,"binding_curse":1,"projectile_protection":6,"vanishing_curse":1}]
