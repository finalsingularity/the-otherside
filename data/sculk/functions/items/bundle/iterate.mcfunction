scoreboard players add $iteration sculk.items.bundle 1

data modify storage sculk:items/bundle input set from storage sculk:items/bundle inventory[0]
execute store result score $slot sculk.items.bundle run data get storage sculk:items/bundle input.Slot
data remove storage sculk:items/bundle input.Slot

data modify storage sculk:items/bundle slots set from storage sculk:items/bundle bundle
data remove storage sculk:items/bundle bundle
function sculk:items/bundle/slots

scoreboard players reset $iteration2 sculk.items.bundle
data remove storage sculk:items/bundle inventory[0]
data remove storage sculk:items/bundle input
data remove storage sculk:items/bundle slot
execute unless score $iteration sculk.items.bundle >= $count sculk.items.bundle run function sculk:items/bundle/iterate