execute as @a at @s if block ~ ~-1 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:prismarine_crystals",Count:1b},{Slot:2b,id:"minecraft:prismarine_crystals",Count:1b},{Slot:1b,id:"minecraft:rabbit_foot",Count:1b,tag:{display:{Name:"\"Tubing\""}}},{Slot:3b,id:"minecraft:iron_ingot",Count:1b},{Slot:4b,id:"minecraft:pufferfish",Count:1b},{Slot:5b,id:"minecraft:iron_ingot",Count:1b},{Slot:6b,id:"minecraft:gold_ingot",Count:1b},{Slot:7b,id:"minecraft:emerald",Count:1b},{Slot:8b,id:"minecraft:gold_ingot",Count:1b}]} run data modify block ~ ~-1 ~ Items set value [{Slot:4b,id:"minecraft:diamond_hoe",Count:1b,tag:{display:{Name:"\"Oxygen Tank\"",Lore:["\"§3§oPlace in the top-right-most inventory slot to equip.\"","\"§3§oA breathing mask must be equipped to use oxygen.\""]}}}]
execute as @a at @s if block ~ ~-1 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:prismarine_crystals",Count:1b},{Slot:1b,id:"minecraft:heart_of_the_sea",Count:1b},{Slot:2b,id:"minecraft:prismarine_crystals",Count:1b},{Slot:3b,id:"minecraft:pufferfish",Count:1b},{Slot:4b,id:"minecraft:diamond_hoe",Count:1b,tag:{display:{Name:"\"Oxygen Tank\""}}},{Slot:5b,id:"minecraft:pufferfish",Count:1b},{Slot:6b,id:"minecraft:prismarine_shard",Count:1b},{Slot:7b,id:"minecraft:diamond",Count:1b},{Slot:8b,id:"minecraft:prismarine_shard",Count:1b}]} run data modify block ~ ~-1 ~ Items set value [{Slot:4b,id:"minecraft:diamond_hoe",Count:1b,tag:{Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],display:{Name:"\"Advanced Oxygen Tank\"",Lore:["\"§3§oPlace in the top-right-most inventory slot to equip.\"","\"§3§oA breathing mask must be equipped to use oxygen.\""]}}}]