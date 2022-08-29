scoreboard players set $lock sculk.items.roller 1

scoreboard players operation $next_slot sculk.items.roller = @s sculk.items.roller.slot
scoreboard players operation $prev_slot sculk.items.roller = @s sculk.items.roller.slot

scoreboard players add $next_slot sculk.items.roller 1
scoreboard players remove $prev_slot sculk.items.roller 1

execute if score @s sculk.player.slot >= $next_slot sculk.items.roller run function sculk:items/roller/up
execute if score @s sculk.player.slot <= $prev_slot sculk.items.roller run function sculk:items/roller/down

scoreboard players operation @s sculk.items.roller.slot = @s sculk.player.slot

scoreboard players set $lock sculk.items.roller 0