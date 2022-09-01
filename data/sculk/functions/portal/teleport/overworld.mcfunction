function sculk:portal/teleport/check_pos
scoreboard players set @s sculk.portal.cooldown 20
summon marker ~ ~ ~ {Tags:["sculk.teleport"]}
tag @s add sculk.teleport.player
execute as @e[type=marker,tag=sculk.teleport,limit=1,sort=nearest] run function sculk:portal/teleport/load/overworld
tag @s remove sculk.teleport.player