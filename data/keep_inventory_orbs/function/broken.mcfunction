tag @s add kio.broken
# avoid piston glass dupe
function keep_inventory_orbs:utils/checkglass
execute positioned ~ ~.5 ~ run kill @e[type=item,distance=...5]

$execute as @e[type=player,distance=..5.5,name=$(name)] at @s run function keep_inventory_orbs:simple/getinv
execute unless entity @s[tag=kio.savedinv] run tag @s remove kio.broken
execute unless entity @s[tag=kio.savedinv] run return 1

#if player not found
setblock ~ ~ ~ glass destroy
tag @s remove kio.broken