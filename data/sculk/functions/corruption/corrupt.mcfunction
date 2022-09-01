execute at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 100 0.8
scoreboard players add @s sculk.corruption 1
scoreboard players operation @s sculk.corruption.cooldown = $corruption_cooldown sculk.config
function sculk:corruption/display