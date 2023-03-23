tellraw @a "The Otherside - Load"
schedule clear sculk:loop
function sculk:objectives
execute unless score $init sculk.config matches 0.. run function sculk:init
function sculk:loop
