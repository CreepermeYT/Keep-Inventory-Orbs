tag @n[tag=kio.markerorb] add kio.broken
execute at @s positioned ~ ~ ~ run function keep_inventory_orbs:basic/getinv
tag @n[tag=kio.markerorb] remove kio.broken

function keep_inventory_orbs:menu/menu
tellraw @s [{"text":"-> ","bold":true},{"text":"COLLECTED","bold":true,"color":"gold"},{"text":" ORB","color":"aqua"}]