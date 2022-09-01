execute unless entity @e[type=marker,tag=sculk.portal,distance=..64] run function sculk:portal/drop
execute facing entity @e[type=marker,tag=sculk.portal,distance=..64,limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.2

particle end_rod ~ ~ ~ 0.002 0 0 0.2 0 normal @a