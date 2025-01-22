$kill @e[nbt={UUID:$(UUID)}]
function keep_inventory_orbs:menu/.menu
tellraw @s [{"text":"-> ","bold":true},{"text":"DELETED","bold":true,"color":"dark_red"},{"text":" STATS","color":"red"}]