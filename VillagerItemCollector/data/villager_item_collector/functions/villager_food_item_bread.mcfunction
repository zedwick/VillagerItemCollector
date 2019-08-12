#function villager_item_collector:villager_food_item_bread
#
# to be execute as a villager at an item tagged as villagerfood which is bread.
#
# Villager: @e[tag=vic_current]
# Item:     @s
#
# Slot villager.0: bread
#

# First obtain amount of bread the villager has. Only in slot 0, as bread will only be put here.
execute as @e[tag=vic_current] store result score @s vic_breadc run data get entity @s Inventory[{"id":"minecraft:bread"}].Count 1

# Also obtain size of item stack.
execute store result score @s vic_breadc run data get entity @s Item.Count 1

# Now we have the item stack size of both villager and item in the scoreboard. Do operations.
scoreboard players operation @e[tag=vic_current] vic_breadc += @s vic_breadc
scoreboard players operation total vic_breadc = @e[tag=vic_current] vic_breadc
scoreboard players operation over vic_breadc = @e[tag=vic_current] vic_breadc
scoreboard players operation over vic_breadc -= 64 vic_constants
scoreboard players operation over vic_breadc > 0 vic_constants
scoreboard players operation @e[tag=vic_current] vic_breadc -= over vic_breadc
scoreboard players operation @s vic_breadc -= over vic_breadc
scoreboard players operation @s vic_breadc = total vic_breadc
scoreboard players operation @s vic_breadc -= @e[tag=vic_current] vic_breadc
#scoreboard players set over vic_breadc 0

#
# At this point vic_breadc score of both villager and item are the number of items they should have in their stack.
#

