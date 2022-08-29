function sculk:items/bundle/data
function sculk:items/bundle/selection
function sculk:items/bundle/get_selected

execute store result score $slot_count sculk.items.bundle run data get storage sculk:items/bundle slot.Count 1
scoreboard players reset $iteration4 sculk.items.bundle

execute at @s run summon item ~ ~ ~ {Tags:["outer.item.name"],Item:{id:"minecraft:dirt",Count:1b}}
data modify storage sculk:items/bundle slot.Count set value 1b
data modify entity @e[type=item,tag=outer.item.name,limit=1] Item set from storage sculk:items/bundle slot

execute if data storage sculk:items/bundle slot.id run title @s actionbar {"selector": "@e[type=item,tag=outer.item.name,limit=1]","color": "gold","extra":[{"text": " x ","extra": [{"score": {"name": "$slot_count","objective": "sculk.items.bundle"}}]}]}
execute unless data storage sculk:items/bundle slot.id run title @s actionbar {"text":"No Items","color":"gold"}

kill @e[type=item,tag=outer.item.name]