scoreboard players add $iteration3 sculk.items.bundle 1

data modify storage sculk:items/bundle slot set from storage sculk:items/bundle bundle[0]
execute store result score $slot_count sculk.items.bundle run data get storage sculk:items/bundle slot.Count 1

data modify storage sculk:items/bundle slot.Count set value 1b
data remove storage sculk:items/bundle bundle[0]

execute at @s run summon item ~ ~ ~ {Tags:["outer.item.name"],Item:{id:"minecraft:dirt",Count:1b}}
data modify entity @e[type=item,tag=outer.item.name,limit=1] Item set from storage sculk:items/bundle slot

execute if score $bundle_in sculk.items.bundle matches 0 run item modify entity @s weapon.mainhand sculk:bundle/lore_slot
execute if score $bundle_in sculk.items.bundle matches 1 run item modify entity @s weapon.offhand sculk:bundle/lore_slot

kill @e[type=item,tag=outer.item.name]
execute unless score $iteration3 sculk.items.bundle >= $bundle_slots sculk.items.bundle run function sculk:items/bundle/lore