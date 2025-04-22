$execute as @n[nbt={UUID:$(UUID)}] run tag @s add kio.delete
function keep_inventory_orbs:utils/clearcompass with entity @n[tag=kio.delete] data 

execute as @e[tag=kio.delete] run say hi

kill @n[tag=kio.delete,tag=!kio.orb]
execute as @n[tag=kio.delete] at @s run kill @e[tag=kio.orb,tag=!kio.markerorb,sort=nearest,limit=2]
execute at @n[tag=kio.delete] run playsound minecraft:block.glass.break block @a[distance=..8] ~ ~ ~ 1 0.8
tag @n[tag=kio.delete] remove kio.markerorb
tag @n[tag=kio.delete] remove kio.orb
tag @n[tag=kio.delete] add kio.stats

function keep_inventory_orbs:menu/menu
execute if entity @n[tag=kio.delete] run tellraw @s [{"text":"-> ","bold":true},{"text":"DESTROYED","bold":true,"color":"dark_red"},{"text":" ORB","color":"red"}]
execute unless entity @n[tag=kio.delete] run tellraw @s [{"text":"-> ","bold":true},{"text":"DELETED","bold":true,"color":"dark_red"},{"text":" STATS","color":"red"}]

tag @n[tag=kio.delete] remove kio.delete