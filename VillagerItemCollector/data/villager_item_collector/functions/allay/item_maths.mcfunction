#function villager_item_collector:allay/item_maths
#
# To be execute as an item tagged as "vic_villagerfood", which is bread.
#
# Villager: @e[tag=vic_current]
# Item:     @s
#
# Slot Inventory: bread
#

# First obtain amount of bread the allay has. Only in slot 0, as bread will only be put here.
execute as @e[tag=vic_current] store result score @s vic_breadc run data get entity @s Inventory[{"id":"minecraft:bread"}].Count 1

# Also obtain size of item stack.
execute store result score @s vic_breadc run data get entity @s Item.Count 1

# Now we have the item stack size of both villager and item in the scoreboard. Do operations.
#Will need to account for items that do not stack to 64
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
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=1}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:1b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=2}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:2b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=3}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:3b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=4}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:4b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=5}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:5b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=6}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:6b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=7}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:7b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=8}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:8b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=9}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:9b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=10}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:10b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=11}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:11b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=12}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:12b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=13}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:13b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=14}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:14b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=15}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:15b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=16}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:16b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=17}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:17b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=18}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:18b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=19}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:19b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=20}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:20b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=21}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:21b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=22}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:22b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=23}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:23b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=24}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:24b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=25}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:25b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=26}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:26b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=27}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:27b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=28}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:28b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=29}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:29b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=30}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:30b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=31}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:31b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=32}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:32b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=33}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:33b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=34}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:34b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=35}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:35b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=36}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:36b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=37}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:37b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=38}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:38b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=39}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:39b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=40}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:40b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=41}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:41b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=42}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:42b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=43}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:43b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=44}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:44b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=45}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:45b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=46}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:46b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=47}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:47b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=48}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:48b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=49}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:49b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=50}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:50b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=51}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:51b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=52}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:52b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=53}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:53b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=54}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:54b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=55}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:55b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=56}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:56b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=57}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:57b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=58}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:58b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=59}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:59b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=60}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:60b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=61}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:61b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=62}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:62b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=63}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:63b}
execute as @e[type=allay,tag=vic_current,scores={vic_breadc=64}] at @s run data modify entity @s Inventory append value {id:"minecraft:bread",Count:64b}

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
