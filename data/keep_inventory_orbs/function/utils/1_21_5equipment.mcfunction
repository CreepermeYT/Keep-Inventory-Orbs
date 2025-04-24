data remove entity @n[tag=kio.nodata] data.temp
data modify entity @n[tag=kio.nodata] data.temp set from entity @s equipment.offhand
data merge entity @n[tag=kio.nodata] {data:{temp:{Slot:-106b}}}
execute if data entity @n[tag=kio.nodata] data.temp.id run data modify entity @n[tag=kio.nodata] data.Inventory append from entity @n[tag=kio.nodata] data.temp

data remove entity @n[tag=kio.nodata] data.temp
data modify entity @n[tag=kio.nodata] data.temp set from entity @s equipment.feet
data merge entity @n[tag=kio.nodata] {data:{temp:{Slot:100b}}}
execute if data entity @n[tag=kio.nodata] data.temp.id run data modify entity @n[tag=kio.nodata] data.Inventory append from entity @n[tag=kio.nodata] data.temp

data remove entity @n[tag=kio.nodata] data.temp
data modify entity @n[tag=kio.nodata] data.temp set from entity @s equipment.legs
data merge entity @n[tag=kio.nodata] {data:{temp:{Slot:101b}}}
execute if data entity @n[tag=kio.nodata] data.temp.id run data modify entity @n[tag=kio.nodata] data.Inventory append from entity @n[tag=kio.nodata] data.temp

data remove entity @n[tag=kio.nodata] data.temp
data modify entity @n[tag=kio.nodata] data.temp set from entity @s equipment.chest
data merge entity @n[tag=kio.nodata] {data:{temp:{Slot:102b}}}
execute if data entity @n[tag=kio.nodata] data.temp.id run data modify entity @n[tag=kio.nodata] data.Inventory append from entity @n[tag=kio.nodata] data.temp

data remove entity @n[tag=kio.nodata] data.temp
data modify entity @n[tag=kio.nodata] data.temp set from entity @s equipment.head
data merge entity @n[tag=kio.nodata] {data:{temp:{Slot:103b}}}
execute if data entity @n[tag=kio.nodata] data.temp.id run data modify entity @n[tag=kio.nodata] data.Inventory append from entity @n[tag=kio.nodata] data.temp

data remove entity @n[tag=kio.nodata] data.temp