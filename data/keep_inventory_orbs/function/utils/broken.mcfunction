# this function is run as the orb whenever the 'broken' event is called

# it will tag itself as 'kio.broken'
# it will look for its player within 5.5 blocks and make them run a 'getinv'

tag @n[tag=kio.markerorb] add kio.broken
$execute as @e[type=player,distance=..5.5,name=$(name)] at @s run function keep_inventory_orbs:basic/getinv
tag @n[tag=kio.markerorb] remove kio.broken