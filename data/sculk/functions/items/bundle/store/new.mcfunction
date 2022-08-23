data remove storage sculk:items/bundle slots[0]
data modify storage sculk:items/bundle slot set from storage sculk:items/bundle input
# data modify storage sculk:items/bundle bundle merge from storage sculk:items/bundle slots

scoreboard players set $remainder sculk.items.bundle 0
function sculk:items/bundle/remove