execute as @a at @s if block ~ ~-1 ~ minecraft:dropper{Items:[{Slot:2b,id:"minecraft:sugar_cane",Count:1b},{Slot:3b,id:"minecraft:glass",Count:1b},{Slot:4b,id:"minecraft:string",Count:1b},{Slot:5b,id:"minecraft:glass",Count:1b}]} run data modify block ~ ~-1 ~ Items set value [{Slot:4b,id:"minecraft:leather_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:respiration",lvl:1},{id:"minecraft:unbreaking",lvl:2}],display:{Name:'{"text":"Snorkel"}'}}}]