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
item replace entity @e[tag=vic_current,scores={vic_potatoc=1}] villager.2 with potato 1
item replace entity @e[tag=vic_current,scores={vic_potatoc=2}] villager.2 with potato 2
item replace entity @e[tag=vic_current,scores={vic_potatoc=3}] villager.2 with potato 3
item replace entity @e[tag=vic_current,scores={vic_potatoc=4}] villager.2 with potato 4
item replace entity @e[tag=vic_current,scores={vic_potatoc=5}] villager.2 with potato 5
item replace entity @e[tag=vic_current,scores={vic_potatoc=6}] villager.2 with potato 6
item replace entity @e[tag=vic_current,scores={vic_potatoc=7}] villager.2 with potato 7
item replace entity @e[tag=vic_current,scores={vic_potatoc=8}] villager.2 with potato 8
item replace entity @e[tag=vic_current,scores={vic_potatoc=9}] villager.2 with potato 9
item replace entity @e[tag=vic_current,scores={vic_potatoc=10}] villager.2 with potato 10
item replace entity @e[tag=vic_current,scores={vic_potatoc=11}] villager.2 with potato 11
item replace entity @e[tag=vic_current,scores={vic_potatoc=12}] villager.2 with potato 12
item replace entity @e[tag=vic_current,scores={vic_potatoc=13}] villager.2 with potato 13
item replace entity @e[tag=vic_current,scores={vic_potatoc=14}] villager.2 with potato 14
item replace entity @e[tag=vic_current,scores={vic_potatoc=15}] villager.2 with potato 15
item replace entity @e[tag=vic_current,scores={vic_potatoc=16}] villager.2 with potato 16
item replace entity @e[tag=vic_current,scores={vic_potatoc=17}] villager.2 with potato 17
item replace entity @e[tag=vic_current,scores={vic_potatoc=18}] villager.2 with potato 18
item replace entity @e[tag=vic_current,scores={vic_potatoc=19}] villager.2 with potato 19
item replace entity @e[tag=vic_current,scores={vic_potatoc=20}] villager.2 with potato 20
item replace entity @e[tag=vic_current,scores={vic_potatoc=21}] villager.2 with potato 21
item replace entity @e[tag=vic_current,scores={vic_potatoc=22}] villager.2 with potato 22
item replace entity @e[tag=vic_current,scores={vic_potatoc=23}] villager.2 with potato 23
item replace entity @e[tag=vic_current,scores={vic_potatoc=24}] villager.2 with potato 24
item replace entity @e[tag=vic_current,scores={vic_potatoc=25}] villager.2 with potato 25
item replace entity @e[tag=vic_current,scores={vic_potatoc=26}] villager.2 with potato 26
item replace entity @e[tag=vic_current,scores={vic_potatoc=27}] villager.2 with potato 27
item replace entity @e[tag=vic_current,scores={vic_potatoc=28}] villager.2 with potato 28
item replace entity @e[tag=vic_current,scores={vic_potatoc=29}] villager.2 with potato 29
item replace entity @e[tag=vic_current,scores={vic_potatoc=30}] villager.2 with potato 30
item replace entity @e[tag=vic_current,scores={vic_potatoc=31}] villager.2 with potato 31
item replace entity @e[tag=vic_current,scores={vic_potatoc=32}] villager.2 with potato 32
item replace entity @e[tag=vic_current,scores={vic_potatoc=33}] villager.2 with potato 33
item replace entity @e[tag=vic_current,scores={vic_potatoc=34}] villager.2 with potato 34
item replace entity @e[tag=vic_current,scores={vic_potatoc=35}] villager.2 with potato 35
item replace entity @e[tag=vic_current,scores={vic_potatoc=36}] villager.2 with potato 36
item replace entity @e[tag=vic_current,scores={vic_potatoc=37}] villager.2 with potato 37
item replace entity @e[tag=vic_current,scores={vic_potatoc=38}] villager.2 with potato 38
item replace entity @e[tag=vic_current,scores={vic_potatoc=39}] villager.2 with potato 39
item replace entity @e[tag=vic_current,scores={vic_potatoc=40}] villager.2 with potato 40
item replace entity @e[tag=vic_current,scores={vic_potatoc=41}] villager.2 with potato 41
item replace entity @e[tag=vic_current,scores={vic_potatoc=42}] villager.2 with potato 42
item replace entity @e[tag=vic_current,scores={vic_potatoc=43}] villager.2 with potato 43
item replace entity @e[tag=vic_current,scores={vic_potatoc=44}] villager.2 with potato 44
item replace entity @e[tag=vic_current,scores={vic_potatoc=45}] villager.2 with potato 45
item replace entity @e[tag=vic_current,scores={vic_potatoc=46}] villager.2 with potato 46
item replace entity @e[tag=vic_current,scores={vic_potatoc=47}] villager.2 with potato 47
item replace entity @e[tag=vic_current,scores={vic_potatoc=48}] villager.2 with potato 48
item replace entity @e[tag=vic_current,scores={vic_potatoc=49}] villager.2 with potato 49
item replace entity @e[tag=vic_current,scores={vic_potatoc=50}] villager.2 with potato 50
item replace entity @e[tag=vic_current,scores={vic_potatoc=51}] villager.2 with potato 51
item replace entity @e[tag=vic_current,scores={vic_potatoc=52}] villager.2 with potato 52
item replace entity @e[tag=vic_current,scores={vic_potatoc=53}] villager.2 with potato 53
item replace entity @e[tag=vic_current,scores={vic_potatoc=54}] villager.2 with potato 54
item replace entity @e[tag=vic_current,scores={vic_potatoc=55}] villager.2 with potato 55
item replace entity @e[tag=vic_current,scores={vic_potatoc=56}] villager.2 with potato 56
item replace entity @e[tag=vic_current,scores={vic_potatoc=57}] villager.2 with potato 57
item replace entity @e[tag=vic_current,scores={vic_potatoc=58}] villager.2 with potato 58
item replace entity @e[tag=vic_current,scores={vic_potatoc=59}] villager.2 with potato 59
item replace entity @e[tag=vic_current,scores={vic_potatoc=60}] villager.2 with potato 60
item replace entity @e[tag=vic_current,scores={vic_potatoc=61}] villager.2 with potato 61
item replace entity @e[tag=vic_current,scores={vic_potatoc=62}] villager.2 with potato 62
item replace entity @e[tag=vic_current,scores={vic_potatoc=63}] villager.2 with potato 63
item replace entity @e[tag=vic_current,scores={vic_potatoc=64}] villager.2 with potato 64

# Do an equally tedious and boring method to set the item stack size as well boooooo.
kill @s[scores={vic_potatoc=0}]
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
