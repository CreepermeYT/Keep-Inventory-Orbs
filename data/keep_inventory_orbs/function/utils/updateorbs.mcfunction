setblock ~ ~ ~ air
function keep_inventory_orbs:utils/summon
data modify entity @n[tag=kio.nodata] data set from entity @s data
kill @s