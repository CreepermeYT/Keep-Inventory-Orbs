tag @s add kio.me
execute if entity @n[tag=kio.interactionorb,tag=!kio.me,tag=!kio.rising,distance=...99] run tag @s add kio.notalone
tag @s remove kio.me
execute if entity @s[tag=!kio.notalone] run return 1
tag @s remove kio.notalone
return 0