tag @s add kio.requester
execute as @e[tag=kio.interactionorb,sort=nearest] at @s run function keep_inventory_orbs:utils/requestingme with entity @s Passengers[0].Passengers[0].data

function keep_inventory_orbs:menu/menu
execute if entity @s[tag=!kio.all,tag=!kio.completedrequest] run tellraw @s [{"text":"-> ","bold":true},{"text":"COULD NOT","color":"red"},{"text":" FIND ","color":"gold"},"YOUR ",{"text":"ORB","color":"aqua"}]
execute if entity @s[tag=!kio.all,tag=kio.completedrequest] run tellraw @s [{"text":"-> ","bold":true},{"text":"COLLECTED","color":"gold"}," YOUR ",{"text":"ORB","color":"aqua"}]
execute if entity @s[tag=kio.all] run tellraw @s [{"text":"-> ","bold":true},{"text":"COLLECTED","color":"gold"}," ALL YOUR ",{"text":"ORBS","color":"aqua"}]

tag @s remove kio.completedrequest
tag @s remove kio.requester