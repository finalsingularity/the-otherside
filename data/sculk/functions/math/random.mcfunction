execute if score $seed sculk.math matches 0 store result score $seed sculk.math run data get entity @e[limit=1,sort=random] UUID[1]
execute if score $rng sculk.math matches 0 store result score $rng sculk.math run scoreboard players get $seed sculk.math

scoreboard players add $iteration sculk.math 1
scoreboard players operation $rng sculk.math *= $multiplier sculk.constants
scoreboard players operation $rng sculk.math += $increment sculk.constants
scoreboard players operation $rng sculk.math += $iteration sculk.math

execute store result score $rand_2 sculk.math run scoreboard players get $rng sculk.math
scoreboard players operation $rand_2 sculk.math %= $2 sculk.constants

execute store result score $rand_10 sculk.math run scoreboard players get $rng sculk.math
scoreboard players operation $rand_10 sculk.math %= $10 sculk.constants

execute store result score $rand_26 sculk.math run scoreboard players get $rng sculk.math
scoreboard players operation $rand_26 sculk.math %= $26 sculk.constants

execute store result score $rand_100 sculk.math run scoreboard players get $rng sculk.math
scoreboard players operation $rand_100 sculk.math %= $100 sculk.constants