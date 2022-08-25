scoreboard players add $iteration5 sculk.items.bundle 1
data modify storage sculk:items/bundle slot set from storage sculk:items/bundle slots[0]
data remove storage sculk:items/bundle slots[0]

execute if score $iteration5 sculk.items.bundle = $selected sculk.items.bundle run function sculk:items/bundle/withdraw/calculate

data modify storage sculk:items/bundle bundle append from storage sculk:items/bundle slot
execute if score $iteration5 sculk.items.bundle = $selected sculk.items.bundle run function sculk:items/bundle/withdraw/wrapup
execute unless score $iteration5 sculk.items.bundle >= $selected sculk.items.bundle run function sculk:items/bundle/withdraw/slots