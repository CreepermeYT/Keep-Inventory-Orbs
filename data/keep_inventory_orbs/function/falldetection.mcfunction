execute as @e[tag=kio.savedinv,tag=!kio.falling] at @s if block ~ ~-1 ~ #minecraft:air run tag @s add kio.startfalling
execute as @e[tag=kio.savedinv,tag=!kio.falling] at @s if block ~ ~-1 ~ minecraft:water run tag @s add kio.startfalling
execute at @e[tag=kio.startfalling] run setblock ~ ~ ~ air
execute at @e[tag=kio.startfalling] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:glass"},Tags:["kio.fallagent"],DropItem:0b}
tag @e[tag=kio.startfalling] add kio.falling
tag @e[tag=kio.startfalling] remove kio.startfalling
execute as @e[tag=kio.falling] at @s unless entity @n[tag=kio.fallagent,dy=-32] run tag @s add kio.stopfalling
execute as @e[tag=kio.stopfalling] at @s align xyz run tp @s ~.5 ~ ~.5
execute as @e[tag=kio.stopfalling] at @s run setblock ~ ~ ~ air destroy
execute as @e[tag=kio.stopfalling] at @s run function keep_inventory_orbs:utils/go_up
execute as @e[tag=kio.stopfalling] at @s run tag @s remove kio.falling
tag @e[tag=kio.stopfalling] remove kio.stopfalling
execute as @e[tag=kio.falling] at @s run tp @s @n[tag=kio.fallagent,dy=-32]