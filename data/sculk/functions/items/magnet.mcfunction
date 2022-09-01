execute as @s[predicate=sculk:magnet/offhand,scores={sculk.player.sneak=1..,sculk.items.magnet.cooldown=..0}] run function sculk:items/magnet/check
execute as @s[predicate=sculk:magnet/offhand,scores={sculk.player.sneak=1..,sculk.items.magnet.cooldown=0..}] run function sculk:items/magnet/notify

execute as @s[scores={sculk.items.magnet.cooldown=1..}] run scoreboard players remove @s sculk.items.magnet.cooldown 1

execute unless score @s sculk.items.magnet.cooldown matches -1.. run scoreboard players set @s sculk.items.magnet.cooldown 0