data modify storage sculk:items/magnet lock set value 1b

execute as @s at @s run tp @e[type=item,distance=..8] ~ ~1 ~
function sculk:items/magnet/use

data remove storage sculk:items/magnet lock