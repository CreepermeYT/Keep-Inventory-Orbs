tag @s[tag=kio.me] add kio.notme
tag @s[tag=!kio.me] add kio.me
tag @s[tag=kio.notme] remove kio.me
tag @s[tag=kio.notme] remove kio.notme

function keep_inventory_orbs:menu/menu
tellraw @s[tag=kio.me] [{"text":"-> ","bold":true},"TOGGLED",{"text":" OPERATOR TO ","color":"gray"},"ME"]
tellraw @s[tag=!kio.me] [{"text":"-> ","bold":true},"TOGGLED",{"text":" OPERATOR TO ","color":"gray"},"<PLAYER>"]