tag @s add kio.i
execute if entity @n[tag=kio.interactionorb,tag=!kio.i,tag=!kio.rising,distance=...99] run tag @s add kio.notalone
tag @s remove kio.i
execute if entity @s[tag=!kio.notalone] run return 1
tag @s remove kio.notalone
return 0