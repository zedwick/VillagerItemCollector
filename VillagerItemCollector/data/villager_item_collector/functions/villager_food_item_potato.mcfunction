#function villager_item_collector:villager_food_item_potato
#
# To be execute as an item tagged as "vic_villagerfood", which is potato.
#
# Villager: @e[tag=vic_current]
# Item:     @s
#
# Slot villager.2: potato
#

# First obtain amount of potato the villager has. Only in slot 0, as potato will only be put here.
execute as @e[tag=vic_current] store result score @s vic_potatoc run data get entity @s Inventory[{"id":"minecraft:potato"}].Count 1

# Also obtain size of item stack.
execute store result score @s vic_potatoc run data get entity @s Item.Count 1

# Now we have the item stack size of both villager and item in the scoreboard. Do operations.
scoreboard players operation @e[tag=vic_current] vic_potatoc += @s vic_potatoc
scoreboard players operation total vic_potatoc = @e[tag=vic_current] vic_potatoc
scoreboard players operation over vic_potatoc = @e[tag=vic_current] vic_potatoc
scoreboard players operation over vic_potatoc -= 64 vic_constants
scoreboard players operation over vic_potatoc > 0 vic_constants
scoreboard players operation @e[tag=vic_current] vic_potatoc -= over vic_potatoc
scoreboard players operation @s vic_potatoc -= over vic_potatoc
scoreboard players operation @s vic_potatoc = total vic_potatoc
scoreboard players operation @s vic_potatoc -= @e[tag=vic_current] vic_potatoc
#scoreboard players set over vic_potatoc 0

#
# At this point vic_potatoc score of both villager and item are the number of items they should have in their stack.
#

# Do a tedious and repetitive method in order to actually set this, booooo.
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=1}] villager.2 potato 1
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=2}] villager.2 potato 2
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=3}] villager.2 potato 3
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=4}] villager.2 potato 4
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=5}] villager.2 potato 5
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=6}] villager.2 potato 6
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=7}] villager.2 potato 7
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=8}] villager.2 potato 8
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=9}] villager.2 potato 9
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=10}] villager.2 potato 10
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=11}] villager.2 potato 11
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=12}] villager.2 potato 12
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=13}] villager.2 potato 13
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=14}] villager.2 potato 14
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=15}] villager.2 potato 15
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=16}] villager.2 potato 16
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=17}] villager.2 potato 17
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=18}] villager.2 potato 18
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=19}] villager.2 potato 19
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=20}] villager.2 potato 20
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=21}] villager.2 potato 21
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=22}] villager.2 potato 22
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=23}] villager.2 potato 23
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=24}] villager.2 potato 24
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=25}] villager.2 potato 25
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=26}] villager.2 potato 26
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=27}] villager.2 potato 27
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=28}] villager.2 potato 28
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=29}] villager.2 potato 29
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=30}] villager.2 potato 30
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=31}] villager.2 potato 31
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=32}] villager.2 potato 32
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=33}] villager.2 potato 33
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=34}] villager.2 potato 34
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=35}] villager.2 potato 35
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=36}] villager.2 potato 36
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=37}] villager.2 potato 37
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=38}] villager.2 potato 38
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=39}] villager.2 potato 39
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=40}] villager.2 potato 40
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=41}] villager.2 potato 41
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=42}] villager.2 potato 42
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=43}] villager.2 potato 43
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=44}] villager.2 potato 44
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=45}] villager.2 potato 45
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=46}] villager.2 potato 46
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=47}] villager.2 potato 47
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=48}] villager.2 potato 48
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=49}] villager.2 potato 49
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=50}] villager.2 potato 50
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=51}] villager.2 potato 51
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=52}] villager.2 potato 52
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=53}] villager.2 potato 53
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=54}] villager.2 potato 54
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=55}] villager.2 potato 55
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=56}] villager.2 potato 56
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=57}] villager.2 potato 57
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=58}] villager.2 potato 58
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=59}] villager.2 potato 59
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=60}] villager.2 potato 60
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=61}] villager.2 potato 61
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=62}] villager.2 potato 62
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=63}] villager.2 potato 63
replaceitem entity @e[tag=vic_current,scores={vic_potatoc=64}] villager.2 potato 64

