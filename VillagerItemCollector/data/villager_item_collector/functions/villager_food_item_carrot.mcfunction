#function villager_item_collector:villager_food_item_carrot
#
# To be execute as an item tagged as "vic_villagerfood", which is carrot.
#
# Villager: @e[tag=vic_current]
# Item:     @s
#
# Slot villager.1: carrot
#

# First obtain amount of carrot the villager has. Only in slot 0, as carrot will only be put here.
execute as @e[tag=vic_current] store result score @s vic_carrotc run data get entity @s Inventory[{"id":"minecraft:carrot"}].Count 1

# Also obtain size of item stack.
execute store result score @s vic_carrotc run data get entity @s Item.Count 1

# Now we have the item stack size of both villager and item in the scoreboard. Do operations.
scoreboard players operation @e[tag=vic_current] vic_carrotc += @s vic_carrotc
scoreboard players operation total vic_carrotc = @e[tag=vic_current] vic_carrotc
scoreboard players operation over vic_carrotc = @e[tag=vic_current] vic_carrotc
scoreboard players operation over vic_carrotc -= 64 vic_constants
scoreboard players operation over vic_carrotc > 0 vic_constants
scoreboard players operation @e[tag=vic_current] vic_carrotc -= over vic_carrotc
scoreboard players operation @s vic_carrotc -= over vic_carrotc
scoreboard players operation @s vic_carrotc = total vic_carrotc
scoreboard players operation @s vic_carrotc -= @e[tag=vic_current] vic_carrotc
#scoreboard players set over vic_carrotc 0

#
# At this point vic_carrotc score of both villager and item are the number of items they should have in their stack.
#

