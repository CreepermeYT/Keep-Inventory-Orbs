execute if entity @e[tag=kio.completedrequest] run return 0
tag @n[tag=kio.markerorb] add kio.broken
$execute as @n[tag=kio.requester,nbt={UUID:$(UUID)}] at @s positioned ~ ~ ~ run function keep_inventory_orbs:basic/getinv
$execute unless entity @e[tag=kio.all] as @e[tag=kio.requester,nbt={UUID:$(UUID)}] run tag @s add kio.completedrequest
tag @n[tag=kio.markerorb] remove kio.broken