execute store result score t kio.newDeath run xp query @s levels
$execute if score t kio.newDeath matches ..$(XpLevel) run xp set @s $(XpLevel) levels
scoreboard players reset t kio.newDeath
$xp add @s $(XpP) points