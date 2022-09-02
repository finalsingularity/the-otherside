execute unless data storage sculk:items/bundle lock run function sculk:items/bundle
execute unless data storage sculk:items/roller lock run function sculk:items/roller
execute unless data storage sculk:items/magnet lock run function sculk:items/magnet

item modify entity @s[predicate=sculk:bundle/mainhand/right_click] weapon.mainhand sculk:bundle/right_click
item modify entity @s[predicate=sculk:bundle/offhand/right_click] weapon.offhand sculk:bundle/right_click

scoreboard players reset @s[scores={sculk.items.bundle.used=1..}] sculk.items.bundle.used

execute if score @s sculk.player.xp > @s sculk.xp run function sculk:items/mend

function sculk:items/totems/_player