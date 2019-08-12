#function villager_item_collector:load
#
# This function runs when the datapack is loaded,
# which occurs on server load or when the /reload command is ran.
#

# Bread count objective.
scoreboard objectives add vic_breadc dummy

# Carrot count objective.
scoreboard objectives add vic_carrotc dummy

# Potato count objective.
scoreboard objectives add vic_potatoc dummy

# Beetroot count objective.
scoreboard objectives add vic_beetrootc dummy

# Constant values for use in scoreboard operations
scoreboard objectives add vic_constants dummy
scoreboard players set 64 vic_constants 64
scoreboard players set 1 vic_constants 1
scoreboard players set 0 vic_constants 0
