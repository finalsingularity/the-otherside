function sculk:items/bundle

item modify entity @s[predicate=sculk:bundle/mainhand] weapon.mainhand sculk:bundle/right_click
item modify entity @s[predicate=sculk:bundle/offhand] weapon.offhand sculk:bundle/right_click

scoreboard players reset @s[scores={sculk.items.bundle.used=1..}] sculk.items.bundle.used