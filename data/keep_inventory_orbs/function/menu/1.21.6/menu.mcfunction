scoreboard players set t kio.newDeath 0
execute store result score t kio.newDeath run execute if entity @e[tag=kio.stats]
tellraw @s ["",{"text":"------------------------- ","bold":true,"color":"blue"},{"text":"     -  -  -  -  -  -  -  -  -","color":"white","bold":false}]
tellraw @s [{"text":"","bold":true,"color":"dark_aqua"},"<<   ",{"text":"Keep Inventory","color":"blue"},{"text":" Orbs","color":"aqua"},"  >>  "]
tellraw @s ["",{"text":"-------------------------  ","bold":true,"color":"blue"},"   |    ",{"text":" Global Config    ","bold":true},"|"]
tellraw @s ["",{"text":"Player Actions                  ","bold":true}]
tellraw @s ["",{"text":"-------------                  ","bold":true},"    |-  -  -  -  -  -  -  -  -|"]
tellraw @s [{"text": "[ ","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger kio.menus set 1"}},{"text":"COLLECT","color":"gold"}," MY NEAREST ",{"text":"ORB","color":"aqua"}," ]"]
#tellraw @s {"text":"                                                  -  -  -  -  -  -  -  -  -","color":"red"}
tellraw @s [{"text":" ","bold":true},{"text":"                                                |        ","bold":false},{"text":"GIVE "},{"text":"ORB   ","color":"aqua"},{"text":"     |","bold":false}]
tellraw @s ["",{"text": "[ ","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger kio.menus set 2"}},{"text":"COLLECT","color":"gold","bold":true,"click_event": {"action": "run_command", "command": "/trigger kio.menus set 2"}},{"text":" ALL MY ","bold":true,"click_event": {"action": "run_command", "command": "/trigger kio.menus set 2"}},{"text":"ORBS ","color":"aqua","bold":true,"click_event": {"action": "run_command", "command": "/trigger kio.menus set 2"}},{"text":"]","bold":true,"click_event": {"action": "run_command", "command": "/trigger kio.menus set 2"}},{"text":"              "},{"text":"RECOVERY COMPASS","color":"dark_purple","bold":true}]
tellraw @s ""
execute if score c kio.newDeath matches 0 run tellraw @s ["",{"text":"                     ","bold":true},{"text":"                       |","color":"white"},"       ",{"text":"  ","bold":true},{"text":"[ OFF ]","bold":true,"color":"gray","click_event": {"action": "run_command", "command": "/trigger kio.menus set 8"}},{"text":"          |","color":"white"}]
execute if score c kio.newDeath matches 1 run tellraw @s ["",{"text":"                     ","bold":true},{"text":"                       |","color":"white"},"   ",{"text":"      ","bold":true},{"text":"[ ON ]","bold":true,"color":"white","click_event": {"action": "run_command", "command": "/trigger kio.menus set 8"}},{"text":"   ","bold":true},{"text":"       |","color":"white"}]
tellraw @s {"text":"Stats Management","bold":true}
tellraw @s ["",{"text":"---------------    ","bold":true},{"text":"                  |-  -  -  -  -  -  -  -  -|","color":"red"}]
tellraw @s [{"text": "[ ","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger kio.menus set 4"}},{"text":"GET","color":"gold"}," NEAREST STATS ]"]
tellraw @s [{"text":"                                 ","bold":true},{"text":"        |","color":"red","bold":false},{"text":"    ORB","color":"dark_red"},{"text":" STEALING   ","color":"red"},{"text":" |","color":"red","bold":false}]
execute if entity @s[tag=kio.visible] run tellraw @s [{"text": "[ ","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger kio.menus set 5"}},{"text":"DISABLE","color":"red"}," VISIBLE STATS ]"]
execute unless entity @s[tag=kio.visible] run tellraw @s [{"text": "[ ","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger kio.menus set 5"}},{"text":"ENABLE","color":"green"}," VISIBLE STATS ]"]
execute if score s kio.newDeath matches 0 run tellraw @s ["",{"text":"                     ","bold":true},{"text":"                       |","color":"red"},"       ",{"text":"  ","bold":true},{"text":"[ OFF ]","bold":true,"color":"gray","click_event": {"action": "run_command", "command": "/trigger kio.menus set 3"}},{"text":"          |","color":"red"}]
execute if score s kio.newDeath matches 1 run tellraw @s ["",{"text":"                     ","bold":true},{"text":"                       |","color":"red"},"   ",{"text":"      ","bold":true},{"text":"[ ON ]","bold":true,"color":"red","click_event": {"action": "run_command", "command": "/trigger kio.menus set 3"}},{"text":"   ","bold":true},{"text":"       |","color":"red"}]
tellraw @s [{"text": "[ ","color":"red","bold":true,"click_event": {"action": "run_command", "command": "/trigger kio.menus set 6"}},{"text":"DELETE ALL ","color":"dark_red"},{"color":"red","score":{"name":"t","objective":"kio.newDeath"}}," STATS ]"]
tellraw @s {"text":"                                                  -  -  -  -  -  -  -  -  -","color":"red"}
tellraw @s ""

scoreboard players reset t kio.newDeath
playsound minecraft:ui.button.click master @s

scoreboard players enable @s kio.menus