execute if block ~ ~ ~ #minecraft:air run return 1
execute if block ~ ~ ~ minecraft:water run return 1
tp @s ~ ~1 ~
return run execute at @s run function keep_inventory_orbs:utils/go_up