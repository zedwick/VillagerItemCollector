#function villager_item_collector:check_all_villagers
#

# Iterates through all villagers currently loaded across the server, limited to 10 villagers per tick.
# Once we are finished with a villager, they are marked with the tag "vic_done".
execute as @e[type=allay,limit=10,tag=!vic_done,sort=random] at @s run function villager_item_collector:allay/locate_item

# Schedules this function to be run again in 2 ticks.
# This schedule may be overriden if there are no villagers left to check,
# and the reset_and_wait function is run below.
schedule function villager_item_collector:allay/check_all_allays 2t

# If there are no villagers left who do not have the tag "vic_done",
# then we know we have finished iterating through all currently loaded villagers.
# Therefore, we can now remove the tag "vic_done" from all villagers,
# ready to start iterating through them again next tick.
execute unless entity @e[type=allay,tag=!vic_done] run function villager_item_collector:allay/reset_and_wait
