#function villager_item_collector:allay/copy_allay_item_to_working
#
# Sets the working storage location to the item the allay is searching for
# This will be the item in their inventory if one exists, otherwise it will be the item from their hand.
#

# Copy stored allay hand item into temp working storage location
data modify storage villageritemcollector:allay working set from storage villageritemcollector:allay hand

# If inventory is not empty, overwrite working storage item data with inventory item instead
execute if data storage villageritemcollector:allay inv run data modify storage villageritemcollector:allay working set from storage villageritemcollector:allay inv
