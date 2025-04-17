execute on attacker unless entity @s[tag=kio.clickedsomething] run return 0
execute unless data entity @s attack run return 0
data remove entity @s attack

#say clicked by somebody
function keep_inventory_orbs:utils/broken with entity @s Passengers[0].Passengers[0].data