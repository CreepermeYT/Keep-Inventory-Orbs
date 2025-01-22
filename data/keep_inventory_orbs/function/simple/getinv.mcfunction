execute unless entity @n[tag=kio.broken] run tag @n[tag=kio.savedinv] add kio.broken
execute unless entity @n[tag=kio.broken] run return 0
execute at @n[tag=kio.broken] run summon armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Tags:["kio.broken_helper"]}

clear @s *[minecraft:custom_data={kioclear:1}]

function keep_inventory_orbs:utils/setitem {slot:0,place:hotbar,rslot:0}

function keep_inventory_orbs:utils/setitem {slot:1,place:hotbar,rslot:1}

function keep_inventory_orbs:utils/setitem {slot:2,place:hotbar,rslot:2}

function keep_inventory_orbs:utils/setitem {slot:3,place:hotbar,rslot:3}

function keep_inventory_orbs:utils/setitem {slot:4,place:hotbar,rslot:4}

function keep_inventory_orbs:utils/setitem {slot:5,place:hotbar,rslot:5}

function keep_inventory_orbs:utils/setitem {slot:6,place:hotbar,rslot:6}

function keep_inventory_orbs:utils/setitem {slot:7,place:hotbar,rslot:7}

function keep_inventory_orbs:utils/setitem {slot:8,place:hotbar,rslot:8}

function keep_inventory_orbs:utils/setitem {slot:9,place:inventory,rslot:0}

function keep_inventory_orbs:utils/setitem {slot:10,place:inventory,rslot:1}

function keep_inventory_orbs:utils/setitem {slot:11,place:inventory,rslot:2}

function keep_inventory_orbs:utils/setitem {slot:12,place:inventory,rslot:3}

function keep_inventory_orbs:utils/setitem {slot:13,place:inventory,rslot:4}

function keep_inventory_orbs:utils/setitem {slot:14,place:inventory,rslot:5}

function keep_inventory_orbs:utils/setitem {slot:15,place:inventory,rslot:6}

function keep_inventory_orbs:utils/setitem {slot:16,place:inventory,rslot:7}

function keep_inventory_orbs:utils/setitem {slot:17,place:inventory,rslot:8}

function keep_inventory_orbs:utils/setitem {slot:18,place:inventory,rslot:9}

function keep_inventory_orbs:utils/setitem {slot:19,place:inventory,rslot:10}

function keep_inventory_orbs:utils/setitem {slot:20,place:inventory,rslot:11}

function keep_inventory_orbs:utils/setitem {slot:21,place:inventory,rslot:12}

function keep_inventory_orbs:utils/setitem {slot:22,place:inventory,rslot:13}

function keep_inventory_orbs:utils/setitem {slot:23,place:inventory,rslot:14}

function keep_inventory_orbs:utils/setitem {slot:24,place:inventory,rslot:15}

function keep_inventory_orbs:utils/setitem {slot:25,place:inventory,rslot:16}

function keep_inventory_orbs:utils/setitem {slot:26,place:inventory,rslot:17}

function keep_inventory_orbs:utils/setitem {slot:27,place:inventory,rslot:18}

function keep_inventory_orbs:utils/setitem {slot:28,place:inventory,rslot:19}

function keep_inventory_orbs:utils/setitem {slot:29,place:inventory,rslot:20}

function keep_inventory_orbs:utils/setitem {slot:30,place:inventory,rslot:21}

function keep_inventory_orbs:utils/setitem {slot:31,place:inventory,rslot:22}

function keep_inventory_orbs:utils/setitem {slot:32,place:inventory,rslot:23}

function keep_inventory_orbs:utils/setitem {slot:33,place:inventory,rslot:24}

function keep_inventory_orbs:utils/setitem {slot:34,place:inventory,rslot:25}

function keep_inventory_orbs:utils/setitem {slot:35,place:inventory,rslot:26}

function keep_inventory_orbs:utils/setitem {slot:-106,place:weapon,rslot:offhand}

function keep_inventory_orbs:utils/setitem {slot:100,place:armor,rslot:feet}

function keep_inventory_orbs:utils/setitem {slot:101,place:armor,rslot:legs}

function keep_inventory_orbs:utils/setitem {slot:102,place:armor,rslot:chest}

function keep_inventory_orbs:utils/setitem {slot:103,place:armor,rslot:head}


function keep_inventory_orbs:utils/setlevels with entity @n[tag=kio.broken] data

execute at @n[tag=kio.broken] run playsound minecraft:block.trial_spawner.ominous_activate block @a[distance=..5.5] ~ ~ ~
execute at @n[tag=kio.broken] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.4 50 normal
execute at @n[tag=kio.broken] run setblock ~ ~ ~ air destroy

kill @n[tag=kio.broken_helper]
data modify entity @n[tag=kio.broken] CustomName set value '"kio:stats_store"'
tag @n[tag=kio.broken] add kio.stats
tag @n[tag=kio.broken] remove kio.savedinv
tag @n[tag=kio.broken] remove kio.broken
