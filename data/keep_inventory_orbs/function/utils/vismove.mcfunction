execute at @s positioned ~ ~-1.6 ~ unless entity @n[tag=kio.stats,distance=..16] unless entity @n[tag=kio.vm,distance=..2] run tag @s remove kio.guide
execute unless entity @s[tag=kio.guide] run kill @s
execute unless entity @s[tag=kio.guide] run return 0
execute at @s anchored eyes positioned ^ ^ ^ run particle minecraft:electric_spark
execute at @s facing entity @n[tag=kio.stats] eyes run tp @s ^ ^ ^.5
execute at @s unless entity @n[tag=kio.stats,distance=...5] run function keep_inventory_orbs:utils/vismove
kill @s
