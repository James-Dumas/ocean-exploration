execute as @a run scoreboard players set @s WearingTank 0
execute as @a run scoreboard players set @s UseOxygen 0
execute as @a run scoreboard players add @s OxygenTank 0
execute as @a run scoreboard players set @s OxygenDispScale 20
execute as @a[nbt={Inventory:[{Slot:9b,id:"minecraft:diamond_hoe",tag:{display:{Name:"\"Oxygen Tank\""}}}]}] run scoreboard players set @s WearingTank 1
execute as @a[nbt={Inventory:[{Slot:9b,id:"minecraft:diamond_hoe",tag:{display:{Name:"\"Oxygen Tank\""}}}]}] run scoreboard players set @s MaxOxygen 2000
execute as @a[nbt={Inventory:[{Slot:9b,id:"minecraft:diamond_hoe",tag:{display:{Name:"\"Advanced Oxygen Tank\""}}}]}] run scoreboard players set @s WearingTank 1
execute as @a[nbt={Inventory:[{Slot:9b,id:"minecraft:diamond_hoe",tag:{display:{Name:"\"Advanced Oxygen Tank\""}}}]}] run scoreboard players set @s MaxOxygen 5000
execute as @a[nbt={Air:300s}] if score @s WearingTank matches 1 if score @s OxygenTank < @s MaxOxygen run scoreboard players add @s OxygenTank 30
execute as @a if score @s WearingTank matches 1 if score @s OxygenTank > @s MaxOxygen run scoreboard players operation @s OxygenTank = @s MaxOxygen
execute as @a[nbt=!{ActiveEffects:[{Id:29b}]},nbt={Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet",tag:{display:{Name:"\"Scuba Mask\""}}}]}] unless score @s Air matches 300 if score @s WearingTank matches 1 unless score @s OxygenTank matches 0 run scoreboard players set @s UseOxygen 1
execute as @a[nbt=!{ActiveEffects:[{Id:29b}]},nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet",tag:{display:{Name:"\"Rebreather\""}}}]}] unless score @s Air matches 300 if score @s WearingTank matches 1 unless score @s OxygenTank matches 0 run scoreboard players set @s UseOxygen 1
execute as @a if score @s UseOxygen matches 1 run effect give @s minecraft:water_breathing 1 0 true
execute as @a if score @s UseOxygen matches 1 run scoreboard players remove @s OxygenTank 1
execute as @a run scoreboard players operation @s OxygenDisplay = @s OxygenTank
execute as @a run scoreboard players operation @s OxygenDisplay /= @s OxygenDispScale
execute as @a if score @s WearingTank matches 1 unless score @s OxygenDisplay matches 0..30 run title @s actionbar [{"text":"Oxygen Tank: ","color":"aqua"},{"score":{"name":"@s","objective":"OxygenDisplay"},"color":"aqua","bold":true}]
execute as @a if score @s WearingTank matches 1 if score @s OxygenDisplay matches 11..30 run title @s actionbar [{"text":"Oxygen Tank: ","color":"aqua"},{"score":{"name":"@s","objective":"OxygenDisplay"},"color":"yellow","bold":true}]
execute as @a if score @s WearingTank matches 1 if score @s OxygenDisplay matches 1..10 run title @s actionbar [{"text":"Oxygen Tank: ","color":"aqua"},{"score":{"name":"@s","objective":"OxygenDisplay"},"color":"gold","bold":true}]
execute as @a if score @s WearingTank matches 1 if score @s OxygenDisplay matches 0 run title @s actionbar [{"text":"Oxygen Tank: ","color":"aqua"},{"score":{"name":"@s","objective":"OxygenDisplay"},"color":"red","bold":true}]