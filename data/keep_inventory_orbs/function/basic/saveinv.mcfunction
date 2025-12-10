function keep_inventory_orbs:utils/summon
execute unless entity @n[tag=kio.nodata] run return 0
data modify entity @n[tag=kio.nodata] data.UUID set from entity @s UUID 
data modify entity @n[tag=kio.nodata] data.MYUUID set from entity @n[tag=kio.nodata] UUID 
data modify entity @n[tag=kio.nodata] data.Inventory set from entity @s Inventory
data modify entity @n[tag=kio.nodata] data.XpLevel set from entity @s XpLevel
data modify entity @n[tag=kio.nodata] data.Pos set from entity @n[tag=kio.nodata] Pos
data modify entity @n[tag=kio.nodata] data.Dimension set from entity @s Dimension
execute store result entity @n[tag=kio.nodata] data.day int 1 run time query day
execute store result entity @n[tag=kio.nodata] data.daytime int 1 run time query daytime
execute store result entity @n[tag=kio.nodata] data.XpP int 1 run xp query @s points
execute if score v kio.newDeath matches 1215.. run function keep_inventory_orbs:utils/1_21_5equipment
data modify storage keep_inventory_orbs:orbs list prepend value {UUID:0}
data modify storage keep_inventory_orbs:orbs list[0].UUID set from entity @n[tag=kio.nodata] UUID
function keep_inventory_orbs:utils/safeclear
loot give @s loot keep_inventory_orbs:playerhead
data modify entity @n[tag=kio.nodata] data.name set from entity @s Inventory[0].components."minecraft:profile".name
execute as @n[tag=kio.nodata] run function keep_inventory_orbs:utils/setorbname with entity @n[tag=kio.nodata] data
item replace entity @s hotbar.0 with air
xp set @s 0 levels
xp set @s 0 points
function keep_inventory_orbs:utils/givecompass with entity @n[tag=kio.nodata] data
execute at @s run playsound minecraft:block.respawn_anchor.deplete block @a[distance=..8] ~ ~ ~ 1 0.75
execute as @n[tag=kio.nodata] on vehicle on vehicle run function keep_inventory_orbs:utils/voidcheck
tag @n[tag=kio.nodata] remove kio.nodata