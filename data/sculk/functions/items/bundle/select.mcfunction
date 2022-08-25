function sculk:items/bundle/data
function sculk:items/bundle/selection
function sculk:items/bundle/get_selected
scoreboard players reset $iteration4 sculk.items.bundle

execute at @s run summon item ~ ~ ~ {Tags:["outer.item.name"],Item:{id:"minecraft:dirt",Count:1b}}
data modify storage sculk:items/bundle slot.Count set value 1b
data modify entity @e[type=item,tag=outer.item.name,limit=1] Item set from storage sculk:items/bundle slot
execute unless data storage sculk:items/bundle slot run data merge entity @e[type=item,tag=outer.item.name,limit=1] {CustomName:'{"text":"No Items"}'}
title @s actionbar {"selector":"@e[type=item,tag=outer.item.name,limit=1]"}
kill @e[type=item,tag=outer.item.name]