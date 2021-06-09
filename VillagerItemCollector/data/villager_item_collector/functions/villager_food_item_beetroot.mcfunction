#function villager_item_collector:villager_food_item_beetroot
#
# To be execute as an item tagged as "vic_villagerfood", which is beetroot.
#
# Villager: @e[tag=vic_current]
# Item:     @s
#
# Slot villager.3: beetroot
#

# First obtain amount of beetroot the villager has. Only in slot 0, as beetroot will only be put here.
execute as @e[tag=vic_current] store result score @s vic_beetrootc run data get entity @s Inventory[{"id":"minecraft:beetroot"}].Count 1

# Also obtain size of item stack.
execute store result score @s vic_beetrootc run data get entity @s Item.Count 1

# Now we have the item stack size of both villager and item in the scoreboard. Do operations.
scoreboard players operation @e[tag=vic_current] vic_beetrootc += @s vic_beetrootc
scoreboard players operation total vic_beetrootc = @e[tag=vic_current] vic_beetrootc
scoreboard players operation over vic_beetrootc = @e[tag=vic_current] vic_beetrootc
scoreboard players operation over vic_beetrootc -= 64 vic_constants
scoreboard players operation over vic_beetrootc > 0 vic_constants
scoreboard players operation @e[tag=vic_current] vic_beetrootc -= over vic_beetrootc
scoreboard players operation @s vic_beetrootc -= over vic_beetrootc
scoreboard players operation @s vic_beetrootc = total vic_beetrootc
scoreboard players operation @s vic_beetrootc -= @e[tag=vic_current] vic_beetrootc
#scoreboard players set over vic_beetrootc 0

#
# At this point vic_beetrootc score of both villager and item are the number of items they should have in their stack.
#

