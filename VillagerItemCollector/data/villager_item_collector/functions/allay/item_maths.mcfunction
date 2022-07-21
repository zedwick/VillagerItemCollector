#function villager_item_collector:allay/item_maths
#
# To be execute as an item tagged as "vic_allayitem", which is bread.
#
# Allay:    @e[tag=vic_current,limit=1]
# Item:     @s
#
# Slot Inventory: bread
#

# First obtain amount of inventory item the allay has. Only in slot 0, as items will only be put here.
execute as @e[tag=vic_current,limit=1] store result score @s vic_breadc run data get entity @s Inventory[0].Count 1

# Also obtain size of item stack.
execute store result score @s vic_breadc run data get entity @s Item.Count 1

## Now we have the item stack size of both allay and item in the scoreboard. Do operations.
# TODO: Will need to account for items that do not stack to 64
#
# Save the original Allay's inventory count to use later
scoreboard players operation inv vic_breadc = @e[tag=vic_current,limit=1] vic_breadc
# Add Item vic_breadc score to allay vic_breadc score
scoreboard players operation @e[tag=vic_current,limit=1] vic_breadc += @s vic_breadc
# Set total vic_breadc score to allay's vic_breadc score (total of allay + item count)
scoreboard players operation total vic_breadc = @e[tag=vic_current] vic_breadc
# Set over vic_breadc score to Allay's vic_breadc score (total of allay + item count)
scoreboard players operation over vic_breadc = @e[tag=vic_current] vic_breadc
# Remove 64 from over_vic_breadc score
scoreboard players operation over vic_breadc -= 64 vic_constants
# Sets over vic_breadc to 0 only if over is less than 0
scoreboard players operation over vic_breadc > 0 vic_constants
# Remove over vic_breadc from Allay's vic_breadc score (if allay's vic_breadc score is over 64, reduce it down to our maximum stack size of 64)
scoreboard players operation @e[tag=vic_current,limit=1] vic_breadc -= over vic_breadc
# Remove over vic_breadc from Item's vic_breadc score
scoreboard players operation @s vic_breadc -= over vic_breadc
# Set Iem's vic_breadc score to total vic_breadc
scoreboard players operation @s vic_breadc = total vic_breadc
# Remove Allay's vic_breadc score from Item's vic_breadc score
scoreboard players operation @s vic_breadc -= @e[tag=vic_current,limit=1] vic_breadc
#scoreboard players set over vic_breadc 0

#
# At this point vic_breadc score of both allay and item are the number of items they should have in their stack.
#

# Copy item from inv/hand to working storage location
function villager_item_collector:allay/copy_allay_item_to_working

# Debug
say pre-setting item entity Count
function villager_item_collector:debug/allay_and_item

## Remove Allay's vic_breadc score from Item's vic_breadc score
# 
# Workaround: when setting the item in slot 0 of an allay it will not overwrite the old item, but will instead add their counts together.
# So we must set our new item's count to be the just the amount we need to add to the old count.
# 
execute if data entity @e[tag=vic_current,limit=1] Inventory[0] run scoreboard players operation @e[tag=vic_current,limit=1] vic_breadc -= inv vic_breadc

# Set item count in working storage location
execute store result storage villageritemcollector:allay working.Count byte 1.0 run scoreboard players get @e[tag=vic_current,limit=1] vic_breadc

# Copy working item to allay inventory
#data remove entity @e[tag=vic_current,limit=1] Inventory[0]
execute unless data entity @e[tag=vic_current,limit=1] Inventory[0] run data modify entity @e[tag=vic_current,limit=1] Inventory append from storage villageritemcollector:allay working
execute if data entity @e[tag=vic_current,limit=1] Inventory[0] run data modify entity @e[tag=vic_current,limit=1] Inventory set from storage villageritemcollector:allay working

# Debug
say Post-setting item entity Count
function villager_item_collector:debug/allay_and_item

# Do an equally tedious and boring method to set the item stack size as well boooooo.
kill @s[scores={vic_breadc=0}]
execute store result entity @s Item.Count int 1.0 run scoreboard players get @s vic_breadc
