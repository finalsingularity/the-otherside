function sculk:items/_player

execute store result score @s sculk.player.slot run data get entity @s SelectedItemSlot

scoreboard players set @s sculk.player.sneak 0