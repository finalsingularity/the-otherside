execute store result score $bundle_count sculk.items.bundle run data get storage sculk:items/bundle slot.Count

# Get remainder
scoreboard players operation $remainder sculk.items.bundle = $bundle_count sculk.items.bundle
scoreboard players operation $remainder sculk.items.bundle -= $withdraw sculk.items.bundle
execute if score $remainder sculk.items.bundle matches 0.. run scoreboard players set $remainder sculk.items.bundle 0

# Set amount to add to be input + remainder
scoreboard players operation $add sculk.items.bundle = $withdraw sculk.items.bundle
scoreboard players operation $add sculk.items.bundle += $remainder sculk.items.bundle

scoreboard players operation $bundle_count sculk.items.bundle -= $add sculk.items.bundle
execute store result storage sculk:items/bundle slot.Count short 1 run scoreboard players get $bundle_count sculk.items.bundle

data modify storage sculk:items/bundle output set from storage sculk:items/bundle slot
execute store result storage sculk:items/bundle output.Count byte 1 run scoreboard players get $add sculk.items.bundle

function sculk:items/bundle/add