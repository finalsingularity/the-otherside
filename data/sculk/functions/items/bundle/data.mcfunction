execute as @s[predicate=sculk:bundle/mainhand/holding] run scoreboard players set $bundle_in sculk.items.bundle 0
execute as @s[predicate=sculk:bundle/offhand/holding] run scoreboard players set $bundle_in sculk.items.bundle 1

execute if score $bundle_in sculk.items.bundle matches 0 run data modify storage sculk:items/bundle data set from entity @s SelectedItem.tag
execute if score $bundle_in sculk.items.bundle matches 1 run data modify storage sculk:items/bundle data set from entity @s Inventory[{Slot:-106b}].tag

data modify storage sculk:items/bundle bundle set from storage sculk:items/bundle data.slots
data modify storage sculk:items/bundle inventory set from entity @s Inventory

execute store result score $count sculk.items.bundle run data get storage sculk:items/bundle inventory
execute store result score $bundle_slots sculk.items.bundle run data get storage sculk:items/bundle bundle
execute store result score $bundle_size sculk.items.bundle run data get storage sculk:items/bundle data.size
execute store result score $bundle_stack sculk.items.bundle run data get storage sculk:items/bundle data.stack
execute store result score $withdraw sculk.items.bundle run data get storage sculk:items/bundle data.withdraw

scoreboard players operation @s sculk.items.bundle.slot = @s sculk.player.slot