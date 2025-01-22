execute unless entity @n[tag=kio.stats] run return 0
execute at @e[tag=kio.stats,distance=..16] run particle minecraft:raid_omen ~ ~ ~ 0 0 0 0 1 normal
execute anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {CustomName:'kio.guide',Tags:["kio.guide"]}
tag @s add kio.vm
execute as @n[tag=kio.guide] run function keep_inventory_orbs:utils/vismove
tag @s remove kio.vm
