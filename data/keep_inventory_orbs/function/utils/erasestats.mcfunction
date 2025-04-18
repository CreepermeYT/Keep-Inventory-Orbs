$execute as @n[nbt={UUID:$(UUID)}] run tag @s add kio.delete
function keep_inventory_orbs:utils/clearcompass with entity @n[tag=kio.delete] data 
execute as @n[tag=kio.delete] if entity @s[tag=kio.orb] at @s run kill @e[tag=kio.orb,sort=nearest,limit=3]
kill @n[tag=kio.delete]

function keep_inventory_orbs:menu/menu
tellraw @s [{"text":"-> ","bold":true},{"text":"DELETED","bold":true,"color":"dark_red"},{"text":" STATS","color":"red"}]