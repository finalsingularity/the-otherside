scoreboard players add $iteration4 sculk.items.bundle 1

execute if score $iteration4 sculk.items.bundle >= $selected sculk.items.bundle run data modify storage sculk:items/bundle slot set from storage sculk:items/bundle bundle[0]
data remove storage sculk:items/bundle bundle[0]

execute unless score $iteration4 sculk.items.bundle >= $selected sculk.items.bundle run function sculk:items/bundle/get_selected