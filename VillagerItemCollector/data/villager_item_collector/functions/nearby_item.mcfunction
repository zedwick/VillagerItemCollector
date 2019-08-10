# function villageritemcollector:nearby_item

execute if entity @s[nbt={Item:{"id":"minecraft:bread"}}] run tag add @s villagerfood
execute if entity @s[nbt={Item:{"id":"minecraft:carrot"}}] run tag add @s villagerfood
execute if entity @s[nbt={Item:{"id":"minecraft:potato"}}] run tag add @s villagerfood
execute if entity @s[nbt={Item:{"id":"minecraft:beetroot"}}] run tag add @s villagerfood