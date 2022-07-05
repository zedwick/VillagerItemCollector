#function villager_item_collector:allay/nearby_item
#
# Tag the item the allay is going to pick up. As this is complicated, currently they will only pick up bread.
#

tag @s[nbt={Item:{"id":"minecraft:bread"}}] add vic_allayitem
