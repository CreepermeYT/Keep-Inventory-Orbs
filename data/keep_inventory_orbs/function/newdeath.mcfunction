execute at @s run function keep_inventory_orbs:simple/saveinv
scoreboard players reset @s kio.newDeath
execute at @s run playsound minecraft:block.respawn_anchor.deplete block @a[distance=..5.5] ~ ~ ~ 1 0.8