#function villager_item_collector:allay/reset_and_wait
#
# removes vic_done from all loaded allays,
# allowing all allays to be re-checked next time.
#

# Remove the tag "vic_done" from all allays,
# ready to start iterating through them again next tick.
tag @e[type=allay,tag=vic_done] remove vic_done

# Override schedule for villager_item_collector:check_all_allays
# to delay it for 1 second.
schedule function villager_item_collector:allay/check_all_allays 1s
