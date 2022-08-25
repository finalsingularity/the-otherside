data remove storage sculk:items/bundle bundle[{Count:0s}]

execute if score $bundle_in sculk.items.bundle matches 0 run function sculk:items/bundle/modify/mainhand
execute if score $bundle_in sculk.items.bundle matches 1 run function sculk:items/bundle/modify/offhand

execute store result score $bundle_slots sculk.items.bundle run data get storage sculk:items/bundle bundle
execute if score $bundle_slots sculk.items.bundle matches 1.. run function sculk:items/bundle/lore
function sculk:items/bundle/reset