# Do a tedious and repetitive method in order to actually set this, booooo.
replaceitem entity @e[tag=vic_current,scores={vic_breadc=1}] villager.0 bread 1
replaceitem entity @e[tag=vic_current,scores={vic_breadc=2}] villager.0 bread 2
replaceitem entity @e[tag=vic_current,scores={vic_breadc=3}] villager.0 bread 3
replaceitem entity @e[tag=vic_current,scores={vic_breadc=4}] villager.0 bread 4
replaceitem entity @e[tag=vic_current,scores={vic_breadc=5}] villager.0 bread 5
replaceitem entity @e[tag=vic_current,scores={vic_breadc=6}] villager.0 bread 6
replaceitem entity @e[tag=vic_current,scores={vic_breadc=7}] villager.0 bread 7
replaceitem entity @e[tag=vic_current,scores={vic_breadc=8}] villager.0 bread 8
replaceitem entity @e[tag=vic_current,scores={vic_breadc=9}] villager.0 bread 9
replaceitem entity @e[tag=vic_current,scores={vic_breadc=10}] villager.0 bread 10
replaceitem entity @e[tag=vic_current,scores={vic_breadc=11}] villager.0 bread 11
replaceitem entity @e[tag=vic_current,scores={vic_breadc=12}] villager.0 bread 12
replaceitem entity @e[tag=vic_current,scores={vic_breadc=13}] villager.0 bread 13
replaceitem entity @e[tag=vic_current,scores={vic_breadc=14}] villager.0 bread 14
replaceitem entity @e[tag=vic_current,scores={vic_breadc=15}] villager.0 bread 15
replaceitem entity @e[tag=vic_current,scores={vic_breadc=16}] villager.0 bread 16
replaceitem entity @e[tag=vic_current,scores={vic_breadc=17}] villager.0 bread 17
replaceitem entity @e[tag=vic_current,scores={vic_breadc=18}] villager.0 bread 18
replaceitem entity @e[tag=vic_current,scores={vic_breadc=19}] villager.0 bread 19
replaceitem entity @e[tag=vic_current,scores={vic_breadc=20}] villager.0 bread 20
replaceitem entity @e[tag=vic_current,scores={vic_breadc=21}] villager.0 bread 21
replaceitem entity @e[tag=vic_current,scores={vic_breadc=22}] villager.0 bread 22
replaceitem entity @e[tag=vic_current,scores={vic_breadc=23}] villager.0 bread 23
replaceitem entity @e[tag=vic_current,scores={vic_breadc=24}] villager.0 bread 24
replaceitem entity @e[tag=vic_current,scores={vic_breadc=25}] villager.0 bread 25
replaceitem entity @e[tag=vic_current,scores={vic_breadc=26}] villager.0 bread 26
replaceitem entity @e[tag=vic_current,scores={vic_breadc=27}] villager.0 bread 27
replaceitem entity @e[tag=vic_current,scores={vic_breadc=28}] villager.0 bread 28
replaceitem entity @e[tag=vic_current,scores={vic_breadc=29}] villager.0 bread 29
replaceitem entity @e[tag=vic_current,scores={vic_breadc=30}] villager.0 bread 30
replaceitem entity @e[tag=vic_current,scores={vic_breadc=31}] villager.0 bread 31
replaceitem entity @e[tag=vic_current,scores={vic_breadc=32}] villager.0 bread 32
replaceitem entity @e[tag=vic_current,scores={vic_breadc=33}] villager.0 bread 33
replaceitem entity @e[tag=vic_current,scores={vic_breadc=34}] villager.0 bread 34
replaceitem entity @e[tag=vic_current,scores={vic_breadc=35}] villager.0 bread 35
replaceitem entity @e[tag=vic_current,scores={vic_breadc=36}] villager.0 bread 36
replaceitem entity @e[tag=vic_current,scores={vic_breadc=37}] villager.0 bread 37
replaceitem entity @e[tag=vic_current,scores={vic_breadc=38}] villager.0 bread 38
replaceitem entity @e[tag=vic_current,scores={vic_breadc=39}] villager.0 bread 39
replaceitem entity @e[tag=vic_current,scores={vic_breadc=40}] villager.0 bread 40
replaceitem entity @e[tag=vic_current,scores={vic_breadc=41}] villager.0 bread 41
replaceitem entity @e[tag=vic_current,scores={vic_breadc=42}] villager.0 bread 42
replaceitem entity @e[tag=vic_current,scores={vic_breadc=43}] villager.0 bread 43
replaceitem entity @e[tag=vic_current,scores={vic_breadc=44}] villager.0 bread 44
replaceitem entity @e[tag=vic_current,scores={vic_breadc=45}] villager.0 bread 45
replaceitem entity @e[tag=vic_current,scores={vic_breadc=46}] villager.0 bread 46
replaceitem entity @e[tag=vic_current,scores={vic_breadc=47}] villager.0 bread 47
replaceitem entity @e[tag=vic_current,scores={vic_breadc=48}] villager.0 bread 48
replaceitem entity @e[tag=vic_current,scores={vic_breadc=49}] villager.0 bread 49
replaceitem entity @e[tag=vic_current,scores={vic_breadc=50}] villager.0 bread 50
replaceitem entity @e[tag=vic_current,scores={vic_breadc=51}] villager.0 bread 51
replaceitem entity @e[tag=vic_current,scores={vic_breadc=52}] villager.0 bread 52
replaceitem entity @e[tag=vic_current,scores={vic_breadc=53}] villager.0 bread 53
replaceitem entity @e[tag=vic_current,scores={vic_breadc=54}] villager.0 bread 54
replaceitem entity @e[tag=vic_current,scores={vic_breadc=55}] villager.0 bread 55
replaceitem entity @e[tag=vic_current,scores={vic_breadc=56}] villager.0 bread 56
replaceitem entity @e[tag=vic_current,scores={vic_breadc=57}] villager.0 bread 57
replaceitem entity @e[tag=vic_current,scores={vic_breadc=58}] villager.0 bread 58
replaceitem entity @e[tag=vic_current,scores={vic_breadc=59}] villager.0 bread 59
replaceitem entity @e[tag=vic_current,scores={vic_breadc=60}] villager.0 bread 60
replaceitem entity @e[tag=vic_current,scores={vic_breadc=61}] villager.0 bread 61
replaceitem entity @e[tag=vic_current,scores={vic_breadc=62}] villager.0 bread 62
replaceitem entity @e[tag=vic_current,scores={vic_breadc=63}] villager.0 bread 63
replaceitem entity @e[tag=vic_current,scores={vic_breadc=64}] villager.0 bread 64

