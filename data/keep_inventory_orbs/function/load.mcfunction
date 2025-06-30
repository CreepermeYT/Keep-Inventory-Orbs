gamerule keepInventory true
scoreboard objectives add kio.newDeath deathCount
scoreboard objectives add kio.menus trigger
execute unless score s kio.newDeath matches 0.. run scoreboard players set s kio.newDeath 0
function keep_inventory_orbs:utils/versioncheck
tellraw @a [{"text":"-> ","bold":true},{"text":"LOADED","color":"green"},{"text":": ","color":"gray"},"","",""," <<   ",{"text":"Keep Inventory","color":"blue"},{"text":" Orbs","color":"aqua"},"  >>"]