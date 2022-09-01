data modify storage sculk:items/magnet data set from entity @s Inventory[{Slot:-106b}].tag
execute store result score $uses sculk.items.magnet run data get storage sculk:items/magnet data.uses
execute store result score $max_uses sculk.items.magnet run data get storage sculk:items/magnet data.max_uses
execute store result score $cooldown sculk.items.magnet run data get storage sculk:items/magnet data.cooldown