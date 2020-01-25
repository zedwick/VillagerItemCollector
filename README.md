# VillagerItemCollector
A Minecraft datapack for Minecraft 1.14.4+ which allows villagers to pick up items when the gamerule mobGriefing is set to false.

Unfortunately in Minecraft 1.14.4 (and above) it is impossible for villagers to breed in normal survival play with mobGriefing disabled, as they cannot pick up items (bread, carrot, potato, beetroot) which are required for them to be willing to breed. *(In previous versions villagers could become willing through players trading with them.)*

This datapack simulates villagers picking up food items by checking for these items near them, and adding them to their inventory. Villagers will still naturally share food with other villagers, which this pack will then aid them in picking up.

*Originally created by Dax23333 and Zedwick for [Zedwork](https://zedwork.co.uk).*

## Installation

1. [Download this repository as a zip archive](https://github.com/zedwick/VillagerItemCollector/archive/master.zip)
2. Extract the "VillagerItemCollector" folder into the *datapacks* folder, inside your world/save folder.
3. Either start your server/game, or if already running use `/reload` to load the datapack. (verify with `/datapack list`)
