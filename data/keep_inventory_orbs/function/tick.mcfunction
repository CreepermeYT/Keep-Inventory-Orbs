## detect deaths and save inv
execute as @a[scores={kio.newDeath=1..}] run function keep_inventory_orbs:newdeath

## fall detection
function keep_inventory_orbs:falldetection

## if it is broken
execute as @e[tag=kio.savedinv,tag=!kio.falling] at @s unless block ~ ~ ~ glass run function keep_inventory_orbs:broken with entity @s data

## particles
execute at @e[tag=kio.savedinv] run particle minecraft:sculk_soul ~ ~.2 ~ 0.1 0 0.1 0 1 normal
execute at @e[tag=kio.savedinv] run particle minecraft:soul_fire_flame ~ ~.15 ~ 0.15 0 0.15 0 1 normal

## visible particles
execute as @a[tag=kio.visible] at @s run function keep_inventory_orbs:visible