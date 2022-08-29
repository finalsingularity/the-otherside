summon chest_boat ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Type:"oak",Tags:["sculk.inventory.store"]}
data modify entity @e[type=chest_boat,tag=sculk.inventory.store,limit=1,sort=nearest] Items set from entity @s Inventory

function sculk:items/roller/up/step_1
function sculk:items/roller/up/step_2

data remove entity @e[type=chest_boat,tag=sculk.inventory.store,limit=1,sort=nearest] Items
kill @e[type=chest_boat,tag=sculk.inventory.store,limit=1,sort=nearest]