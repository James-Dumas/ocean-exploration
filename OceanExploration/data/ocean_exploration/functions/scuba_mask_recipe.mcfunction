execute as @a at @s if block ~ ~-1 ~ minecraft:dropper{Items:[{Slot:1b,id:"minecraft:prismarine_crystals",Count:1b},{Slot:3b,id:"minecraft:iron_ingot",Count:1b},{Slot:4b,id:"minecraft:glass",Count:1b},{Slot:5b,id:"minecraft:iron_ingot",Count:1b},{Slot:7b,id:"minecraft:rabbit_foot",Count:1b,tag:{display:{Name:"\"Tubing\""}}}]} run data modify block ~ ~-1 ~ Items set value [{Slot:4b,id:"minecraft:chainmail_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:respiration",lvl:2},{id:"minecraft:aqua_affinity",lvl:1},{id:"minecraft:unbreaking",lvl:2}],display:{Name:"\"Scuba Mask\"",Lore:["\"§3§oAllows the use of an oxygen tank.\""]}}}]