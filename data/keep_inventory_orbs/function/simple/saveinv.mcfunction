execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kio.savedinv","kio.saving"],CustomName:'"kio:savedinventory"'}
execute as @n[tag=kio.saving] at @s unless function keep_inventory_orbs:utils/go_up run kill @s
execute unless entity @n[tag=kio.saving] run return 0
execute at @n[tag=kio.saving] run setblock ~ ~ ~ glass
execute at @n[tag=kio.saving] run function keep_inventory_orbs:utils/breakglass
data modify entity @n[tag=kio.saving] data.UUID set from entity @s UUID 
data modify entity @n[tag=kio.saving] data.MYUUID set from entity @n[tag=kio.saving] UUID 
data modify entity @n[tag=kio.saving] data.Inventory set from entity @s Inventory
data modify entity @n[tag=kio.saving] data.XpLevel set from entity @s XpLevel
data modify entity @n[tag=kio.saving] data.Pos set from entity @n[tag=kio.saving] Pos
data modify entity @n[tag=kio.saving] data.Dimension set from entity @s Dimension
execute store result entity @n[tag=kio.saving] data.day int 1 run time query day
execute store result entity @n[tag=kio.saving] data.daytime int 1 run time query daytime
execute store result entity @n[tag=kio.saving] data.XpP int 1 run xp query @s points
clear @s
loot give @s loot keep_inventory_orbs:playerhead
data modify entity @n[tag=kio.saving] data.name set from entity @s Inventory[0].components."minecraft:profile".name
clear @s
xp set @s 0 levels
xp set @s 0 points
function keep_inventory_orbs:utils/givecompass with entity @n[tag=kio.saving] data
tag @n[tag=kio.saving] remove kio.saving