data modify storage sculk:items/bundle valid set value 1b

execute at @s run summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["sculk.items.check"]}
data modify entity @e[type=armor_stand,tag=sculk.items.check,limit=1] HandItems[0] set from storage sculk:items/bundle input
execute as @e[type=armor_stand,predicate=sculk:bundle/filter,tag=sculk.items.check,limit=1] run data remove storage sculk:items/bundle valid
kill @e[type=armor_stand,tag=sculk.items.check]

execute unless score $slot sculk.items.bundle matches 0..35 run data remove storage sculk:items/bundle valid