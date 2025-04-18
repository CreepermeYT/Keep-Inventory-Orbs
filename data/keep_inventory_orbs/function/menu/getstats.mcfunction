tag @s add kio.getstats
execute if score v kio.newDeath matches 1210 anchored eyes positioned ^ ^ ^1 as @n[tag=kio.data] run function keep_inventory_orbs:utils/1.21/tellraw_stats with entity @s data
execute if score v kio.newDeath matches 1215.. anchored eyes positioned ^ ^ ^1 as @n[tag=kio.data] run function keep_inventory_orbs:utils/1.21.5/tellraw_stats with entity @s data
execute unless entity @n[tag=kio.data] run function keep_inventory_orbs:menu/menu
execute unless entity @n[tag=kio.data] run tellraw @s [{"text":"-> ","bold":true},{"text":"COULD NOT","color":"red"},{"text":" FIND ","color":"gold"},"STATS"]
tag @s remove kio.getstats