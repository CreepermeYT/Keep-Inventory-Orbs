execute as @e[tag=kio.stats,tag=!kio.data] run tag @s add kio.data
execute as @e[tag=kio.savedinv] at @s run function keep_inventory_orbs:utils/updateorbs