gamerule keepInventory true
scoreboard objectives add kio.newDeath deathCount
scoreboard objectives add kio.menus trigger
execute unless score s kio.newDeath matches 0.. run scoreboard players set s kio.newDeath 0
function keep_inventory_orbs:utils/versioncheck