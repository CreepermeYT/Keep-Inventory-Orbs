$execute as @e[nbt={UUID:$(UUID)}] at @s run function keep_inventory_orbs:utils/updateorbs
playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 1 1.1
function keep_inventory_orbs:menu/menu
tellraw @s [{"text":"-> ","bold":true},{"text":"RESPAWNED","bold":true,"color":"gold"},{"text":" ORB","color":"aqua"}]