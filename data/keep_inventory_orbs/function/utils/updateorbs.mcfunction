setblock ~ ~ ~ air
function keep_inventory_orbs:utils/summon
data modify entity @n[tag=kio.nodata] data set from entity @s data
execute as @n[tag=kio.nodata] run function keep_inventory_orbs:utils/setorbname with entity @n[tag=kio.nodata] data
kill @s