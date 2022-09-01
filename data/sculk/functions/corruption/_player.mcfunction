execute as @s[scores={sculk.corruption=1..}] run function sculk:corruption/effects

execute unless score @s sculk.corruption.cooldown matches -1.. run scoreboard players set @s sculk.corruption.cooldown 0