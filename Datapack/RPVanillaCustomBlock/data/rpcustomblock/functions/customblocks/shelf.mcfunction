# Pc Portable :

# Give :
give @a[scores={customBlocksGive=7}] minecraft:ghast_spawn_egg{display:{Name:'{"text":"Étagère","italic":false}'},CustomModelData:7,EntityTag:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["Create7"]}} 1

# Place (avec rotation) :
execute as @e[type=armor_stand,tag=Create7] at @s if entity @p[y_rotation=-45..44.99,limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed7,distance=..0.5] run summon minecraft:armor_stand ~ ~0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Placed7","customblock"],ArmorItems:[{},{},{},{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{CustomModelData:7}}]}
execute as @e[type=armor_stand,tag=Create7] at @s if entity @p[y_rotation=45..134.99,limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed7,distance=..0.5] run summon minecraft:armor_stand ~ ~0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Placed7","customblock"],ArmorItems:[{},{},{},{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{CustomModelData:7}}],Rotation:[90f,0f]}
execute as @e[type=armor_stand,tag=Create7] at @s if entity @p[y_rotation=135..-135.01,limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed7,distance=..0.5] run summon minecraft:armor_stand ~ ~0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Placed7","customblock"],ArmorItems:[{},{},{},{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{CustomModelData:7}}],Rotation:[180f,0f]}
execute as @e[type=armor_stand,tag=Create7] at @s if entity @p[y_rotation=-135..-45,limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed7,distance=..0.5] run summon minecraft:armor_stand ~ ~0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Placed7","customblock"],ArmorItems:[{},{},{},{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{CustomModelData:7}}],Rotation:[-90f,0f]}

execute as @e[type=armor_stand,tag=Create7] at @s run setblock ~ ~ ~ minecraft:barrier
execute as @e[type=armor_stand,tag=Create7] at @s run playsound minecraft:block.wood.place block @a ~ ~ ~

execute as @e[type=armor_stand,tag=Create7] run kill @s

# Casse :

#Survie :
execute as @e[type=armor_stand,tag=Placed7,tag=surviebreaked] at @s run summon minecraft:item ~ ~-0.5 ~ {Item:{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Étagère","italic":false}'},CustomModelData:7,EntityTag:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["Create7"]}}}}
execute as @e[type=armor_stand,tag=Placed7,tag=surviebreaked] at @s run setblock ~ ~ ~ air destroy

# Creatif :
execute as @e[type=armor_stand,tag=Placed7] at @s align xyz if block ~ ~ ~ minecraft:air run kill @s

# Si pas de block derrière :
execute as @e[type=armor_stand,tag=Placed7] at @s align xyz if block ^ ^ ^1 minecraft:air run tag @s add surviebreaked

execute as @e[type=armor_stand,tag=Placed7] at @s positioned ^ ^ ^1 if entity @e[type=armor_stand,tag=Placed7,distance=..0.5] run tag @s add surviebreaked