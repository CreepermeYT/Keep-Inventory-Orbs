advancement revoke @s only keep_inventory_orbs:new_dimension
execute at @s run gamerule keepInventory true
execute at @s run scoreboard objectives add kio.newDeath deathCount
execute at @s run scoreboard objectives add kio.menus trigger
execute at @s unless score s kio.newDeath matches 0.. run scoreboard players set s kio.newDeath 0
execute at @s unless score c kio.newDeath matches 0.. run scoreboard players set c kio.newDeath 1
