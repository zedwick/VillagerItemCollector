#function villager_item_collector:allay/pickup_item
#
# To be executed as an item tagged as allay item ("vic_villagerfood").
# Adds this item to the current allay's inventory (if there is room).
#
# Allay:    @e[tag=vic_current,limit=1]
# Item:     @s
#

# Debug
say Pre
function villager_item_collector:debug/allay_and_item

# Check if this allay has room in its inventory for this item,
# and if so insert the item into their inventory.
function villager_item_collector:allay/item_maths

# Tidy up the "vic_allayitem" tag from this item.
tag @s remove vic_allayitem

# Debug
say Post
function villager_item_collector:debug/allay_and_item
