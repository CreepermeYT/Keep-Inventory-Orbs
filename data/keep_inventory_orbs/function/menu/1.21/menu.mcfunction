scoreboard players set t kio.newDeath 0
execute store result score t kio.newDeath run execute if entity @e[tag=kio.stats]
tellraw @s ["",{"text":"------------------------- ","bold":true,"color":"blue"},{"text":"     -  -  -  -  -  -  -  -  -","color":"white","bold":false}]
tellraw @s [{"text":"","bold":true,"color":"dark_aqua"},"<<   ",{"text":"Keep Inventory","color":"blue"},{"text":" Orbs","color":"aqua"},"  >>  "]
tellraw @s ["",{"text":"-------------------------  ","bold":true,"color":"blue"},"   |    ",{"text":" Global Config    ","bold":true},"|"]
tellraw @s ["",{"text":"Player Actions                  ","bold":true}]
tellraw @s ["",{"text":"-------------                  ","bold":true},"    |-  -  -  -  -  -  -  -  -|"]
tellraw @s [{"text": "[ ","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/getmynearest"}},{"text":"COLLECT","color":"gold"}," MY NEAREST ",{"text":"ORB","color":"aqua"}," ]"]
#tellraw @s {"text":"                                                  -  -  -  -  -  -  -  -  -","color":"red"}
tellraw @s [{"text":" ","bold":true},{"text":"                                                |        ","bold":false},{"text":"GIVE "},{"text":"ORB   ","color":"aqua"},{"text":"     |","bold":false}]
tellraw @s ["",{"text": "[ ","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/getallmine"}},{"text":"COLLECT","color":"gold","bold":true,"clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/getallmine"}},{"text":" ALL MY ","bold":true,"clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/getallmine"}},{"text":"ORBS ","color":"aqua","bold":true,"clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/getallmine"}},{"text":"]","bold":true,"clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/getallmine"}},{"text":"              "},{"text":"RECOVERY COMPASS","color":"dark_purple","bold":true}]
tellraw @s ""
execute if score c kio.newDeath matches 0 run tellraw @s ["",{"text":"                     ","bold":true},{"text":"                       |","color":"white"},"       ",{"text":"  ","bold":true},{"text":"[ OFF ]","bold":true,"color":"gray","clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/togglecompass"}},{"text":"          |","color":"white"}]
execute if score c kio.newDeath matches 1 run tellraw @s ["",{"text":"                     ","bold":true},{"text":"                       |","color":"white"},"   ",{"text":"      ","bold":true},{"text":"[ ON ]","bold":true,"color":"white","clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/togglecompass"}},{"text":"   ","bold":true},{"text":"       |","color":"white"}]
tellraw @s {"text":"Stats Management","bold":true}
tellraw @s ["",{"text":"---------------    ","bold":true},{"text":"                  |-  -  -  -  -  -  -  -  -|","color":"red"}]
tellraw @s [{"text": "[ ","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/getstats"}},{"text":"GET","color":"gold"}," NEAREST STATS ]"]
tellraw @s [{"text":"                                 ","bold":true},{"text":"        |","color":"red","bold":false},{"text":"    ORB","color":"dark_red"},{"text":" STEALING   ","color":"red"},{"text":" |","color":"red","bold":false}]
execute if entity @s[tag=kio.visible] run tellraw @s [{"text": "[ ","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/togglevisible"}},{"text":"DISABLE","color":"red"}," VISIBLE STATS ]"]
execute unless entity @s[tag=kio.visible] run tellraw @s [{"text": "[ ","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/togglevisible"}},{"text":"ENABLE","color":"green"}," VISIBLE STATS ]"]
execute if score s kio.newDeath matches 0 run tellraw @s ["",{"text":"                     ","bold":true},{"text":"                       |","color":"red"},"       ",{"text":"  ","bold":true},{"text":"[ OFF ]","bold":true,"color":"gray","clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/togglestealing"}},{"text":"          |","color":"red"}]
execute if score s kio.newDeath matches 1 run tellraw @s ["",{"text":"                     ","bold":true},{"text":"                       |","color":"red"},"   ",{"text":"      ","bold":true},{"text":"[ ON ]","bold":true,"color":"red","clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/togglestealing"}},{"text":"   ","bold":true},{"text":"       |","color":"red"}]
tellraw @s [{"text": "[ ","color":"red","bold":true,"clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/clearallstats"}},{"text":"DELETE ALL ","color":"dark_red"},{"color":"red","score":{"name":"t","objective":"kio.newDeath"}}," STATS ]"]
tellraw @s {"text":"                                                  -  -  -  -  -  -  -  -  -","color":"red"}
tellraw @s ""

scoreboard players reset t kio.newDeath
playsound minecraft:ui.button.click master @s

scoreboard players enable @s kio.menus