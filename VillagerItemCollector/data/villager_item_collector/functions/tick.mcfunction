#function villager_item_collector:tick
#
# This function will run once every tick (20 times per second).
#

# Iterates through all villagers currently loaded across the server, limited to 10 villagers per tick.
# Once we are finished with a villager, they are marked with the tag "vic_done".
execute as @e[type=villager,limit=10,tag=!vic_done] at @s run function villager_item_collector:villager_pickup_nearby_items

# If there are no villagers left who do not have the tag "vic_done",
# then we know we have finished iterating through all currently loaded villagers.
# Therefore, we can now remove the tag "vic_done" from all villagers,
# ready to start iterating through them again next tick.
execute unless entity @e[type=villager,tag=!vic_done] run tag @e[type=villager,tag=vic_done] remove vic_done
