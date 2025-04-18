tag @s add kio.requester
execute as @e[tag=kio.interactionorb,sort=nearest] at @s run function keep_inventory_orbs:utils/requestingme with entity @s Passengers[0].Passengers[0].data
tag @s remove kio.completedrequest
tag @s remove kio.requester