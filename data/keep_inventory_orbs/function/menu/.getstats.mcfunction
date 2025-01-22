tag @s add kio.getstats
execute anchored eyes positioned ^ ^ ^1 as @n[tag=kio.stats] run function keep_inventory_orbs:utils/tellraw_stats with entity @s data
execute unless entity @n[tag=kio.stats] run function keep_inventory_orbs:menu/.menu
execute unless entity @n[tag=kio.stats] run tellraw @s [{"text":"-> ","bold":true},{"text":"COULD NOT","color":"red"},{"text":" FIND ","color":"gold"},"STATS"]
tag @s remove kio.getstats