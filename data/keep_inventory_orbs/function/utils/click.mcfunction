advancement revoke @s only keep_inventory_orbs:click
tag @s add kio.clickedsomething
execute at @s as @e[tag=kio.interactionorb,distance=..6] at @s run function keep_inventory_orbs:utils/clicked
tag @s remove kio.clickedsomething

#say clicked something