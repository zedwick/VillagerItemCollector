#function villager_and_item:allay/record_item_in_hand
#
# Records item allay is holding into storage.
#
# Allay:                @e[tag=vic_current,limit=1]
# Storage hand:         villageritemcollector:allay hand
# Storage inventoty:    Villageritemcollector:allay inv
#

# Copy allay item from hand into storage
data modify storage villageritemcollector:allay hand set from entity @s HandItems[0]

# Remove Count from stored item data
data remove storage villageritemcollector:allay hand.Count


# Copy allay item from inventory into storage
data modify storage villageritemcollector:allay inv set from entity @s Inventory[0]

# Record inventory count for later
data modify storage villageritemcollector:allay count.inv set from storage villageritemcollector:allay inv.Count

# Remove Count from stored item data
data remove storage villageritemcollector:allay inv.Count
