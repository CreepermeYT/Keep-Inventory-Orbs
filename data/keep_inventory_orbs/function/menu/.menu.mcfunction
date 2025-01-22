scoreboard players set t kio.newDeath 0
execute store result score t kio.newDeath run execute if entity @e[tag=kio.stats]
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s [{"text":"","bold":true,"color":"dark_aqua"},"<<   ",{"text":"Keep Inventory","color":"blue"},{"text":" Orbs","color":"aqua"},"  >>"]
tellraw @s {"text":"-------------------------","bold":true,"color":"blue"}
tellraw @s ""
tellraw @s [{"text": "[ ","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/.getstats"}},{"text":"GET","color":"gold"}," NEAREST STATS ]"]
tellraw @s ""
execute if entity @s[tag=kio.visible] run tellraw @s [{"text": "[ ","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/.togglevisible"}},{"text":"DISABLE","color":"red"}," VISIBLE STATS ]"]
execute unless entity @s[tag=kio.visible] run tellraw @s [{"text": "[ ","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/.togglevisible"}},{"text":"ENABLE","color":"green"}," VISIBLE STATS ]"]
tellraw @s ""
tellraw @s [{"text": "[ ","color":"red","bold":true,"clickEvent": {"action": "run_command", "value": "/function keep_inventory_orbs:menu/.clearallstats"}},{"text":"DELETE ALL ","color":"dark_red"},{"color":"red","score":{"name":"t","objective":"kio.newDeath"}}," STATS ]"]
tellraw @s ""

scoreboard players reset t kio.newDeath
playsound minecraft:ui.button.click master @s