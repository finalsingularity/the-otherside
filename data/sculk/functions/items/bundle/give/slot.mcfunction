execute at @s run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["outer.item.give"],HandItems:[{id:'minecraft:dirt',Count:1b},{}]}
data modify entity @e[type=armor_stand,tag=outer.item.give,limit=1] HandItems[0] set from storage sculk:items/bundle output
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=outer.item.give,limit=1] weapon.mainhand
kill @e[type=minecraft:armor_stand,tag=outer.item.give]