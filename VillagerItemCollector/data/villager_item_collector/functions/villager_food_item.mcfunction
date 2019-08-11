#function villager_item_collector:villager_food_item
#
# to be execute as a villager at an item tagged as villager food.
#
# Villager: @s
# Item:     @e[type=minecraft:item,distance=0]
#
# Slot villager.0: bread
# Slot villager.1: carrot
# Slot villager.2: potato
# Slot villager.3: beetroot
#
# Which food type is it?
execute if entity @e[type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}}] run function villager_item_collector:villager_food_item_bread
#
#tidy up scoreboard so it isn't full of villagers
scoreboard players reset @s vic_breadc
scoreboard players reset @s vic_carrotc
scoreboard players reset @s vic_potatoc
scoreboard players reset @s vic_beetrootc
#
#Add vic_done tag to the villager
execute at @s run particle minecraft:crit ~ ~4 ~ 0.1 0.1 0.1 0.01 5 normal
tag @s add vic_done
# We could tidy up our vic_villagerfood tag here, but we probably don't need to.
# tag remove @e[type=minecraft:item,distance=0] villagerfood
