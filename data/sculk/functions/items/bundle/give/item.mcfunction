execute at @s run summon item ~ ~ ~ {Tags:["outer.item.give"],Item:{id:"minecraft:dirt",Count:1b}}
execute at @s run data modify entity @e[type=item,tag=outer.item.give,limit=1,sort=nearest] Item set from storage sculk:items/bundle output
tp @e[type=item,tag=outer.item.give,limit=1,sort=nearest] @s