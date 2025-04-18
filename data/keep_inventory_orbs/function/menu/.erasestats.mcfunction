$execute as @e[nbt={UUID:$(UUID)}] if entity @s[tag=kio.orb] run kill @e[tag=kio.orb,sort=nearest,limit=3]
$kill @e[nbt={UUID:$(UUID)}]
function keep_inventory_orbs:menu/.menu
tellraw @s [{"text":"-> ","bold":true},{"text":"DELETED","bold":true,"color":"dark_red"},{"text":" STATS","color":"red"}]