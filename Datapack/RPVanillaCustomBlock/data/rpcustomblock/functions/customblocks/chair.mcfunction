# Chaise :

# Give :
give @a[scores={customBlocksGive=3}] minecraft:ghast_spawn_egg{display:{Name:'{"text":"Chaise","italic":false}'},CustomModelData:3,EntityTag:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["Create3"]}} 1

# Place (avec rotation) :
execute as @e[type=armor_stand,tag=Create3] at @s if entity @p[y_rotation=-45..44.99,limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed3,distance=..0.8] run summon minecraft:armor_stand ~ ~0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Placed3","customblock"],ArmorItems:[{},{},{},{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{CustomModelData:3}}]}
execute as @e[type=armor_stand,tag=Create3] at @s if entity @p[y_rotation=45..134.99,limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed3,distance=..0.8] run summon minecraft:armor_stand ~ ~0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Placed3","customblock"],ArmorItems:[{},{},{},{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{CustomModelData:3}}],Rotation:[90f,0f]}
execute as @e[type=armor_stand,tag=Create3] at @s if entity @p[y_rotation=135..-135.01,limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed3,distance=..0.8] run summon minecraft:armor_stand ~ ~0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Placed3","customblock"],ArmorItems:[{},{},{},{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{CustomModelData:3}}],Rotation:[180f,0f]}
execute as @e[type=armor_stand,tag=Create3] at @s if entity @p[y_rotation=-135..-45,limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed3,distance=..0.8] run summon minecraft:armor_stand ~ ~0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Placed3","customblock"],ArmorItems:[{},{},{},{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{CustomModelData:3}}],Rotation:[-90f,0f]}

execute as @e[type=armor_stand,tag=Create3] at @s run setblock ~ ~ ~ minecraft:barrier
execute as @e[type=armor_stand,tag=Create3] at @s run playsound minecraft:block.stone.place block @a ~ ~ ~

execute as @e[type=armor_stand,tag=Create3] at @s if entity @p[y_rotation=-45..44.99,limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed3,distance=..0.1] run summon minecraft:horse ~ ~-0.9 ~ {Invulnerable:1b,NoGravity:1b,Silent:1b,Team:"NoCollision",PersistenceRequired:1b,NoAI:1b,Tame:1b,Tags:["sitHorse"],Rotation:[180f,0f]}
execute as @e[type=armor_stand,tag=Create3] at @s if entity @p[y_rotation=45..134.99,limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed3,distance=..0.1] run summon minecraft:horse ~ ~-0.9 ~ {Invulnerable:1b,NoGravity:1b,Silent:1b,Team:"NoCollision",PersistenceRequired:1b,NoAI:1b,Tame:1b,Tags:["sitHorse"],Rotation:[-90f,0f]}
execute as @e[type=armor_stand,tag=Create3] at @s if entity @p[y_rotation=135..-135.01,limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed3,distance=..0.1] run summon minecraft:horse ~ ~-0.9 ~ {Invulnerable:1b,NoGravity:1b,Silent:1b,Team:"NoCollision",PersistenceRequired:1b,NoAI:1b,Tame:1b,Tags:["sitHorse"]}
execute as @e[type=armor_stand,tag=Create3] at @s if entity @p[y_rotation=-135..-45,limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed3,distance=..0.1] run summon minecraft:horse ~ ~-0.9 ~ {Invulnerable:1b,NoGravity:1b,Silent:1b,Team:"NoCollision",PersistenceRequired:1b,NoAI:1b,Tame:1b,Tags:["sitHorse"],Rotation:[90f,0f]}

execute as @e[type=armor_stand,tag=Create3] run kill @s
effect give @e[tag=sitHorse] minecraft:invisibility 10 1 true


# Casse :

#Survie :
execute as @e[type=armor_stand,tag=Placed3,tag=surviebreaked] at @s run summon minecraft:item ~ ~-0.5 ~ {Item:{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Chaise","italic":false}'},CustomModelData:3,EntityTag:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["Create3"]}}}}
execute as @e[type=armor_stand,tag=Placed3,tag=surviebreaked] at @s run setblock ~ ~ ~ air
execute as @e[type=armor_stand,tag=Placed3,tag=surviebreaked] at @s run particle minecraft:block oak_planks ~ ~ ~ 0.3 0.3 0.3 2 70 force
execute as @e[type=armor_stand,tag=Placed3,tag=surviebreaked] at @s run playsound minecraft:block.wood.break ambient @a ~ ~ ~ 1 0.9

# Creatif :
execute as @e[type=armor_stand,tag=Placed3] at @s if block ~ ~ ~ minecraft:air positioned ~ ~-1.4 ~ unless entity @p[distance=..0.9] run tp @e[distance=..0.9,tag=sitHorse] ~ ~-300 ~
execute as @e[type=armor_stand,tag=Placed3] at @s if block ~ ~ ~ minecraft:air positioned ~ ~-1.4 ~ if entity @p[distance=..0.9] run kill @e[tag=sitHorse,distance=..0.9]
execute as @e[type=armor_stand,tag=Placed3] at @s align xyz if block ~ ~ ~ minecraft:air run kill @s