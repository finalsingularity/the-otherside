function sculk:math/random

execute if score $rand_100 sculk.math matches 99 as @a[predicate=sculk:corruption/corrupt_land] run function sculk:corruption/corrupt
execute if score $rand_100 sculk.math matches 0..10 as @a[predicate=sculk:corruption/corrupt_water] run function sculk:corruption/corrupt

execute if score $rand_100 sculk.math matches 11..20 as @a[predicate=sculk:corruption/can_heal,scores={sculk.corruption=1..}] run function sculk:corruption/heal

scoreboard players remove @a[scores={sculk.corruption.cooldown=1..}] sculk.corruption.cooldown 1