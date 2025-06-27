scoreboard players reset v kio.newDeath
summon armor_stand ~ ~ ~ {Tags:['kio.versioncheck'],HandItems:[{id:"minecraft:dirt"}],equipment:{mainhand:{id:"minecraft:dirt"}}}
execute if data entity @n[tag=kio.versioncheck] HandItems[0] run scoreboard players set v kio.newDeath 1210
execute if data entity @n[tag=kio.versioncheck] equipment.mainhand run scoreboard players set v kio.newDeath 1215
kill @e[tag=kio.versioncheck]
summon cow ~ ~ ~ {Tags:['kio.versioncheck'],home_radius:0}
execute if data entity @n[tag=kio.versioncheck] home_radius run scoreboard players set v kio.newDeath 1216
kill @e[tag=kio.versioncheck]