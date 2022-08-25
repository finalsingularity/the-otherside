say withdraw
data modify storage sculk:items/bundle lock set value 1b

scoreboard players set $selected sculk.items.bundle 1
execute as @s[predicate=sculk:bundle/offhand] run function sculk:items/bundle/selection

data modify storage sculk:items/bundle slots set from storage sculk:items/bundle bundle
data remove storage sculk:items/bundle bundle

function sculk:items/bundle/withdraw/slots
function sculk:items/bundle/modify