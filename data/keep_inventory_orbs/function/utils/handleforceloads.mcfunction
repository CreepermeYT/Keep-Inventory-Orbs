#$say waiting for forceload $(x) $(y) $(z)

## Skip if not loaded
$execute positioned $(x) $(y) $(z) unless entity @e[tag=kio.tempforceloader,distance=..1] run return 0

# wait 1 more tick
$execute if data storage keep_inventory_orbs:orbs forceloads[{UUID:$(UUID)}].c run data modify storage keep_inventory_orbs:orbs forceloads[{UUID:$(UUID)}].d set value 1
$data modify storage keep_inventory_orbs:orbs forceloads[{UUID:$(UUID)}].c set value 1

$execute unless data storage keep_inventory_orbs:orbs forceloads[{UUID:$(UUID)}].d run return 1

#say removing forceload
$forceload remove $(x) $(z)
$execute as @a[nbt={UUID:$(UUID)}] positioned $(x) $(y) $(z) run function keep_inventory_orbs:menu/getmynearest
$execute positioned $(x) $(y) $(z) run kill @n[tag=kio.tempforceloader]
$data remove storage keep_inventory_orbs:orbs forceloads[{UUID:$(UUID)}]
