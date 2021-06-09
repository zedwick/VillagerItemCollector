#function villager_item_collector:villager_food_item_bread
#
# To be execute as an item tagged as "vic_villagerfood", which is bread.
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
item replace entity @e[tag=vic_current,scores={vic_breadc=1}] villager.0 with bread 1
item replace entity @e[tag=vic_current,scores={vic_breadc=2}] villager.0 with bread 2
item replace entity @e[tag=vic_current,scores={vic_breadc=3}] villager.0 with bread 3
item replace entity @e[tag=vic_current,scores={vic_breadc=4}] villager.0 with bread 4
item replace entity @e[tag=vic_current,scores={vic_breadc=5}] villager.0 with bread 5
item replace entity @e[tag=vic_current,scores={vic_breadc=6}] villager.0 with bread 6
item replace entity @e[tag=vic_current,scores={vic_breadc=7}] villager.0 with bread 7
item replace entity @e[tag=vic_current,scores={vic_breadc=8}] villager.0 with bread 8
item replace entity @e[tag=vic_current,scores={vic_breadc=9}] villager.0 with bread 9
item replace entity @e[tag=vic_current,scores={vic_breadc=10}] villager.0 with bread 10
item replace entity @e[tag=vic_current,scores={vic_breadc=11}] villager.0 with bread 11
item replace entity @e[tag=vic_current,scores={vic_breadc=12}] villager.0 with bread 12
item replace entity @e[tag=vic_current,scores={vic_breadc=13}] villager.0 with bread 13
item replace entity @e[tag=vic_current,scores={vic_breadc=14}] villager.0 with bread 14
item replace entity @e[tag=vic_current,scores={vic_breadc=15}] villager.0 with bread 15
item replace entity @e[tag=vic_current,scores={vic_breadc=16}] villager.0 with bread 16
item replace entity @e[tag=vic_current,scores={vic_breadc=17}] villager.0 with bread 17
item replace entity @e[tag=vic_current,scores={vic_breadc=18}] villager.0 with bread 18
item replace entity @e[tag=vic_current,scores={vic_breadc=19}] villager.0 with bread 19
item replace entity @e[tag=vic_current,scores={vic_breadc=20}] villager.0 with bread 20
item replace entity @e[tag=vic_current,scores={vic_breadc=21}] villager.0 with bread 21
item replace entity @e[tag=vic_current,scores={vic_breadc=22}] villager.0 with bread 22
item replace entity @e[tag=vic_current,scores={vic_breadc=23}] villager.0 with bread 23
item replace entity @e[tag=vic_current,scores={vic_breadc=24}] villager.0 with bread 24
item replace entity @e[tag=vic_current,scores={vic_breadc=25}] villager.0 with bread 25
item replace entity @e[tag=vic_current,scores={vic_breadc=26}] villager.0 with bread 26
item replace entity @e[tag=vic_current,scores={vic_breadc=27}] villager.0 with bread 27
item replace entity @e[tag=vic_current,scores={vic_breadc=28}] villager.0 with bread 28
item replace entity @e[tag=vic_current,scores={vic_breadc=29}] villager.0 with bread 29
item replace entity @e[tag=vic_current,scores={vic_breadc=30}] villager.0 with bread 30
item replace entity @e[tag=vic_current,scores={vic_breadc=31}] villager.0 with bread 31
item replace entity @e[tag=vic_current,scores={vic_breadc=32}] villager.0 with bread 32
item replace entity @e[tag=vic_current,scores={vic_breadc=33}] villager.0 with bread 33
item replace entity @e[tag=vic_current,scores={vic_breadc=34}] villager.0 with bread 34
item replace entity @e[tag=vic_current,scores={vic_breadc=35}] villager.0 with bread 35
item replace entity @e[tag=vic_current,scores={vic_breadc=36}] villager.0 with bread 36
item replace entity @e[tag=vic_current,scores={vic_breadc=37}] villager.0 with bread 37
item replace entity @e[tag=vic_current,scores={vic_breadc=38}] villager.0 with bread 38
item replace entity @e[tag=vic_current,scores={vic_breadc=39}] villager.0 with bread 39
item replace entity @e[tag=vic_current,scores={vic_breadc=40}] villager.0 with bread 40
item replace entity @e[tag=vic_current,scores={vic_breadc=41}] villager.0 with bread 41
item replace entity @e[tag=vic_current,scores={vic_breadc=42}] villager.0 with bread 42
item replace entity @e[tag=vic_current,scores={vic_breadc=43}] villager.0 with bread 43
item replace entity @e[tag=vic_current,scores={vic_breadc=44}] villager.0 with bread 44
item replace entity @e[tag=vic_current,scores={vic_breadc=45}] villager.0 with bread 45
item replace entity @e[tag=vic_current,scores={vic_breadc=46}] villager.0 with bread 46
item replace entity @e[tag=vic_current,scores={vic_breadc=47}] villager.0 with bread 47
item replace entity @e[tag=vic_current,scores={vic_breadc=48}] villager.0 with bread 48
item replace entity @e[tag=vic_current,scores={vic_breadc=49}] villager.0 with bread 49
item replace entity @e[tag=vic_current,scores={vic_breadc=50}] villager.0 with bread 50
item replace entity @e[tag=vic_current,scores={vic_breadc=51}] villager.0 with bread 51
item replace entity @e[tag=vic_current,scores={vic_breadc=52}] villager.0 with bread 52
item replace entity @e[tag=vic_current,scores={vic_breadc=53}] villager.0 with bread 53
item replace entity @e[tag=vic_current,scores={vic_breadc=54}] villager.0 with bread 54
item replace entity @e[tag=vic_current,scores={vic_breadc=55}] villager.0 with bread 55
item replace entity @e[tag=vic_current,scores={vic_breadc=56}] villager.0 with bread 56
item replace entity @e[tag=vic_current,scores={vic_breadc=57}] villager.0 with bread 57
item replace entity @e[tag=vic_current,scores={vic_breadc=58}] villager.0 with bread 58
item replace entity @e[tag=vic_current,scores={vic_breadc=59}] villager.0 with bread 59
item replace entity @e[tag=vic_current,scores={vic_breadc=60}] villager.0 with bread 60
item replace entity @e[tag=vic_current,scores={vic_breadc=61}] villager.0 with bread 61
item replace entity @e[tag=vic_current,scores={vic_breadc=62}] villager.0 with bread 62
item replace entity @e[tag=vic_current,scores={vic_breadc=63}] villager.0 with bread 63
item replace entity @e[tag=vic_current,scores={vic_breadc=64}] villager.0 with bread 64

# Do an equally tedious and boring method to set the item stack size as well boooooo.
kill @s[scores={vic_breadc=0}]
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
