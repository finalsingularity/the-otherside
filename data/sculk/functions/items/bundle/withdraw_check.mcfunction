function sculk:items/bundle/data
say withdraw_check
execute as @s if score $bundle_slots sculk.items.bundle matches 1.. run function sculk:items/bundle/withdraw