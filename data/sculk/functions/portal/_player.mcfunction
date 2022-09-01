execute at @s as @e[type=marker,tag=sculk.portal,distance=..64] at @s run function sculk:portal/lock
execute at @s as @e[type=armor_stand,tag=sculk.portal.key,distance=..64] at @s run function sculk:portal/key

execute unless score @s sculk.portal.cooldown matches -1.. run scoreboard players set @s sculk.portal.cooldown 0

execute as @s[predicate=sculk:in_the_otherside] at @s if block ~ ~ ~ end_gateway run function sculk:portal/teleport/overworld