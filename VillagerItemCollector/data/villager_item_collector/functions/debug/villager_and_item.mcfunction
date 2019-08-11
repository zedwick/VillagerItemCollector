#function villager_item_collector:debug/villager_and_item
#
# Will display the current villager and current item entity's Inventory/Item NBT for comparison.
#
# Villager: @e[tag=vic_current]
# Item:      @s
#

tellraw @a {"text":"Villager has ","extra":[{"nbt":"Inventory","entity":"@e[tag=vic_current]","color":"green"},{"text":" and item is "},{"nbt":"Item","entity":"@s","color":"aqua"}]}
