#function villager_item_collector:villager_food_item
#
# to be execute as a villager at an item tagged as villager food.
#
# Villager: @s
# Item:     @e[type=minecraft:item,distance=0]
#
# Slot villager.0: bread
# Slot villager.1: carrot
# Slot villager.2: potato
# Slot villager.3: beetroot
#
# Which food type is it?
execute if entity @e[type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}}] run function villager_item_collector:villager_food_item_bread

# We could tidy up our vic_villagerfood tag here, but we probably don't need to.
# tag remove @e[type=minecraft:item,distance=0] villagerfood
