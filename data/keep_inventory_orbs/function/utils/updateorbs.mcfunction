setblock ~ ~ ~ air
function keep_inventory_orbs:utils/summon
data modify entity @n[tag=kio.nodata] data set from entity @s data
data modify entity @n[tag=kio.nodata] data.MYUUID set from entity @n[tag=kio.nodata] UUID
execute as @n[tag=kio.nodata] run function keep_inventory_orbs:utils/setorbname with entity @n[tag=kio.nodata] data
tag @n[tag=kio.nodata] remove kio.nodata
kill @s