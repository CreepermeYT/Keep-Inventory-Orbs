execute store result storage keep_inventory_orbs:orbs temp.x int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[0]
execute store result storage keep_inventory_orbs:orbs temp.y int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[1]
execute store result storage keep_inventory_orbs:orbs temp.z int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[2]
data modify storage keep_inventory_orbs:orbs temp.UUID set from entity @s UUID

data modify storage keep_inventory_orbs:orbs forceloads append from storage keep_inventory_orbs:orbs temp

function keep_inventory_orbs:utils/tempforceload with storage keep_inventory_orbs:orbs temp