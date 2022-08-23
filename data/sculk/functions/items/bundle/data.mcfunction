data modify storage sculk:items/bundle bundle set from entity @s SelectedItem.tag.slots
data modify storage sculk:items/bundle inventory set from entity @s Inventory
data remove storage sculk:items/bundle inventory[{id:"minecraft:bundle"}]

execute store result score $count sculk.items.bundle run data get storage sculk:items/bundle inventory
execute store result score $hotbar sculk.items.bundle run data get entity @s SelectedItemSlot
execute store result score $bundle_size sculk.items.bundle run data get entity @s SelectedItem.tag.size
execute store result score $bundle_stack sculk.items.bundle run data get entity @s SelectedItem.tag.stack