# Do a tedious and repetitive method in order to actually set this, booooo.
item replace entity @e[tag=vic_current,scores={vic_carrotc=1}] villager.1 with carrot 1
item replace entity @e[tag=vic_current,scores={vic_carrotc=2}] villager.1 with carrot 2
item replace entity @e[tag=vic_current,scores={vic_carrotc=3}] villager.1 with carrot 3
item replace entity @e[tag=vic_current,scores={vic_carrotc=4}] villager.1 with carrot 4
item replace entity @e[tag=vic_current,scores={vic_carrotc=5}] villager.1 with carrot 5
item replace entity @e[tag=vic_current,scores={vic_carrotc=6}] villager.1 with carrot 6
item replace entity @e[tag=vic_current,scores={vic_carrotc=7}] villager.1 with carrot 7
item replace entity @e[tag=vic_current,scores={vic_carrotc=8}] villager.1 with carrot 8
item replace entity @e[tag=vic_current,scores={vic_carrotc=9}] villager.1 with carrot 9
item replace entity @e[tag=vic_current,scores={vic_carrotc=10}] villager.1 with carrot 10
item replace entity @e[tag=vic_current,scores={vic_carrotc=11}] villager.1 with carrot 11
item replace entity @e[tag=vic_current,scores={vic_carrotc=12}] villager.1 with carrot 12
item replace entity @e[tag=vic_current,scores={vic_carrotc=13}] villager.1 with carrot 13
item replace entity @e[tag=vic_current,scores={vic_carrotc=14}] villager.1 with carrot 14
item replace entity @e[tag=vic_current,scores={vic_carrotc=15}] villager.1 with carrot 15
item replace entity @e[tag=vic_current,scores={vic_carrotc=16}] villager.1 with carrot 16
item replace entity @e[tag=vic_current,scores={vic_carrotc=17}] villager.1 with carrot 17
item replace entity @e[tag=vic_current,scores={vic_carrotc=18}] villager.1 with carrot 18
item replace entity @e[tag=vic_current,scores={vic_carrotc=19}] villager.1 with carrot 19
item replace entity @e[tag=vic_current,scores={vic_carrotc=20}] villager.1 with carrot 20
item replace entity @e[tag=vic_current,scores={vic_carrotc=21}] villager.1 with carrot 21
item replace entity @e[tag=vic_current,scores={vic_carrotc=22}] villager.1 with carrot 22
item replace entity @e[tag=vic_current,scores={vic_carrotc=23}] villager.1 with carrot 23
item replace entity @e[tag=vic_current,scores={vic_carrotc=24}] villager.1 with carrot 24
item replace entity @e[tag=vic_current,scores={vic_carrotc=25}] villager.1 with carrot 25
item replace entity @e[tag=vic_current,scores={vic_carrotc=26}] villager.1 with carrot 26
item replace entity @e[tag=vic_current,scores={vic_carrotc=27}] villager.1 with carrot 27
item replace entity @e[tag=vic_current,scores={vic_carrotc=28}] villager.1 with carrot 28
item replace entity @e[tag=vic_current,scores={vic_carrotc=29}] villager.1 with carrot 29
item replace entity @e[tag=vic_current,scores={vic_carrotc=30}] villager.1 with carrot 30
item replace entity @e[tag=vic_current,scores={vic_carrotc=31}] villager.1 with carrot 31
item replace entity @e[tag=vic_current,scores={vic_carrotc=32}] villager.1 with carrot 32
item replace entity @e[tag=vic_current,scores={vic_carrotc=33}] villager.1 with carrot 33
item replace entity @e[tag=vic_current,scores={vic_carrotc=34}] villager.1 with carrot 34
item replace entity @e[tag=vic_current,scores={vic_carrotc=35}] villager.1 with carrot 35
item replace entity @e[tag=vic_current,scores={vic_carrotc=36}] villager.1 with carrot 36
item replace entity @e[tag=vic_current,scores={vic_carrotc=37}] villager.1 with carrot 37
item replace entity @e[tag=vic_current,scores={vic_carrotc=38}] villager.1 with carrot 38
item replace entity @e[tag=vic_current,scores={vic_carrotc=39}] villager.1 with carrot 39
item replace entity @e[tag=vic_current,scores={vic_carrotc=40}] villager.1 with carrot 40
item replace entity @e[tag=vic_current,scores={vic_carrotc=41}] villager.1 with carrot 41
item replace entity @e[tag=vic_current,scores={vic_carrotc=42}] villager.1 with carrot 42
item replace entity @e[tag=vic_current,scores={vic_carrotc=43}] villager.1 with carrot 43
item replace entity @e[tag=vic_current,scores={vic_carrotc=44}] villager.1 with carrot 44
item replace entity @e[tag=vic_current,scores={vic_carrotc=45}] villager.1 with carrot 45
item replace entity @e[tag=vic_current,scores={vic_carrotc=46}] villager.1 with carrot 46
item replace entity @e[tag=vic_current,scores={vic_carrotc=47}] villager.1 with carrot 47
item replace entity @e[tag=vic_current,scores={vic_carrotc=48}] villager.1 with carrot 48
item replace entity @e[tag=vic_current,scores={vic_carrotc=49}] villager.1 with carrot 49
item replace entity @e[tag=vic_current,scores={vic_carrotc=50}] villager.1 with carrot 50
item replace entity @e[tag=vic_current,scores={vic_carrotc=51}] villager.1 with carrot 51
item replace entity @e[tag=vic_current,scores={vic_carrotc=52}] villager.1 with carrot 52
item replace entity @e[tag=vic_current,scores={vic_carrotc=53}] villager.1 with carrot 53
item replace entity @e[tag=vic_current,scores={vic_carrotc=54}] villager.1 with carrot 54
item replace entity @e[tag=vic_current,scores={vic_carrotc=55}] villager.1 with carrot 55
item replace entity @e[tag=vic_current,scores={vic_carrotc=56}] villager.1 with carrot 56
item replace entity @e[tag=vic_current,scores={vic_carrotc=57}] villager.1 with carrot 57
item replace entity @e[tag=vic_current,scores={vic_carrotc=58}] villager.1 with carrot 58
item replace entity @e[tag=vic_current,scores={vic_carrotc=59}] villager.1 with carrot 59
item replace entity @e[tag=vic_current,scores={vic_carrotc=60}] villager.1 with carrot 60
item replace entity @e[tag=vic_current,scores={vic_carrotc=61}] villager.1 with carrot 61
item replace entity @e[tag=vic_current,scores={vic_carrotc=62}] villager.1 with carrot 62
item replace entity @e[tag=vic_current,scores={vic_carrotc=63}] villager.1 with carrot 63
item replace entity @e[tag=vic_current,scores={vic_carrotc=64}] villager.1 with carrot 64

