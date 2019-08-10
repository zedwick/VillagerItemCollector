#function villageritemcollector:villager_food_item_bread
#
# to be execute as a villager at an item tagged as villagerfood which is bread.
#
# Villager: @s
# Item:     @e[type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}}]
#
# Slot villager.0: bread
# 

# Is there room in the villager inventory?
# if so, how much room and can we fit the whole item stack into it?
# if we can, insert whole item stack count and kill item,
# otherwise add what you need to villager
# and take what you need from the item stack