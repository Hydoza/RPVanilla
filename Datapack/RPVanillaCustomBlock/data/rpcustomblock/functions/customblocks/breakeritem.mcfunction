
# Break System :

scoreboard players reset @s[scores={carrotRightClick=1..}] carrotRightClick
scoreboard players add @s count 1
tag @e[tag=customblock,distance=..0.6] add surviebreaked
execute if entity @e[tag=customblock,distance=..0.6] run scoreboard players set @s count 6
execute unless score @s count matches 6 if block ~ ~ ~ #rpcustomblock:all_air positioned ^ ^ ^1 run function rpcustomblock:customblocks/breakeritem
scoreboard players reset @s count