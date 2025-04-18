execute if entity @s[tag=kio.visible] run tag @s add kio.removev
tag @s add kio.visible
execute if entity @s[tag=kio.removev] run tag @s remove kio.visible

function keep_inventory_orbs:menu/menu
execute unless entity @s[tag=kio.removev] run tellraw @s [{"text":"-> ","bold":true},{"text":"ENABLED","color":"green"}," VISIBLE STATS"]
execute if entity @s[tag=kio.removev] run tellraw @s [{"text":"-> ","bold":true},{"text":"DISABLED","color":"red"}," VISIBLE STATS"]


tag @s remove kio.removev

