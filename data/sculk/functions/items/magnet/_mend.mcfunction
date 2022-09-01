function sculk:items/magnet/data
execute if score $uses sculk.items.magnet < $max_uses sculk.items.magnet run function sculk:items/magnet/mend
