execute if entity @e[type=armor_stand,distance=..1,tag=sculk.portal.key] run function sculk:portal/place
kill @e[type=armor_stand,distance=..1,tag=sculk.portal.key]
function sculk:portal/enter