# Do an equally tedious and boring method to set the item stack size as well boooooo.
data merge entity @s[scores={vic_potatoc=0}] {Item:{id:"minecraft:potato",Count:0b}}
data merge entity @s[scores={vic_potatoc=1}] {Item:{id:"minecraft:potato",Count:1b}}
data merge entity @s[scores={vic_potatoc=2}] {Item:{id:"minecraft:potato",Count:2b}}
data merge entity @s[scores={vic_potatoc=3}] {Item:{id:"minecraft:potato",Count:3b}}
data merge entity @s[scores={vic_potatoc=4}] {Item:{id:"minecraft:potato",Count:4b}}
data merge entity @s[scores={vic_potatoc=5}] {Item:{id:"minecraft:potato",Count:5b}}
data merge entity @s[scores={vic_potatoc=6}] {Item:{id:"minecraft:potato",Count:6b}}
data merge entity @s[scores={vic_potatoc=7}] {Item:{id:"minecraft:potato",Count:7b}}
data merge entity @s[scores={vic_potatoc=8}] {Item:{id:"minecraft:potato",Count:8b}}
data merge entity @s[scores={vic_potatoc=9}] {Item:{id:"minecraft:potato",Count:9b}}
data merge entity @s[scores={vic_potatoc=10}] {Item:{id:"minecraft:potato",Count:10b}}
data merge entity @s[scores={vic_potatoc=11}] {Item:{id:"minecraft:potato",Count:11b}}
data merge entity @s[scores={vic_potatoc=12}] {Item:{id:"minecraft:potato",Count:12b}}
data merge entity @s[scores={vic_potatoc=13}] {Item:{id:"minecraft:potato",Count:13b}}
data merge entity @s[scores={vic_potatoc=14}] {Item:{id:"minecraft:potato",Count:14b}}
data merge entity @s[scores={vic_potatoc=15}] {Item:{id:"minecraft:potato",Count:15b}}
data merge entity @s[scores={vic_potatoc=16}] {Item:{id:"minecraft:potato",Count:16b}}
data merge entity @s[scores={vic_potatoc=17}] {Item:{id:"minecraft:potato",Count:17b}}
data merge entity @s[scores={vic_potatoc=18}] {Item:{id:"minecraft:potato",Count:18b}}
data merge entity @s[scores={vic_potatoc=19}] {Item:{id:"minecraft:potato",Count:19b}}
data merge entity @s[scores={vic_potatoc=20}] {Item:{id:"minecraft:potato",Count:20b}}
data merge entity @s[scores={vic_potatoc=21}] {Item:{id:"minecraft:potato",Count:21b}}
data merge entity @s[scores={vic_potatoc=22}] {Item:{id:"minecraft:potato",Count:22b}}
data merge entity @s[scores={vic_potatoc=23}] {Item:{id:"minecraft:potato",Count:23b}}
data merge entity @s[scores={vic_potatoc=24}] {Item:{id:"minecraft:potato",Count:24b}}
data merge entity @s[scores={vic_potatoc=25}] {Item:{id:"minecraft:potato",Count:25b}}
data merge entity @s[scores={vic_potatoc=26}] {Item:{id:"minecraft:potato",Count:26b}}
data merge entity @s[scores={vic_potatoc=27}] {Item:{id:"minecraft:potato",Count:27b}}
data merge entity @s[scores={vic_potatoc=28}] {Item:{id:"minecraft:potato",Count:28b}}
data merge entity @s[scores={vic_potatoc=29}] {Item:{id:"minecraft:potato",Count:29b}}
data merge entity @s[scores={vic_potatoc=30}] {Item:{id:"minecraft:potato",Count:30b}}
data merge entity @s[scores={vic_potatoc=31}] {Item:{id:"minecraft:potato",Count:31b}}
data merge entity @s[scores={vic_potatoc=32}] {Item:{id:"minecraft:potato",Count:32b}}
data merge entity @s[scores={vic_potatoc=33}] {Item:{id:"minecraft:potato",Count:33b}}
data merge entity @s[scores={vic_potatoc=34}] {Item:{id:"minecraft:potato",Count:34b}}
data merge entity @s[scores={vic_potatoc=35}] {Item:{id:"minecraft:potato",Count:35b}}
data merge entity @s[scores={vic_potatoc=36}] {Item:{id:"minecraft:potato",Count:36b}}
data merge entity @s[scores={vic_potatoc=37}] {Item:{id:"minecraft:potato",Count:37b}}
data merge entity @s[scores={vic_potatoc=38}] {Item:{id:"minecraft:potato",Count:38b}}
data merge entity @s[scores={vic_potatoc=39}] {Item:{id:"minecraft:potato",Count:39b}}
data merge entity @s[scores={vic_potatoc=40}] {Item:{id:"minecraft:potato",Count:40b}}
data merge entity @s[scores={vic_potatoc=41}] {Item:{id:"minecraft:potato",Count:41b}}
data merge entity @s[scores={vic_potatoc=42}] {Item:{id:"minecraft:potato",Count:42b}}
data merge entity @s[scores={vic_potatoc=43}] {Item:{id:"minecraft:potato",Count:43b}}
data merge entity @s[scores={vic_potatoc=44}] {Item:{id:"minecraft:potato",Count:44b}}
data merge entity @s[scores={vic_potatoc=45}] {Item:{id:"minecraft:potato",Count:45b}}
data merge entity @s[scores={vic_potatoc=46}] {Item:{id:"minecraft:potato",Count:46b}}
data merge entity @s[scores={vic_potatoc=47}] {Item:{id:"minecraft:potato",Count:47b}}
data merge entity @s[scores={vic_potatoc=48}] {Item:{id:"minecraft:potato",Count:48b}}
data merge entity @s[scores={vic_potatoc=49}] {Item:{id:"minecraft:potato",Count:49b}}
data merge entity @s[scores={vic_potatoc=50}] {Item:{id:"minecraft:potato",Count:50b}}
data merge entity @s[scores={vic_potatoc=51}] {Item:{id:"minecraft:potato",Count:51b}}
data merge entity @s[scores={vic_potatoc=52}] {Item:{id:"minecraft:potato",Count:52b}}
data merge entity @s[scores={vic_potatoc=53}] {Item:{id:"minecraft:potato",Count:53b}}
data merge entity @s[scores={vic_potatoc=54}] {Item:{id:"minecraft:potato",Count:54b}}
data merge entity @s[scores={vic_potatoc=55}] {Item:{id:"minecraft:potato",Count:55b}}
data merge entity @s[scores={vic_potatoc=56}] {Item:{id:"minecraft:potato",Count:56b}}
data merge entity @s[scores={vic_potatoc=57}] {Item:{id:"minecraft:potato",Count:57b}}
data merge entity @s[scores={vic_potatoc=58}] {Item:{id:"minecraft:potato",Count:58b}}
data merge entity @s[scores={vic_potatoc=59}] {Item:{id:"minecraft:potato",Count:59b}}
data merge entity @s[scores={vic_potatoc=60}] {Item:{id:"minecraft:potato",Count:60b}}
data merge entity @s[scores={vic_potatoc=61}] {Item:{id:"minecraft:potato",Count:61b}}
data merge entity @s[scores={vic_potatoc=62}] {Item:{id:"minecraft:potato",Count:62b}}
data merge entity @s[scores={vic_potatoc=63}] {Item:{id:"minecraft:potato",Count:63b}}
data merge entity @s[scores={vic_potatoc=64}] {Item:{id:"minecraft:potato",Count:64b}}
