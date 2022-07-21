#function villageritemcollector:allay/locate_item
#
# When executed as&at an allay, will find nearby items matching the allay's held item and add them to the allay's inventory.
#
# Allay only has a single inventory slot: Inventory[0]
#

# Tag current allay, which will make the current allay targetable via @e[tag=vic_current]
tag @s add vic_current

# Record the item this allay is searching for, and the item in inventory
function villager_item_collector:allay/record_item_in_hand

# Find nearby items the allay is searching for, and tag them with "vic_allayitem"
execute as @e[type=item,distance=..1,nbt={PickupDelay:0s}] run function villager_item_collector:allay/nearby_item

# Cleanup after matching nearby items
data remove storage villageritemcollector:allay item

# Execute as item (we can use @s to target the current item and target the allay with @e[tag=vic_current])
execute as @e[type=item,distance=..1,tag=vic_allayitem] run function villager_item_collector:allay/pickup_item


# Cleanup after matching nearby items
data remove storage villageritemcollector:allay hand
data remove storage villageritemcollector:allay inv
data remove storage villageritemcollector:allay item
data remove storage villageritemcollector:allay working

# Tidy up scoreboard so it isn't full of allays
scoreboard players reset @s vic_breadc

# Unmark allay as current, and mark as done.
tag @s remove vic_current
tag @s add vic_done
