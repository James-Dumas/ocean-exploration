execute as @a at @s if block ~ ~-1 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:leather",Count:1b},{Slot:2b,id:"minecraft:leather",Count:1b},{Slot:3b,id:"minecraft:ink_sac",Count:1b},{Slot:5b,id:"minecraft:ink_sac",Count:1b},{Slot:6b,id:"minecraft:prismarine_shard",Count:1b},{Slot:8b,id:"minecraft:prismarine_shard",Count:1b}]} run data modify block ~ ~-1 ~ Items set value [{Slot:4b,id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:depth_strider",lvl:3},{id:"minecraft:unbreaking",lvl:3}],display:{Name:"\"Flippers\""}}}]