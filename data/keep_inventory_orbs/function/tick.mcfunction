## detect deaths and save inv
execute as @a[scores={kio.newDeath=1..}] run function keep_inventory_orbs:utils/newdeath

## fall detection
function keep_inventory_orbs:utils/falldetection

## particles
execute at @e[tag=kio.interactionorb] run particle minecraft:sculk_soul ~ ~.2 ~ 0.1 0 0.1 0 1 normal
execute at @e[tag=kio.interactionorb] run particle minecraft:soul_fire_flame ~ ~.15 ~ 0.15 0 0.15 0 1 normal

## visible particles
execute as @a[tag=kio.visible] at @s run function keep_inventory_orbs:utils/visible