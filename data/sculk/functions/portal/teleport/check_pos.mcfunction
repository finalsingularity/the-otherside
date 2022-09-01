execute unless score @s sculk.portal.y matches -2147483648..2147483647 run effect give @s slow_falling 100 1 true

execute unless score @s sculk.portal.x matches -2147483648..2147483647 run scoreboard players set @s sculk.portal.x 0
execute unless score @s sculk.portal.y matches -2147483648..2147483647 run scoreboard players set @s sculk.portal.y 256
execute unless score @s sculk.portal.z matches -2147483648..2147483647 run scoreboard players set @s sculk.portal.z 0