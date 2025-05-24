gamerule keepInventory true
scoreboard objectives add kio.newDeath deathCount
execute unless score s kio.newDeath matches 0.. run scoreboard players set s kio.newDeath 0
function keep_inventory_orbs:utils/versioncheck