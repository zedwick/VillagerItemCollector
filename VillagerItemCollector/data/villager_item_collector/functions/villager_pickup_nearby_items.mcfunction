#function villageritemcollector:villager_pickup_nearby_items
#
# when executed as&at a villager, will find nearby food items required for breeding and add them to the villager's inventory.
#
# Slot villager.0: bread
# Slot villager.1: carrot
# Slot villager.2: potato
# Slot villager.3: beetroot
#

# tag current villager
tag @s add vic_current

# find nearby items and tag them with "villagerfood"
execute as @e[type=item,distance=..1,nbt={PickupDelay:0s}] run function villager_item_collector:nearby_item

# execute at item (so we can use @e[type=minecraft:item,distance=0] and still target the villager with @s)
execute as @e[type=item,distance=..1,tag=vic_villagerfood] run function villager_item_collector:villager_food_item

#tidy up scoreboard so it isn't full of villagers
scoreboard players reset @s vic_breadc
scoreboard players reset @s vic_carrotc
scoreboard players reset @s vic_potatoc
scoreboard players reset @s vic_beetrootc

#debug
#execute at @s run particle minecraft:crit ~ ~4 ~ 0.1 0.1 0.1 0.01 5 normal

# unmark villager as current, and mark as done.
tag @s remove vic_current
tag @s add vic_done
