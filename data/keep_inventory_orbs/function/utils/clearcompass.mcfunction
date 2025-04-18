$data remove storage keep_inventory_orbs:orbs list[{UUID:$(MYUUID)}]
$kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{UUID:$(MYUUID)}}}}]
$clear @a minecraft:compass[minecraft:custom_data={UUID:$(MYUUID),kioclear:1}]