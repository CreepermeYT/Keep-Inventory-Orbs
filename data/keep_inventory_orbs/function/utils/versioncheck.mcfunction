scoreboard players reset v dynbclevel
summon armor_stand ~ ~ ~ {Tags:['cmyt.versioncheck'],HandItems:[{id:"minecraft:dirt"}],equipment:{mainhand:{id:"minecraft:dirt"}}}
execute if data entity @n[tag=cmyt.versioncheck] HandItems[0] run scoreboard players set v dynbclevel -1210
execute if data entity @n[tag=cmyt.versioncheck] equipment.mainhand run scoreboard players set v dynbclevel -1215
tp @e[tag=cmyt.versioncheck] ~ -128 ~
kill @e[tag=cmyt.versioncheck]
summon cow ~ ~ ~ {Tags:['cmyt.versioncheck'],home_radius:0}
execute if data entity @n[tag=cmyt.versioncheck] home_radius run scoreboard players set v dynbclevel -1216
tp @e[tag=cmyt.versioncheck] ~ -128 ~
kill @e[tag=cmyt.versioncheck]