# Do an equally tedious and boring method to set the item stack size as well boooooo.
kill @s[scores={vic_carrotc=0}]
data merge entity @s[scores={vic_carrotc=1}] {Item:{id:"minecraft:carrot",Count:1b}}
data merge entity @s[scores={vic_carrotc=2}] {Item:{id:"minecraft:carrot",Count:2b}}
data merge entity @s[scores={vic_carrotc=3}] {Item:{id:"minecraft:carrot",Count:3b}}
data merge entity @s[scores={vic_carrotc=4}] {Item:{id:"minecraft:carrot",Count:4b}}
data merge entity @s[scores={vic_carrotc=5}] {Item:{id:"minecraft:carrot",Count:5b}}
data merge entity @s[scores={vic_carrotc=6}] {Item:{id:"minecraft:carrot",Count:6b}}
data merge entity @s[scores={vic_carrotc=7}] {Item:{id:"minecraft:carrot",Count:7b}}
data merge entity @s[scores={vic_carrotc=8}] {Item:{id:"minecraft:carrot",Count:8b}}
data merge entity @s[scores={vic_carrotc=9}] {Item:{id:"minecraft:carrot",Count:9b}}
data merge entity @s[scores={vic_carrotc=10}] {Item:{id:"minecraft:carrot",Count:10b}}
data merge entity @s[scores={vic_carrotc=11}] {Item:{id:"minecraft:carrot",Count:11b}}
data merge entity @s[scores={vic_carrotc=12}] {Item:{id:"minecraft:carrot",Count:12b}}
data merge entity @s[scores={vic_carrotc=13}] {Item:{id:"minecraft:carrot",Count:13b}}
data merge entity @s[scores={vic_carrotc=14}] {Item:{id:"minecraft:carrot",Count:14b}}
data merge entity @s[scores={vic_carrotc=15}] {Item:{id:"minecraft:carrot",Count:15b}}
data merge entity @s[scores={vic_carrotc=16}] {Item:{id:"minecraft:carrot",Count:16b}}
data merge entity @s[scores={vic_carrotc=17}] {Item:{id:"minecraft:carrot",Count:17b}}
data merge entity @s[scores={vic_carrotc=18}] {Item:{id:"minecraft:carrot",Count:18b}}
data merge entity @s[scores={vic_carrotc=19}] {Item:{id:"minecraft:carrot",Count:19b}}
data merge entity @s[scores={vic_carrotc=20}] {Item:{id:"minecraft:carrot",Count:20b}}
data merge entity @s[scores={vic_carrotc=21}] {Item:{id:"minecraft:carrot",Count:21b}}
data merge entity @s[scores={vic_carrotc=22}] {Item:{id:"minecraft:carrot",Count:22b}}
data merge entity @s[scores={vic_carrotc=23}] {Item:{id:"minecraft:carrot",Count:23b}}
data merge entity @s[scores={vic_carrotc=24}] {Item:{id:"minecraft:carrot",Count:24b}}
data merge entity @s[scores={vic_carrotc=25}] {Item:{id:"minecraft:carrot",Count:25b}}
data merge entity @s[scores={vic_carrotc=26}] {Item:{id:"minecraft:carrot",Count:26b}}
data merge entity @s[scores={vic_carrotc=27}] {Item:{id:"minecraft:carrot",Count:27b}}
data merge entity @s[scores={vic_carrotc=28}] {Item:{id:"minecraft:carrot",Count:28b}}
data merge entity @s[scores={vic_carrotc=29}] {Item:{id:"minecraft:carrot",Count:29b}}
data merge entity @s[scores={vic_carrotc=30}] {Item:{id:"minecraft:carrot",Count:30b}}
data merge entity @s[scores={vic_carrotc=31}] {Item:{id:"minecraft:carrot",Count:31b}}
data merge entity @s[scores={vic_carrotc=32}] {Item:{id:"minecraft:carrot",Count:32b}}
data merge entity @s[scores={vic_carrotc=33}] {Item:{id:"minecraft:carrot",Count:33b}}
data merge entity @s[scores={vic_carrotc=34}] {Item:{id:"minecraft:carrot",Count:34b}}
data merge entity @s[scores={vic_carrotc=35}] {Item:{id:"minecraft:carrot",Count:35b}}
data merge entity @s[scores={vic_carrotc=36}] {Item:{id:"minecraft:carrot",Count:36b}}
data merge entity @s[scores={vic_carrotc=37}] {Item:{id:"minecraft:carrot",Count:37b}}
data merge entity @s[scores={vic_carrotc=38}] {Item:{id:"minecraft:carrot",Count:38b}}
data merge entity @s[scores={vic_carrotc=39}] {Item:{id:"minecraft:carrot",Count:39b}}
data merge entity @s[scores={vic_carrotc=40}] {Item:{id:"minecraft:carrot",Count:40b}}
data merge entity @s[scores={vic_carrotc=41}] {Item:{id:"minecraft:carrot",Count:41b}}
data merge entity @s[scores={vic_carrotc=42}] {Item:{id:"minecraft:carrot",Count:42b}}
data merge entity @s[scores={vic_carrotc=43}] {Item:{id:"minecraft:carrot",Count:43b}}
data merge entity @s[scores={vic_carrotc=44}] {Item:{id:"minecraft:carrot",Count:44b}}
data merge entity @s[scores={vic_carrotc=45}] {Item:{id:"minecraft:carrot",Count:45b}}
data merge entity @s[scores={vic_carrotc=46}] {Item:{id:"minecraft:carrot",Count:46b}}
data merge entity @s[scores={vic_carrotc=47}] {Item:{id:"minecraft:carrot",Count:47b}}
data merge entity @s[scores={vic_carrotc=48}] {Item:{id:"minecraft:carrot",Count:48b}}
data merge entity @s[scores={vic_carrotc=49}] {Item:{id:"minecraft:carrot",Count:49b}}
data merge entity @s[scores={vic_carrotc=50}] {Item:{id:"minecraft:carrot",Count:50b}}
data merge entity @s[scores={vic_carrotc=51}] {Item:{id:"minecraft:carrot",Count:51b}}
data merge entity @s[scores={vic_carrotc=52}] {Item:{id:"minecraft:carrot",Count:52b}}
data merge entity @s[scores={vic_carrotc=53}] {Item:{id:"minecraft:carrot",Count:53b}}
data merge entity @s[scores={vic_carrotc=54}] {Item:{id:"minecraft:carrot",Count:54b}}
data merge entity @s[scores={vic_carrotc=55}] {Item:{id:"minecraft:carrot",Count:55b}}
data merge entity @s[scores={vic_carrotc=56}] {Item:{id:"minecraft:carrot",Count:56b}}
data merge entity @s[scores={vic_carrotc=57}] {Item:{id:"minecraft:carrot",Count:57b}}
data merge entity @s[scores={vic_carrotc=58}] {Item:{id:"minecraft:carrot",Count:58b}}
data merge entity @s[scores={vic_carrotc=59}] {Item:{id:"minecraft:carrot",Count:59b}}
data merge entity @s[scores={vic_carrotc=60}] {Item:{id:"minecraft:carrot",Count:60b}}
data merge entity @s[scores={vic_carrotc=61}] {Item:{id:"minecraft:carrot",Count:61b}}
data merge entity @s[scores={vic_carrotc=62}] {Item:{id:"minecraft:carrot",Count:62b}}
data merge entity @s[scores={vic_carrotc=63}] {Item:{id:"minecraft:carrot",Count:63b}}
data merge entity @s[scores={vic_carrotc=64}] {Item:{id:"minecraft:carrot",Count:64b}}
