execute as @s[predicate=sculk:bundle/offhand/holding] unless score @s sculk.items.bundle.slot = @s sculk.player.slot run function sculk:items/bundle/select
execute as @s[scores={sculk.items.bundle.used=1..,sculk.player.sneak=0}] run function sculk:items/bundle/withdraw_check
execute as @s[scores={sculk.items.bundle.used=1..,sculk.player.sneak=1..}] run function sculk:items/bundle/fill_check