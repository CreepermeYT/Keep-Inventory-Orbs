scoreboard players reset v kio.newDeath
summon armor_stand ~ -128 ~ {Tags:['cmyt.versioncheck'],HandItems:[{id:"minecraft:dirt"}],equipment:{mainhand:{id:"minecraft:dirt"}}}
execute if data entity @n[tag=cmyt.versioncheck] HandItems[0] run scoreboard players set v kio.newDeath 1210
execute if data entity @n[tag=cmyt.versioncheck] equipment.mainhand run scoreboard players set v kio.newDeath 1215
kill @e[tag=cmyt.versioncheck]
summon cow ~ -128 ~ {Tags:['cmyt.versioncheck'],home_radius:0}
execute if data entity @n[tag=cmyt.versioncheck] home_radius run scoreboard players set v kio.newDeath 1216
kill @e[tag=cmyt.versioncheck]