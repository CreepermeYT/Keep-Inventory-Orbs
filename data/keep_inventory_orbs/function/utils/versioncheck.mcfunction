scoreboard players reset v kio.newDeath
summon armor_stand ~ ~ ~ {Tags:['kio.versioncheck'],HandItems:[{id:"minecraft:dirt"}],equipment:{mainhand:{id:"minecraft:dirt"}}}
execute if data entity @n[tag=kio.versioncheck] HandItems[0] run scoreboard players set v kio.newDeath 1210
execute if data entity @n[tag=kio.versioncheck] equipment.mainhand run scoreboard players set v kio.newDeath 1215
kill @e[tag=kio.versioncheck]
#execute unless function keep_inventory_orbs:menu/1.21/menu run scoreboard players set v kio.newDeath 1210
#execute unless function keep_inventory_orbs:menu/1.21.5/menu run scoreboard players set v kio.newDeath 1215