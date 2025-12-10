# 1 -> execute if score @s kio.menus matches 1 run function keep_inventory_orbs:menu/getmynearest

execute if score @s kio.menus matches 1 run function keep_inventory_orbs:menu/getmynearest
execute if score @s kio.menus matches 2 run function keep_inventory_orbs:menu/getallmine
execute if score @s kio.menus matches 3 run function keep_inventory_orbs:menu/togglestealing
execute if score @s kio.menus matches 4 run function keep_inventory_orbs:menu/getstats
execute if score @s kio.menus matches 5 run function keep_inventory_orbs:menu/togglevisible
execute if score @s kio.menus matches 6 run function keep_inventory_orbs:menu/clearallstats
execute if score @s kio.menus matches 8 run function keep_inventory_orbs:menu/togglecompass

execute if score @s kio.menus matches 7 run function keep_inventory_orbs:.menu


scoreboard players reset @s kio.menus
scoreboard players enable @s kio.menus