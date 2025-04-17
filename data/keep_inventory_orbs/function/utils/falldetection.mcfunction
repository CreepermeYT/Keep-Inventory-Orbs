## falling

# start falling
execute as @e[tag=kio.interactionorb,tag=!kio.falling,tag=!kio.rising] at @s if block ~ ~-1 ~ #minecraft:air positioned ~ ~-1 ~ unless entity @n[tag=kio.interactionorb,tag=!kio.falling,distance=...5] run tag @s add kio.startfalling
execute at @e[tag=kio.startfalling] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:glass"},Tags:["kio.fallagent"],DropItem:0b}
execute at @e[tag=kio.startfalling] run data modify entity @n[tag=kio.displayorb] transformation.translation set value [-0.5f,-319f,-0.5f]
tag @e[tag=kio.startfalling] add kio.falling
tag @e[tag=kio.startfalling] remove kio.startfalling

# fall_agent collision with existing orbs
execute as @e[tag=kio.fallagent] at @s unless function keep_inventory_orbs:utils/validair run kill @s
execute as @e[tag=kio.falling] at @s at @n[tag=kio.fallagent,dy=-32] unless function keep_inventory_orbs:utils/isalone run tag @s add kio.stopfalling
execute as @e[tag=kio.stopfalling] at @s run kill @n[tag=kio.fallagent,dy=-32]
execute as @e[tag=kio.stopfalling] at @s run tag @s add kio.rising

# stop falling
execute as @e[tag=kio.falling] at @s unless entity @n[tag=kio.fallagent,dy=-32] run tag @s add kio.stopfalling
execute as @e[tag=kio.stopfalling] at @s align xyz run tp @s ~.5 ~ ~.5
execute as @e[tag=kio.stopfalling] at @s run setblock ~ ~ ~ air destroy
execute as @e[tag=kio.stopfalling] at @s run function keep_inventory_orbs:utils/broken with entity @s Passengers[0].Passengers[0].data
execute at @e[tag=kio.stopfalling] run data modify entity @n[tag=kio.displayorb] transformation.translation set value [-0.5f,0.0f,-0.5f]
tag @e[tag=kio.stopfalling] remove kio.falling
tag @e[tag=kio.stopfalling] remove kio.stopfalling

execute as @e[tag=kio.falling] at @s run tp @s @n[tag=kio.fallagent,dy=-32]


## rising

# rise if collision with existing orbs or inside a block
execute as @e[tag=kio.interactionorb,tag=!kio.falling,tag=!kio.rising] at @s unless block ~ ~ ~ #air run tag @s add kio.rising
execute as @e[tag=kio.interactionorb,tag=!kio.falling,tag=!kio.rising] at @s unless function keep_inventory_orbs:utils/isalone run tag @n[tag=kio.interactionorb] add kio.rising
execute as @e[tag=kio.rising] at @s run tp @s ~ ~0.1 ~
execute as @e[tag=kio.rising] at @s if block ~ ~ ~ #air if function keep_inventory_orbs:utils/isalone run tag @s add kio.stoprising
execute as @e[tag=kio.stoprising] at @s positioned ~ ~.1 ~ align xyz run tp @s ~.5 ~ ~.5
tag @e[tag=kio.stoprising] remove kio.rising
tag @e[tag=kio.stoprising] remove kio.stoprising