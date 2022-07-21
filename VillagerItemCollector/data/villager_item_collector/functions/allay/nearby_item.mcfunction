#function villager_item_collector:allay/nearby_item
#
# Tag the item the allay is going to pick up. As this is complicated, currently they will only pick up bread.
#

# Copy item into storage
data modify storage villageritemcollector:allay item set from entity @s Item

# Remove Count from stored item data
data remove storage villageritemcollector:allay item.Count

# Copy item from inv/hand to working storage location
function villager_item_collector:allay/copy_allay_item_to_working

# Attempt to copy stored item over allay's hand item in working storage location
# 
# We can only successfully overwrite the item data if they do not match,
# therefore we can consider them to match if we are unable to
# copy the item into the working storage location.
# 
# The result will be stored as vic_success in the vic_success score;
# if successful (1) the items will NOT match, if unsuccessful (0) the items DO match.
execute store success score vic_success vic_success run data modify storage villageritemcollector:allay working set from storage villageritemcollector:allay item

# If the item does match (could not be copied above) then tag it as vic_allayitem
execute if score vic_success vic_success = 0 vic_constants run tag @s add vic_allayitem
