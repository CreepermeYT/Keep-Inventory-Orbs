$execute unless data entity @n[tag=kio.broken] data.Inventory[{Slot:$(slot)b}] run return 0

$data modify entity @n[tag=kio.broken_helper] HandItems[0] set from entity @n[tag=kio.broken] data.Inventory[{Slot:$(slot)b}]


execute unless data entity @n[tag=kio.broken_helper] HandItems[{components:{"minecraft:custom_data":{kioclear:1}}}] run tag @s add kio.notacompass
execute if entity @s[tag=!kio.notacompass] run function keep_inventory_orbs:utils/checkcompass with entity @n[tag=kio.broken_helper] HandItems[0].components."minecraft:custom_data"
execute if entity @s[tag=!kio.notacompass,tag=!kio.validcompass] run return 0
tag @s remove kio.notacompass
tag @s remove kio.validcompass

$execute if entity @s[nbt={Inventory:[{Slot:$(slot)b}]}] run tag @s add kio.fitem
execute if entity @s[tag=kio.fitem] run summon minecraft:item ~ ~ ~ {Tags:["kio.item"],Item:{id:netherrack},PickupDelay:2s}
execute if entity @s[tag=kio.fitem] run item replace entity @n[tag=kio.item] contents from entity @n[tag=kio.broken_helper] weapon.mainhand
execute if entity @s[tag=kio.fitem] run tag @n[tag=kio.item] remove kio.item

$execute unless entity @s[tag=kio.fitem] run item replace entity @s $(place).$(rslot) from entity @n[tag=kio.broken_helper] weapon.mainhand

tag @s remove kio.fitem