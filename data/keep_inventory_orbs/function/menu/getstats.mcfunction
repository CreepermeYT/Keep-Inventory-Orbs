tag @s add kio.getstats
execute anchored eyes positioned ^ ^ ^1 as @n[tag=kio.data] run function keep_inventory_orbs:menu/tellraw_stats
execute unless entity @n[tag=kio.data] run function keep_inventory_orbs:menu/menu
execute unless entity @n[tag=kio.data] run tellraw @s [{"text":"-> ","bold":true},{"text":"COULD NOT","color":"red"},{"text":" FIND ","color":"gold"},"STATS"]
tag @s remove kio.getstats