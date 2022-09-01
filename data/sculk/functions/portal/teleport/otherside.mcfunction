function sculk:portal/teleport/set_pos
effect give @s slow_falling 2 1 true
scoreboard players set @s sculk.corruption.cooldown 120
execute at @s in sculk:the_otherside run function sculk:portal/teleport/load/otherside