# Do an equally tedious and boring method to set the item stack size as well boooooo.
data merge entity @s[scores={vic_breadc=0}] {Item:{id:"minecraft:bread",Count:0b}}
data merge entity @s[scores={vic_breadc=1}] {Item:{id:"minecraft:bread",Count:1b}}
data merge entity @s[scores={vic_breadc=2}] {Item:{id:"minecraft:bread",Count:2b}}
data merge entity @s[scores={vic_breadc=3}] {Item:{id:"minecraft:bread",Count:3b}}
data merge entity @s[scores={vic_breadc=4}] {Item:{id:"minecraft:bread",Count:4b}}
data merge entity @s[scores={vic_breadc=5}] {Item:{id:"minecraft:bread",Count:5b}}
data merge entity @s[scores={vic_breadc=6}] {Item:{id:"minecraft:bread",Count:6b}}
data merge entity @s[scores={vic_breadc=7}] {Item:{id:"minecraft:bread",Count:7b}}
data merge entity @s[scores={vic_breadc=8}] {Item:{id:"minecraft:bread",Count:8b}}
data merge entity @s[scores={vic_breadc=9}] {Item:{id:"minecraft:bread",Count:9b}}
data merge entity @s[scores={vic_breadc=10}] {Item:{id:"minecraft:bread",Count:10b}}
data merge entity @s[scores={vic_breadc=11}] {Item:{id:"minecraft:bread",Count:11b}}
data merge entity @s[scores={vic_breadc=12}] {Item:{id:"minecraft:bread",Count:12b}}
data merge entity @s[scores={vic_breadc=13}] {Item:{id:"minecraft:bread",Count:13b}}
data merge entity @s[scores={vic_breadc=14}] {Item:{id:"minecraft:bread",Count:14b}}
data merge entity @s[scores={vic_breadc=15}] {Item:{id:"minecraft:bread",Count:15b}}
data merge entity @s[scores={vic_breadc=16}] {Item:{id:"minecraft:bread",Count:16b}}
data merge entity @s[scores={vic_breadc=17}] {Item:{id:"minecraft:bread",Count:17b}}
data merge entity @s[scores={vic_breadc=18}] {Item:{id:"minecraft:bread",Count:18b}}
data merge entity @s[scores={vic_breadc=19}] {Item:{id:"minecraft:bread",Count:19b}}
data merge entity @s[scores={vic_breadc=20}] {Item:{id:"minecraft:bread",Count:20b}}
data merge entity @s[scores={vic_breadc=21}] {Item:{id:"minecraft:bread",Count:21b}}
data merge entity @s[scores={vic_breadc=22}] {Item:{id:"minecraft:bread",Count:22b}}
data merge entity @s[scores={vic_breadc=23}] {Item:{id:"minecraft:bread",Count:23b}}
data merge entity @s[scores={vic_breadc=24}] {Item:{id:"minecraft:bread",Count:24b}}
data merge entity @s[scores={vic_breadc=25}] {Item:{id:"minecraft:bread",Count:25b}}
data merge entity @s[scores={vic_breadc=26}] {Item:{id:"minecraft:bread",Count:26b}}
data merge entity @s[scores={vic_breadc=27}] {Item:{id:"minecraft:bread",Count:27b}}
data merge entity @s[scores={vic_breadc=28}] {Item:{id:"minecraft:bread",Count:28b}}
data merge entity @s[scores={vic_breadc=29}] {Item:{id:"minecraft:bread",Count:29b}}
data merge entity @s[scores={vic_breadc=30}] {Item:{id:"minecraft:bread",Count:30b}}
data merge entity @s[scores={vic_breadc=31}] {Item:{id:"minecraft:bread",Count:31b}}
data merge entity @s[scores={vic_breadc=32}] {Item:{id:"minecraft:bread",Count:32b}}
data merge entity @s[scores={vic_breadc=33}] {Item:{id:"minecraft:bread",Count:33b}}
data merge entity @s[scores={vic_breadc=34}] {Item:{id:"minecraft:bread",Count:34b}}
data merge entity @s[scores={vic_breadc=35}] {Item:{id:"minecraft:bread",Count:35b}}
data merge entity @s[scores={vic_breadc=36}] {Item:{id:"minecraft:bread",Count:36b}}
data merge entity @s[scores={vic_breadc=37}] {Item:{id:"minecraft:bread",Count:37b}}
data merge entity @s[scores={vic_breadc=38}] {Item:{id:"minecraft:bread",Count:38b}}
data merge entity @s[scores={vic_breadc=39}] {Item:{id:"minecraft:bread",Count:39b}}
data merge entity @s[scores={vic_breadc=40}] {Item:{id:"minecraft:bread",Count:40b}}
data merge entity @s[scores={vic_breadc=41}] {Item:{id:"minecraft:bread",Count:41b}}
data merge entity @s[scores={vic_breadc=42}] {Item:{id:"minecraft:bread",Count:42b}}
data merge entity @s[scores={vic_breadc=43}] {Item:{id:"minecraft:bread",Count:43b}}
data merge entity @s[scores={vic_breadc=44}] {Item:{id:"minecraft:bread",Count:44b}}
data merge entity @s[scores={vic_breadc=45}] {Item:{id:"minecraft:bread",Count:45b}}
data merge entity @s[scores={vic_breadc=46}] {Item:{id:"minecraft:bread",Count:46b}}
data merge entity @s[scores={vic_breadc=47}] {Item:{id:"minecraft:bread",Count:47b}}
data merge entity @s[scores={vic_breadc=48}] {Item:{id:"minecraft:bread",Count:48b}}
data merge entity @s[scores={vic_breadc=49}] {Item:{id:"minecraft:bread",Count:49b}}
data merge entity @s[scores={vic_breadc=50}] {Item:{id:"minecraft:bread",Count:50b}}
data merge entity @s[scores={vic_breadc=51}] {Item:{id:"minecraft:bread",Count:51b}}
data merge entity @s[scores={vic_breadc=52}] {Item:{id:"minecraft:bread",Count:52b}}
data merge entity @s[scores={vic_breadc=53}] {Item:{id:"minecraft:bread",Count:53b}}
data merge entity @s[scores={vic_breadc=54}] {Item:{id:"minecraft:bread",Count:54b}}
data merge entity @s[scores={vic_breadc=55}] {Item:{id:"minecraft:bread",Count:55b}}
data merge entity @s[scores={vic_breadc=56}] {Item:{id:"minecraft:bread",Count:56b}}
data merge entity @s[scores={vic_breadc=57}] {Item:{id:"minecraft:bread",Count:57b}}
data merge entity @s[scores={vic_breadc=58}] {Item:{id:"minecraft:bread",Count:58b}}
data merge entity @s[scores={vic_breadc=59}] {Item:{id:"minecraft:bread",Count:59b}}
data merge entity @s[scores={vic_breadc=60}] {Item:{id:"minecraft:bread",Count:60b}}
data merge entity @s[scores={vic_breadc=61}] {Item:{id:"minecraft:bread",Count:61b}}
data merge entity @s[scores={vic_breadc=62}] {Item:{id:"minecraft:bread",Count:62b}}
data merge entity @s[scores={vic_breadc=63}] {Item:{id:"minecraft:bread",Count:63b}}
data merge entity @s[scores={vic_breadc=64}] {Item:{id:"minecraft:bread",Count:64b}}

# Is there room in the villager inventory?
# if so, how much room and can we fit the whole item stack into it?
# if we can, insert whole item stack count and kill item,
# otherwise add what you need to villager
# and take what you need from the item stack
