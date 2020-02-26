execute as @a run scoreboard players set @s HoldingGun 0
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{display:{Name:'{"text":"Speargun"}'}}}}] run scoreboard players set @s HoldingGun 1
execute as @e[type=arrow,nbt={ShotFromCrossbow:1b}] at @s if score @p[distance=..2,limit=1,sort=nearest] HoldingGun matches 1 run scoreboard players set @s NeedsTrident 1
execute as @e[type=arrow] at @s if score @s NeedsTrident matches 2 run summon minecraft:trident ~ ~ ~ {pickup:0b}
execute as @e[type=arrow] at @s if score @s NeedsTrident matches 2 run data modify entity @e[type=trident,distance=0,limit=1,sort=nearest] Rotation set from entity @s Rotation
execute as @e[type=arrow] at @s if score @s NeedsTrident matches 2 run data modify entity @e[type=trident,distance=0,limit=1,sort=nearest] Motion set from entity @s Motion
execute as @e[type=arrow] if score @s NeedsTrident matches 2 run kill @s
execute as @e[type=arrow] if score @s NeedsTrident matches 1 run scoreboard players set @s NeedsTrident 2