scoreboard players add c kio.newDeath 1
execute if score c kio.newDeath matches 2.. run scoreboard players set c kio.newDeath 0

function keep_inventory_orbs:menu/menu
execute if score c kio.newDeath matches 1 run tellraw @s [{"text":"-> ","bold":true},{"text":"ENABLED","color":"green"}," GIVE",{"text":" ORB","color":"aqua"},{"text":" RECOVERY COMPASS","color":"dark_purple"}]
execute if score c kio.newDeath matches 0 run tellraw @s [{"text":"-> ","bold":true},{"text":"DISABLED","color":"red"}," GIVE",{"text":" ORB","color":"aqua"},{"text":" RECOVERY COMPASS","color":"dark_purple"}]