item modify entity @s weapon.mainhand sculk:bundle/store
item modify entity @s weapon.mainhand sculk:bundle/reset_lore

execute store result score $bundle_slots sculk.items.bundle run data get storage sculk:items/bundle bundle
function sculk:items/bundle/lore

scoreboard players reset $iteration sculk.items.bundle
scoreboard players reset $iteration3 sculk.items.bundle

data remove storage sculk:items/bundle bundle
data remove storage sculk:items/bundle inventory
data remove storage sculk:items/bundle slots

data remove storage sculk:items/bundle lock