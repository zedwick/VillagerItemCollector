#function villager_item_collector:villager_food_item
#
# to be execute as a villager at an item tagged as villager food.
#
# Villager: @e[tag=vic_current,limit=1]
# Item:      @s
#
# Slot villager.0: bread
# Slot villager.1: carrot
# Slot villager.2: potato
# Slot villager.3: beetroot
#

# debug
say Pre
function villager_item_collector:debug/villager_and_item

# Which food type is it?
execute if entity @s[nbt={Item:{"id":"minecraft:bread"}}] run function villager_item_collector:villager_food_item_bread
execute if entity @s[nbt={Item:{"id":"minecraft:carrot"}}] run function villager_item_collector:villager_food_item_carrot
execute if entity @s[nbt={Item:{"id":"minecraft:potato"}}] run function villager_item_collector:villager_food_item_potato
execute if entity @s[nbt={Item:{"id":"minecraft:beetroot"}}] run function villager_item_collector:villager_food_item_beetroot

# We could tidy up our vic_villagerfood tag here, but we probably don't need to.
tag @s remove villagerfood

# debug
say Post
function villager_item_collector:debug/villager_and_item
