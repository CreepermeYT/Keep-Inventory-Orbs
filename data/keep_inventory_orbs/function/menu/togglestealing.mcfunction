scoreboard players add s kio.newDeath 1
execute if score s kio.newDeath matches 2.. run scoreboard players set s kio.newDeath 0

function keep_inventory_orbs:menu/menu
execute if score s kio.newDeath matches 1 run tellraw @s [{"text":"-> ","bold":true},{"text":"ENABLED","color":"red"},{"text":" ORB","color":"dark_red"},{"text":" STEALING","color":"red"}]
execute if score s kio.newDeath matches 0 run tellraw @s [{"text":"-> ","bold":true},{"text":"DISABLED","color":"gray"},{"text":" ORB","color":"dark_red"},{"text":" STEALING","color":"red"}]