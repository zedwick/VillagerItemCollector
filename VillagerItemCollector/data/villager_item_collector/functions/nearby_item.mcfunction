# function villageritemcollector:nearby_item

execute if entity @s[nbt={Item:{"id":"minecraft:bread"}}] run tag @s add vic_villagerfood
execute if entity @s[nbt={Item:{"id":"minecraft:carrot"}}] run tag @s add vic_villagerfood
execute if entity @s[nbt={Item:{"id":"minecraft:potato"}}] run tag @s add vic_villagerfood
execute if entity @s[nbt={Item:{"id":"minecraft:beetroot"}}] run tag @s add vic_villagerfood