# Do a tedious and repetitive method in order to actually set this, booooo.
item replace entity @e[tag=vic_current,scores={vic_beetrootc=1}] villager.3 with beetroot 1
item replace entity @e[tag=vic_current,scores={vic_beetrootc=2}] villager.3 with beetroot 2
item replace entity @e[tag=vic_current,scores={vic_beetrootc=3}] villager.3 with beetroot 3
item replace entity @e[tag=vic_current,scores={vic_beetrootc=4}] villager.3 with beetroot 4
item replace entity @e[tag=vic_current,scores={vic_beetrootc=5}] villager.3 with beetroot 5
item replace entity @e[tag=vic_current,scores={vic_beetrootc=6}] villager.3 with beetroot 6
item replace entity @e[tag=vic_current,scores={vic_beetrootc=7}] villager.3 with beetroot 7
item replace entity @e[tag=vic_current,scores={vic_beetrootc=8}] villager.3 with beetroot 8
item replace entity @e[tag=vic_current,scores={vic_beetrootc=9}] villager.3 with beetroot 9
item replace entity @e[tag=vic_current,scores={vic_beetrootc=10}] villager.3 with beetroot 10
item replace entity @e[tag=vic_current,scores={vic_beetrootc=11}] villager.3 with beetroot 11
item replace entity @e[tag=vic_current,scores={vic_beetrootc=12}] villager.3 with beetroot 12
item replace entity @e[tag=vic_current,scores={vic_beetrootc=13}] villager.3 with beetroot 13
item replace entity @e[tag=vic_current,scores={vic_beetrootc=14}] villager.3 with beetroot 14
item replace entity @e[tag=vic_current,scores={vic_beetrootc=15}] villager.3 with beetroot 15
item replace entity @e[tag=vic_current,scores={vic_beetrootc=16}] villager.3 with beetroot 16
item replace entity @e[tag=vic_current,scores={vic_beetrootc=17}] villager.3 with beetroot 17
item replace entity @e[tag=vic_current,scores={vic_beetrootc=18}] villager.3 with beetroot 18
item replace entity @e[tag=vic_current,scores={vic_beetrootc=19}] villager.3 with beetroot 19
item replace entity @e[tag=vic_current,scores={vic_beetrootc=20}] villager.3 with beetroot 20
item replace entity @e[tag=vic_current,scores={vic_beetrootc=21}] villager.3 with beetroot 21
item replace entity @e[tag=vic_current,scores={vic_beetrootc=22}] villager.3 with beetroot 22
item replace entity @e[tag=vic_current,scores={vic_beetrootc=23}] villager.3 with beetroot 23
item replace entity @e[tag=vic_current,scores={vic_beetrootc=24}] villager.3 with beetroot 24
item replace entity @e[tag=vic_current,scores={vic_beetrootc=25}] villager.3 with beetroot 25
item replace entity @e[tag=vic_current,scores={vic_beetrootc=26}] villager.3 with beetroot 26
item replace entity @e[tag=vic_current,scores={vic_beetrootc=27}] villager.3 with beetroot 27
item replace entity @e[tag=vic_current,scores={vic_beetrootc=28}] villager.3 with beetroot 28
item replace entity @e[tag=vic_current,scores={vic_beetrootc=29}] villager.3 with beetroot 29
item replace entity @e[tag=vic_current,scores={vic_beetrootc=30}] villager.3 with beetroot 30
item replace entity @e[tag=vic_current,scores={vic_beetrootc=31}] villager.3 with beetroot 31
item replace entity @e[tag=vic_current,scores={vic_beetrootc=32}] villager.3 with beetroot 32
item replace entity @e[tag=vic_current,scores={vic_beetrootc=33}] villager.3 with beetroot 33
item replace entity @e[tag=vic_current,scores={vic_beetrootc=34}] villager.3 with beetroot 34
item replace entity @e[tag=vic_current,scores={vic_beetrootc=35}] villager.3 with beetroot 35
item replace entity @e[tag=vic_current,scores={vic_beetrootc=36}] villager.3 with beetroot 36
item replace entity @e[tag=vic_current,scores={vic_beetrootc=37}] villager.3 with beetroot 37
item replace entity @e[tag=vic_current,scores={vic_beetrootc=38}] villager.3 with beetroot 38
item replace entity @e[tag=vic_current,scores={vic_beetrootc=39}] villager.3 with beetroot 39
item replace entity @e[tag=vic_current,scores={vic_beetrootc=40}] villager.3 with beetroot 40
item replace entity @e[tag=vic_current,scores={vic_beetrootc=41}] villager.3 with beetroot 41
item replace entity @e[tag=vic_current,scores={vic_beetrootc=42}] villager.3 with beetroot 42
item replace entity @e[tag=vic_current,scores={vic_beetrootc=43}] villager.3 with beetroot 43
item replace entity @e[tag=vic_current,scores={vic_beetrootc=44}] villager.3 with beetroot 44
item replace entity @e[tag=vic_current,scores={vic_beetrootc=45}] villager.3 with beetroot 45
item replace entity @e[tag=vic_current,scores={vic_beetrootc=46}] villager.3 with beetroot 46
item replace entity @e[tag=vic_current,scores={vic_beetrootc=47}] villager.3 with beetroot 47
item replace entity @e[tag=vic_current,scores={vic_beetrootc=48}] villager.3 with beetroot 48
item replace entity @e[tag=vic_current,scores={vic_beetrootc=49}] villager.3 with beetroot 49
item replace entity @e[tag=vic_current,scores={vic_beetrootc=50}] villager.3 with beetroot 50
item replace entity @e[tag=vic_current,scores={vic_beetrootc=51}] villager.3 with beetroot 51
item replace entity @e[tag=vic_current,scores={vic_beetrootc=52}] villager.3 with beetroot 52
item replace entity @e[tag=vic_current,scores={vic_beetrootc=53}] villager.3 with beetroot 53
item replace entity @e[tag=vic_current,scores={vic_beetrootc=54}] villager.3 with beetroot 54
item replace entity @e[tag=vic_current,scores={vic_beetrootc=55}] villager.3 with beetroot 55
item replace entity @e[tag=vic_current,scores={vic_beetrootc=56}] villager.3 with beetroot 56
item replace entity @e[tag=vic_current,scores={vic_beetrootc=57}] villager.3 with beetroot 57
item replace entity @e[tag=vic_current,scores={vic_beetrootc=58}] villager.3 with beetroot 58
item replace entity @e[tag=vic_current,scores={vic_beetrootc=59}] villager.3 with beetroot 59
item replace entity @e[tag=vic_current,scores={vic_beetrootc=60}] villager.3 with beetroot 60
item replace entity @e[tag=vic_current,scores={vic_beetrootc=61}] villager.3 with beetroot 61
item replace entity @e[tag=vic_current,scores={vic_beetrootc=62}] villager.3 with beetroot 62
item replace entity @e[tag=vic_current,scores={vic_beetrootc=63}] villager.3 with beetroot 63
item replace entity @e[tag=vic_current,scores={vic_beetrootc=64}] villager.3 with beetroot 64

