#function villager_item_collector:debug/allay_and_item
#
# Will display the current villager and current item entity's Inventory/Item NBT for comparison.
#
# Villager:     @e[tag=vic_current]
# Item:         @s
# Storages:     villageritemcollector:allay hand
#               villageritemcollector:allay inv
#               villageritemcollector:allay item
#               villageritemcollector:allay working
#

tellraw @a {"text":"Allay has ","extra":[{"nbt":"Inventory","entity":"@e[tag=vic_current]","color":"green"},{"text":" and item is "},{"nbt":"Item","entity":"@s","color":"aqua"},{"text":". Storage values... hand: "},{"nbt":"hand","storage":"villageritemcollector:allay","color":"dark_green"},{"text":", inv: "},{"nbt":"inv","storage":"villageritemcollector:allay","color":"green"},{"text":", item: "},{"nbt":"item","storage":"villageritemcollector:allay","color":"aqua"},{"text":", working: "},{"nbt":"working","storage":"villageritemcollector:allay","color":"gold"},{"text":". Scores... Allay vic_breadc="},{"score":{"name":"@e[tag=vic_current,limit=1]","objective":"vic_breadc"},"color":"green"},{"text":", inv vic_breadc="},{"score":{"name":"inv","objective":"vic_breadc"},"color":"gray"},{"text":", Item vic_breadc="},{"score":{"name":"@s","objective":"vic_breadc"},"color":"aqua"}]}
