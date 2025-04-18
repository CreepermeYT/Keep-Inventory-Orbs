scoreboard players set t1 kio.newDeath 0
execute store result score t1 kio.newDeath run execute if entity @e[tag=kio.stats]


#clear pre-beta stats
execute in minecraft:the_end run kill @e[tag=bki.store]
execute in minecraft:the_nether run kill @e[tag=bki.store]
execute in minecraft:overworld run kill @e[tag=bki.store]

#clear beta stats
execute in minecraft:the_end run kill @e[tag=kio.store]
execute in minecraft:the_nether run kill @e[tag=kio.store]
execute in minecraft:overworld run kill @e[tag=kio.store]

#clear stats
execute in minecraft:the_nether run kill @e[tag=kio.stats]
execute in minecraft:the_end run kill @e[tag=kio.stats]
execute in minecraft:overworld run kill @e[tag=kio.stats]

function keep_inventory_orbs:menu/menu
tellraw @s [{"text":"-> ","bold":true},{"text":"DELETED ","bold":true,"color":"dark_red"},{"color":"red","score":{"name":"t1","objective":"kio.newDeath"}},{"text":" STATS","color":"red"}]
scoreboard players reset t1 kio.newDeath