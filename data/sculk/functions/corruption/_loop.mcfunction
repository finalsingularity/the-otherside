function sculk:math/random

execute if score $rand_100 sculk.math matches 99 as @a[predicate=sculk:corruption/corrupt_land] run function sculk:corruption/corrupt
execute if score $rand_100 sculk.math matches 0..10 as @a[predicate=sculk:corruption/corrupt_water] run function sculk:corruption/corrupt