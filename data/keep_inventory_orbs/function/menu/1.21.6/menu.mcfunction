scoreboard players set t kio.newDeath 0
execute store result score t kio.newDeath run execute if entity @e[tag=kio.stats]
tellraw @s {"text":"-------------------------","bold":true,"color":"blue"}
tellraw @s [{"text":"","bold":true,"color":"dark_aqua"},"<<   ",{"text":"Keep Inventory","color":"blue"},{"text":" Orbs","color":"aqua"},"  >>"]
tellraw @s {"text":"-------------------------","bold":true,"color":"blue"}
tellraw @s {"text":"Player Actions","bold":true}
tellraw @s {"text":"-------------","bold":true}
tellraw @s [{"text": "[ ","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger kio.menus set 1"}},{"text":"COLLECT","color":"gold"}," MY NEAREST ",{"text":"ORB","color":"aqua"}," ]"]
tellraw @s {"text":"                                                  -  -  -  -  -  -  -  -  -","color":"red"}
tellraw @s [{"text": "[ ","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger kio.menus set 2"}},{"text":"COLLECT","color":"gold"}," ALL MY ",{"text":"ORBS","color":"aqua"}," ]"]
tellraw @s [{"text":"                                 ","bold":true},{"text":"        |","color":"red","bold":false},{"text":"    ORB","color":"dark_red"},{"text":" STEALING   ","color":"red"},{"text":" |","color":"red","bold":false}]
tellraw @s ""
tellraw @s {"text":"Stats Management","bold":true}
execute if score s kio.newDeath matches 0 run tellraw @s ["",{"text":"---------------","bold":true},{"text":"                       |","color":"red"},"       ",{"text":"  ","bold":true},{"text":"[ OFF ]","bold":true,"color":"gray","click_event": {"action": "run_command", "command": "/trigger kio.menus set 3"}},{"text":"          |","color":"red"}]
execute if score s kio.newDeath matches 1 run tellraw @s ["",{"text":"---------------","bold":true},{"text":"                       |","color":"red"},"   ",{"text":"      ","bold":true},{"text":"[ ON ]","bold":true,"color":"red","click_event": {"action": "run_command", "command": "/trigger kio.menus set 3"}},{"text":"   ","bold":true},{"text":"       |","color":"red"}]
tellraw @s [{"text": "[ ","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger kio.menus set 4"}},{"text":"GET","color":"gold"}," NEAREST STATS ]"]
tellraw @s {"text":"                                                  -  -  -  -  -  -  -  -  -","color":"red"}
execute if entity @s[tag=kio.visible] run tellraw @s [{"text": "[ ","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger kio.menus set 5"}},{"text":"DISABLE","color":"red"}," VISIBLE STATS ]"]
execute unless entity @s[tag=kio.visible] run tellraw @s [{"text": "[ ","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger kio.menus set 5"}},{"text":"ENABLE","color":"green"}," VISIBLE STATS ]"]
tellraw @s ""
tellraw @s [{"text": "[ ","color":"red","bold":true,"click_event": {"action": "run_command", "command": "/trigger kio.menus set 6"}},{"text":"DELETE ALL ","color":"dark_red"},{"color":"red","score":{"name":"t","objective":"kio.newDeath"}}," STATS ]"]
tellraw @s ""
tellraw @s ""

scoreboard players reset t kio.newDeath
playsound minecraft:ui.button.click master @s

scoreboard players enable @s kio.menus