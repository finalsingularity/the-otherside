data modify storage sculk:items/bundle compare set from storage sculk:items/bundle slots[0]
data modify storage sculk:items/bundle slot set from storage sculk:items/bundle slots[0]
data remove storage sculk:items/bundle slots[0]

execute store result storage sculk:items/bundle compare.Count byte 1 run data get storage sculk:items/bundle input.Count 1
execute store success score $result sculk.items.bundle run data modify storage sculk:items/bundle compare set from storage sculk:items/bundle input

execute if score $result sculk.items.bundle matches 0 run function sculk:items/bundle/store/existing