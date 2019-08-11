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
execute as @e[type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}}] store result score @s vic_breadc run data get entity @s Item.Count 1
#
#now we have the item stack size of both villager and item in the scoreboard. Do operations.
run scoreboard players operation @s vic_breadc += @e[type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}}] vic_breadc
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
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=5}] {Item:{id:"minecraft:bread",Count:5b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=6}] {Item:{id:"minecraft:bread",Count:6b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=7}] {Item:{id:"minecraft:bread",Count:7b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=8}] {Item:{id:"minecraft:bread",Count:8b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=9}] {Item:{id:"minecraft:bread",Count:9b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=10}] {Item:{id:"minecraft:bread",Count:10b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=11}] {Item:{id:"minecraft:bread",Count:11b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=12}] {Item:{id:"minecraft:bread",Count:12b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=13}] {Item:{id:"minecraft:bread",Count:13b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=14}] {Item:{id:"minecraft:bread",Count:14b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=15}] {Item:{id:"minecraft:bread",Count:15b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=16}] {Item:{id:"minecraft:bread",Count:16b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=17}] {Item:{id:"minecraft:bread",Count:17b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=18}] {Item:{id:"minecraft:bread",Count:18b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=19}] {Item:{id:"minecraft:bread",Count:19b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=20}] {Item:{id:"minecraft:bread",Count:20b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=21}] {Item:{id:"minecraft:bread",Count:21b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=22}] {Item:{id:"minecraft:bread",Count:22b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=23}] {Item:{id:"minecraft:bread",Count:23b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=24}] {Item:{id:"minecraft:bread",Count:24b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=25}] {Item:{id:"minecraft:bread",Count:25b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=26}] {Item:{id:"minecraft:bread",Count:26b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=27}] {Item:{id:"minecraft:bread",Count:27b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=28}] {Item:{id:"minecraft:bread",Count:28b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=29}] {Item:{id:"minecraft:bread",Count:29b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=30}] {Item:{id:"minecraft:bread",Count:30b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=31}] {Item:{id:"minecraft:bread",Count:31b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=32}] {Item:{id:"minecraft:bread",Count:32b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=33}] {Item:{id:"minecraft:bread",Count:33b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=34}] {Item:{id:"minecraft:bread",Count:34b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=35}] {Item:{id:"minecraft:bread",Count:35b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=36}] {Item:{id:"minecraft:bread",Count:36b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=37}] {Item:{id:"minecraft:bread",Count:37b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=38}] {Item:{id:"minecraft:bread",Count:38b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=39}] {Item:{id:"minecraft:bread",Count:39b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=40}] {Item:{id:"minecraft:bread",Count:40b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=41}] {Item:{id:"minecraft:bread",Count:41b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=42}] {Item:{id:"minecraft:bread",Count:42b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=43}] {Item:{id:"minecraft:bread",Count:43b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=44}] {Item:{id:"minecraft:bread",Count:44b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=45}] {Item:{id:"minecraft:bread",Count:45b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=46}] {Item:{id:"minecraft:bread",Count:46b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=47}] {Item:{id:"minecraft:bread",Count:47b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=48}] {Item:{id:"minecraft:bread",Count:48b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=49}] {Item:{id:"minecraft:bread",Count:49b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=50}] {Item:{id:"minecraft:bread",Count:50b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=51}] {Item:{id:"minecraft:bread",Count:51b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=52}] {Item:{id:"minecraft:bread",Count:52b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=53}] {Item:{id:"minecraft:bread",Count:53b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=54}] {Item:{id:"minecraft:bread",Count:54b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=55}] {Item:{id:"minecraft:bread",Count:55b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=56}] {Item:{id:"minecraft:bread",Count:56b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=57}] {Item:{id:"minecraft:bread",Count:57b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=58}] {Item:{id:"minecraft:bread",Count:58b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=59}] {Item:{id:"minecraft:bread",Count:59b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=60}] {Item:{id:"minecraft:bread",Count:60b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=61}] {Item:{id:"minecraft:bread",Count:61b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=62}] {Item:{id:"minecraft:bread",Count:62b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=63}] {Item:{id:"minecraft:bread",Count:63b}}
data merge entity @e[limit=1,type=minecraft:item,distance=0,nbt={Item:{"id":"minecraft:bread"}},scores={vic_breadc=64}] {Item:{id:"minecraft:bread",Count:64b}}
#
#
# Is there room in the villager inventory?
# if so, how much room and can we fit the whole item stack into it?
# if we can, insert whole item stack count and kill item,
# otherwise add what you need to villager
# and take what you need from the item stack
