#function villager_item_collector:villager_food_item_bread
#
# to be execute as a villager at an item tagged as villagerfood which is bread.
#
# Villager: @s
# Item:     @e[type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}}]
#
# Slot villager.0: bread
#
say villager_food_item_bread function ran with the maths in it
#
# First obtain amount of bread the villager has. Only in slot 0, as bread will only be put here.
#
execute as @s store result score @s vic_breadc run data get entity @s Inventory[0].Count 1
#
#also obtain size of item stack.
#
execute as @e[type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}}] store result score @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}}] vic_breadc run data get entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}}] Item.Count 1
#
#now we have the item stack size of both villager and item in the scoreboard. Do operations.
execute as @s run scoreboard players operation @s vic_breadc += @e[type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}}] vic_breadc
scoreboard players operation total vic_breadc = @s vic_breadc
scoreboard players operation over vic_breadc = @s vic_breadc
scoreboard players operation over vic_breadc -= 64 vic_constants
scoreboard players operation over vic_breadc > 0 vic_constants
scoreboard players operation @s vic_breadc -= over vic_breadc
scoreboard players operation @e[type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}}] vic_breadc -= over vic_breadc
scoreboard players operation @e[type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}}] vic_breadc = total vic_breadc
scoreboard players operation @e[type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}}] vic_breadc -= @s vic_breadc
#scoreboard players set over vic_breadc 0
#At this point vic_breadc score of both villager and item are the number of items they should have in thier stack.
#do a tedious and repetative method in order to actually set this, booooo.
replaceitem entity @s[scores={vic_breadc=1}] villager.0 bread 1
replaceitem entity @s[scores={vic_breadc=2}] villager.0 bread 2
replaceitem entity @s[scores={vic_breadc=3}] villager.0 bread 3
replaceitem entity @s[scores={vic_breadc=4}] villager.0 bread 4
replaceitem entity @s[scores={vic_breadc=5}] villager.0 bread 5
#
#do an equally tedious and boring method to set the item stack size as well boooooo.
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=0}] {Item:{id:"minecraft:bread",Count:0b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=1}] {Item:{id:"minecraft:bread",Count:1b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=2}] {Item:{id:"minecraft:bread",Count:2b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=3}] {Item:{id:"minecraft:bread",Count:3b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=4}] {Item:{id:"minecraft:bread",Count:4b}}
#
#
#
# Is there room in the villager inventory?
# if so, how much room and can we fit the whole item stack into it?
# if we can, insert whole item stack count and kill item,
# otherwise add what you need to villager
# and take what you need from the item stack
