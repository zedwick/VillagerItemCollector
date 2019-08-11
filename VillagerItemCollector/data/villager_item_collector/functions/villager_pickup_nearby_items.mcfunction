#function villageritemcollector:villager_pickup_nearby_items
#
# when executed as&at a villager, will find nearby food items required for breeding and add them to the villager's inventory.
#
# Slot villager.0: bread
# Slot villager.1: carrot
# Slot villager.2: potato
# Slot villager.3: beetroot
#
#
# find nearby items and tag them with "villagerfood"
execute as @e[type=item,distance=..1,nbt={PickupDelay:0s}] run function villager_item_collector:nearby_item
#
# execute at item (so we can use @e[type=minecraft:item,distance=0] and still target the villager with @s)
execute at @e[type=item,distance=..1,tag=vic_villagerfood,limit=1,nbt={Item:{"id":"minecraft:bread"}}] run function villager_item_collector:villager_food_item
execute at @e[type=item,distance=..1,tag=vic_villagerfood,limit=1,nbt={Item:{"id":"minecraft:carrot"}}] run function villager_item_collector:villager_food_item
execute at @e[type=item,distance=..1,tag=vic_villagerfood,limit=1,nbt={Item:{"id":"minecraft:potato"}}] run function villager_item_collector:villager_food_item
execute at @e[type=item,distance=..1,tag=vic_villagerfood,limit=1,nbt={Item:{"id":"minecraft:beetroot"}}] run function villager_item_collector:villager_food_item
#
#Add vic_done tag to the villager
#execute at @s run particle minecraft:crit ~ ~4 ~ 0.1 0.1 0.1 0.01 5 normal
tag @s add vic_done
