execute as @s[scores={sculk.player.death=1..}] run function sculk:death

function sculk:items/_player
function sculk:corruption/_player
function sculk:portal/_player

execute store result score @s sculk.player.slot run data get entity @s SelectedItemSlot

scoreboard players set @s sculk.player.sneak 0