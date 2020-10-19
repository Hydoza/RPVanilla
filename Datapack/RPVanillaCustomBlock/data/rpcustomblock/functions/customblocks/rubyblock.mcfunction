# Ruby Block :

# Give :
give @a[scores={customBlocksGive=2}] minecraft:ghast_spawn_egg{display:{Name:'{"text":"Ruby Block","italic":false}'},CustomModelData:2,EntityTag:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["Create2"]}} 1

# Place (sans rotation):
execute as @e[type=armor_stand,tag=Create2] at @s if entity @p[limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed2,distance=..0.1] run summon minecraft:armor_stand ~ ~0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Placed2","customblock"],ArmorItems:[{},{},{},{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{CustomModelData:2}}]}

execute as @e[type=armor_stand,tag=Create2] at @s run setblock ~ ~ ~ minecraft:barrier
execute as @e[type=armor_stand,tag=Create2] at @s run playsound minecraft:block.stone.place block @a ~ ~ ~

execute as @e[type=armor_stand,tag=Create2] run kill @s

# Casse :

#Survie :
execute as @e[type=armor_stand,tag=Placed2,tag=surviebreaked] at @s run summon minecraft:item ~ ~-0.5 ~ {Item:{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Ruby Block","italic":false}'},CustomModelData:2,EntityTag:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["Create2"]}}}}
execute as @e[type=armor_stand,tag=Placed2,tag=surviebreaked] at @s run setblock ~ ~ ~ air destroy

# Creatif :
execute as @e[type=armor_stand,tag=Placed2] at @s align xyz if block ~ ~ ~ minecraft:air run kill @s