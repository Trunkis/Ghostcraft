#
#   Ghost Timer
#   
#   Purpose: To run timer/cycle related logic on the ghost
#
#   Input: None
#


# Particle effects
function #ghostcraft:game/ghost/effect

# Warning message if the ghost has glowing
execute if data entity @s active_effects[{id:"glowing"}] run title @s actionbar [{"text":"","obfuscated":false},{"text":"__","obfuscated":true},{"text":"  "}, {"text":"You are glowing!",italic:true,color:"red"},{"text":"  "},{"text":"__","obfuscated":true}]
title @s title ''

