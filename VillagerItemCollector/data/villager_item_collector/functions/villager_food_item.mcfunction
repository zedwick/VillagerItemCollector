#function villager_item_collector:villager_food_item
#
# To be executed as an item tagged as villager food ("vic_villagerfood").
# Adds this food item to the current villager's inventory (if there is room).
#
# Villager: @e[tag=vic_current,limit=1]
# Item:     @s
#
# Slot villager.0: bread
# Slot villager.1: carrot
# Slot villager.2: potato
# Slot villager.3: beetroot
#

# Debug
#say Pre
#function villager_item_collector:debug/villager_and_item

# Check if this villager has room in its inventory for this type of food,
# and if so insert the food into their inventory.
execute if entity @s[nbt={Item:{"id":"minecraft:bread"}}] run function villager_item_collector:villager_food_item_bread
execute if entity @s[nbt={Item:{"id":"minecraft:carrot"}}] run function villager_item_collector:villager_food_item_carrot
execute if entity @s[nbt={Item:{"id":"minecraft:potato"}}] run function villager_item_collector:villager_food_item_potato
execute if entity @s[nbt={Item:{"id":"minecraft:beetroot"}}] run function villager_item_collector:villager_food_item_beetroot

# Tidy up the "vic_villagerfood" tag from this item.
tag @s remove vic_villagerfood

# Debug
#say Post
#function villager_item_collector:debug/villager_and_item