# Do an equally tedious and boring method to set the item stack size as well boooooo.
kill @s[scores={vic_beetrootc=0}]
data merge entity @s[scores={vic_beetrootc=1}] {Item:{id:"minecraft:beetroot",Count:1b}}
data merge entity @s[scores={vic_beetrootc=2}] {Item:{id:"minecraft:beetroot",Count:2b}}
data merge entity @s[scores={vic_beetrootc=3}] {Item:{id:"minecraft:beetroot",Count:3b}}
data merge entity @s[scores={vic_beetrootc=4}] {Item:{id:"minecraft:beetroot",Count:4b}}
data merge entity @s[scores={vic_beetrootc=5}] {Item:{id:"minecraft:beetroot",Count:5b}}
data merge entity @s[scores={vic_beetrootc=6}] {Item:{id:"minecraft:beetroot",Count:6b}}
data merge entity @s[scores={vic_beetrootc=7}] {Item:{id:"minecraft:beetroot",Count:7b}}
data merge entity @s[scores={vic_beetrootc=8}] {Item:{id:"minecraft:beetroot",Count:8b}}
data merge entity @s[scores={vic_beetrootc=9}] {Item:{id:"minecraft:beetroot",Count:9b}}
data merge entity @s[scores={vic_beetrootc=10}] {Item:{id:"minecraft:beetroot",Count:10b}}
data merge entity @s[scores={vic_beetrootc=11}] {Item:{id:"minecraft:beetroot",Count:11b}}
data merge entity @s[scores={vic_beetrootc=12}] {Item:{id:"minecraft:beetroot",Count:12b}}
data merge entity @s[scores={vic_beetrootc=13}] {Item:{id:"minecraft:beetroot",Count:13b}}
data merge entity @s[scores={vic_beetrootc=14}] {Item:{id:"minecraft:beetroot",Count:14b}}
data merge entity @s[scores={vic_beetrootc=15}] {Item:{id:"minecraft:beetroot",Count:15b}}
data merge entity @s[scores={vic_beetrootc=16}] {Item:{id:"minecraft:beetroot",Count:16b}}
data merge entity @s[scores={vic_beetrootc=17}] {Item:{id:"minecraft:beetroot",Count:17b}}
data merge entity @s[scores={vic_beetrootc=18}] {Item:{id:"minecraft:beetroot",Count:18b}}
data merge entity @s[scores={vic_beetrootc=19}] {Item:{id:"minecraft:beetroot",Count:19b}}
data merge entity @s[scores={vic_beetrootc=20}] {Item:{id:"minecraft:beetroot",Count:20b}}
data merge entity @s[scores={vic_beetrootc=21}] {Item:{id:"minecraft:beetroot",Count:21b}}
data merge entity @s[scores={vic_beetrootc=22}] {Item:{id:"minecraft:beetroot",Count:22b}}
data merge entity @s[scores={vic_beetrootc=23}] {Item:{id:"minecraft:beetroot",Count:23b}}
data merge entity @s[scores={vic_beetrootc=24}] {Item:{id:"minecraft:beetroot",Count:24b}}
data merge entity @s[scores={vic_beetrootc=25}] {Item:{id:"minecraft:beetroot",Count:25b}}
data merge entity @s[scores={vic_beetrootc=26}] {Item:{id:"minecraft:beetroot",Count:26b}}
data merge entity @s[scores={vic_beetrootc=27}] {Item:{id:"minecraft:beetroot",Count:27b}}
data merge entity @s[scores={vic_beetrootc=28}] {Item:{id:"minecraft:beetroot",Count:28b}}
data merge entity @s[scores={vic_beetrootc=29}] {Item:{id:"minecraft:beetroot",Count:29b}}
data merge entity @s[scores={vic_beetrootc=30}] {Item:{id:"minecraft:beetroot",Count:30b}}
data merge entity @s[scores={vic_beetrootc=31}] {Item:{id:"minecraft:beetroot",Count:31b}}
data merge entity @s[scores={vic_beetrootc=32}] {Item:{id:"minecraft:beetroot",Count:32b}}
data merge entity @s[scores={vic_beetrootc=33}] {Item:{id:"minecraft:beetroot",Count:33b}}
data merge entity @s[scores={vic_beetrootc=34}] {Item:{id:"minecraft:beetroot",Count:34b}}
data merge entity @s[scores={vic_beetrootc=35}] {Item:{id:"minecraft:beetroot",Count:35b}}
data merge entity @s[scores={vic_beetrootc=36}] {Item:{id:"minecraft:beetroot",Count:36b}}
data merge entity @s[scores={vic_beetrootc=37}] {Item:{id:"minecraft:beetroot",Count:37b}}
data merge entity @s[scores={vic_beetrootc=38}] {Item:{id:"minecraft:beetroot",Count:38b}}
data merge entity @s[scores={vic_beetrootc=39}] {Item:{id:"minecraft:beetroot",Count:39b}}
data merge entity @s[scores={vic_beetrootc=40}] {Item:{id:"minecraft:beetroot",Count:40b}}
data merge entity @s[scores={vic_beetrootc=41}] {Item:{id:"minecraft:beetroot",Count:41b}}
data merge entity @s[scores={vic_beetrootc=42}] {Item:{id:"minecraft:beetroot",Count:42b}}
data merge entity @s[scores={vic_beetrootc=43}] {Item:{id:"minecraft:beetroot",Count:43b}}
data merge entity @s[scores={vic_beetrootc=44}] {Item:{id:"minecraft:beetroot",Count:44b}}
data merge entity @s[scores={vic_beetrootc=45}] {Item:{id:"minecraft:beetroot",Count:45b}}
data merge entity @s[scores={vic_beetrootc=46}] {Item:{id:"minecraft:beetroot",Count:46b}}
data merge entity @s[scores={vic_beetrootc=47}] {Item:{id:"minecraft:beetroot",Count:47b}}
data merge entity @s[scores={vic_beetrootc=48}] {Item:{id:"minecraft:beetroot",Count:48b}}
data merge entity @s[scores={vic_beetrootc=49}] {Item:{id:"minecraft:beetroot",Count:49b}}
data merge entity @s[scores={vic_beetrootc=50}] {Item:{id:"minecraft:beetroot",Count:50b}}
data merge entity @s[scores={vic_beetrootc=51}] {Item:{id:"minecraft:beetroot",Count:51b}}
data merge entity @s[scores={vic_beetrootc=52}] {Item:{id:"minecraft:beetroot",Count:52b}}
data merge entity @s[scores={vic_beetrootc=53}] {Item:{id:"minecraft:beetroot",Count:53b}}
data merge entity @s[scores={vic_beetrootc=54}] {Item:{id:"minecraft:beetroot",Count:54b}}
data merge entity @s[scores={vic_beetrootc=55}] {Item:{id:"minecraft:beetroot",Count:55b}}
data merge entity @s[scores={vic_beetrootc=56}] {Item:{id:"minecraft:beetroot",Count:56b}}
data merge entity @s[scores={vic_beetrootc=57}] {Item:{id:"minecraft:beetroot",Count:57b}}
data merge entity @s[scores={vic_beetrootc=58}] {Item:{id:"minecraft:beetroot",Count:58b}}
data merge entity @s[scores={vic_beetrootc=59}] {Item:{id:"minecraft:beetroot",Count:59b}}
data merge entity @s[scores={vic_beetrootc=60}] {Item:{id:"minecraft:beetroot",Count:60b}}
data merge entity @s[scores={vic_beetrootc=61}] {Item:{id:"minecraft:beetroot",Count:61b}}
data merge entity @s[scores={vic_beetrootc=62}] {Item:{id:"minecraft:beetroot",Count:62b}}
data merge entity @s[scores={vic_beetrootc=63}] {Item:{id:"minecraft:beetroot",Count:63b}}
data merge entity @s[scores={vic_beetrootc=64}] {Item:{id:"minecraft:beetroot",Count:64b}}
