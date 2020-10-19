# Caise :

# Give :
give @a[scores={customBlocksGive=4}] minecraft:ghast_spawn_egg{display:{Name:'{"text":"Caise","italic":false}'},CustomModelData:4,EntityTag:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["Create4"]}} 1

# Place (avec rotation) :
execute as @e[type=armor_stand,tag=Create4] at @s if entity @p[y_rotation=-45..44.99,limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed4,distance=..0.8] run summon minecraft:armor_stand ~ ~0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Placed4","customblock"],ArmorItems:[{},{},{},{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{CustomModelData:4}}]}
execute as @e[type=armor_stand,tag=Create4] at @s if entity @p[y_rotation=45..134.99,limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed4,distance=..0.8] run summon minecraft:armor_stand ~ ~0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Placed4","customblock"],ArmorItems:[{},{},{},{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{CustomModelData:4}}],Rotation:[90f,0f]}
execute as @e[type=armor_stand,tag=Create4] at @s if entity @p[y_rotation=135..-135.01,limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed4,distance=..0.8] run summon minecraft:armor_stand ~ ~0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Placed4","customblock"],ArmorItems:[{},{},{},{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{CustomModelData:4}}],Rotation:[180f,0f]}
execute as @e[type=armor_stand,tag=Create4] at @s if entity @p[y_rotation=-135..-45,limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed4,distance=..0.8] run summon minecraft:armor_stand ~ ~0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Placed4","customblock"],ArmorItems:[{},{},{},{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{CustomModelData:4}}],Rotation:[-90f,0f]}

execute as @e[type=armor_stand,tag=Create4] at @s run setblock ~ ~ ~ minecraft:barrier
execute as @e[type=armor_stand,tag=Create4] at @s run playsound minecraft:block.stone.place block @a ~ ~ ~

execute as @e[type=armor_stand,tag=Create4] run kill @s

# Casse :

#Survie :
execute as @e[type=armor_stand,tag=Placed4,tag=surviebreaked] at @s run summon minecraft:item ~ ~-0.5 ~ {Item:{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Caise","italic":false}'},CustomModelData:4,EntityTag:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["Create4"]}}}}
execute as @e[type=armor_stand,tag=Placed4,tag=surviebreaked] at @s run setblock ~ ~ ~ air destroy

# Creatif :
execute as @e[type=armor_stand,tag=Placed4] at @s align xyz if block ~ ~ ~ minecraft:air run kill @s