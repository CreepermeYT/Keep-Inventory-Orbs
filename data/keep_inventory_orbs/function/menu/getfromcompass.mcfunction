execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{kioclear:1}}}}] run tag @s add kio.continue

execute if entity @s[tag=kio.me] if entity @s[tag=!kio.continue] run function keep_inventory_orbs:menu/menu
execute if entity @s[tag=!kio.continue] run tellraw @s [{"text":"-> ","bold":true},{"text":"PLEASE","color":"gold"}," HOLD",{"text":" A ","color":"aqua"},{"text":"RECOVERY COMPASS","color":"dark_purple"}]

execute if entity @s[tag=kio.continue] store result storage keep_inventory_orbs:orbs temp.x int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[0]
execute if entity @s[tag=kio.continue] store result storage keep_inventory_orbs:orbs temp.y int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[1]
execute if entity @s[tag=kio.continue] store result storage keep_inventory_orbs:orbs temp.z int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[2]
execute if entity @s[tag=kio.continue] run data modify storage keep_inventory_orbs:orbs temp.UUID set from entity @s UUID

execute if entity @s[tag=kio.continue] run data modify storage keep_inventory_orbs:orbs forceloads append from storage keep_inventory_orbs:orbs temp

execute if entity @s[tag=kio.continue] run function keep_inventory_orbs:utils/tempforceload with storage keep_inventory_orbs:orbs temp

execute if entity @s[tag=kio.continue] run data remove storage keep_inventory_orbs:orbs temp
tag @s remove kio.continue