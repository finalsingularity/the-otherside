execute store result score $bundle_count sculk.items.bundle run data get storage sculk:items/bundle slot.Count
execute store result score $input_count sculk.items.bundle run data get storage sculk:items/bundle input.Count

# Calculate space
scoreboard players operation $space sculk.items.bundle = $bundle_stack sculk.items.bundle
scoreboard players operation $space sculk.items.bundle -= $bundle_count sculk.items.bundle

# Get remainder
scoreboard players operation $remainder sculk.items.bundle = $input_count sculk.items.bundle
scoreboard players operation $remainder sculk.items.bundle -= $space sculk.items.bundle
execute if score $remainder sculk.items.bundle matches ..0 run scoreboard players set $remainder sculk.items.bundle 0

# Set amount to add to be input - remainder
scoreboard players operation $add sculk.items.bundle = $input_count sculk.items.bundle
scoreboard players operation $add sculk.items.bundle -= $remainder sculk.items.bundle

scoreboard players operation $bundle_count sculk.items.bundle += $add sculk.items.bundle
execute store result storage sculk:items/bundle slot.Count short 1 run scoreboard players get $bundle_count sculk.items.bundle

data modify storage sculk:items/bundle bundle append from storage sculk:items/bundle slots[]
function sculk:items/bundle/remove