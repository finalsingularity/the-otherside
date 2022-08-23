scoreboard players add $iteration2 sculk.items.bundle 1

# Compare
execute unless data storage sculk:items/bundle slots[0] run function sculk:items/bundle/store/new
execute if data storage sculk:items/bundle slots[0] run function sculk:items/bundle/compare

tellraw @a [{"score":{"name":"$iteration2","objective":"sculk.items.bundle"}},": ",{"nbt":"input","storage":"sculk:items/bundle"}]
data modify storage sculk:items/bundle bundle append from storage sculk:items/bundle slot

execute unless score $iteration2 sculk.items.bundle >= $bundle_size sculk.items.bundle run function sculk:items/bundle/slots