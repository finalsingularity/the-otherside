execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=sculk.teleport.player,limit=1] sculk.portal.x
execute store result entity @s Pos[1] double 1 run scoreboard players get @a[tag=sculk.teleport.player,limit=1] sculk.portal.y
execute store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=sculk.teleport.player,limit=1] sculk.portal.z
execute positioned as @s in overworld run tp @a[tag=sculk.teleport.player,limit=1] ~ ~ ~
kill @s