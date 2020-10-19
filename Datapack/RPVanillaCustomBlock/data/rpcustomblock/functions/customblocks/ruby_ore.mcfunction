# Ruby Ore :

# Give :
give @a[scores={customBlocksGive=8}] minecraft:ghast_spawn_egg{display:{Name:'{"text":"Ruby Ore","italic":false}'},CustomModelData:8,EntityTag:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["Create8"]}} 1

# Place (sans rotation):
execute as @e[type=armor_stand,tag=Create8] at @s unless entity @e[type=armor_stand,tag=Placed8,distance=..0.1] align xyz run summon minecraft:armor_stand ~0.5 ~0.5 ~0.5 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Placed8","customblock"],ArmorItems:[{},{},{},{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{CustomModelData:8}}]}

execute as @e[type=armor_stand,tag=Create8] at @s run setblock ~ ~ ~ minecraft:barrier
execute as @e[type=armor_stand,tag=Create8] at @s run playsound minecraft:block.stone.place block @a ~ ~ ~ 1 0.8

execute as @e[type=armor_stand,tag=Create8] run kill @s

# Casse :

#Survie :
execute as @e[type=armor_stand,tag=Placed8,tag=surviebreaked] at @s run summon minecraft:item ~ ~-0.5 ~ {Item:{id:"minecraft:popped_chorus_fruit",Count:1b,tag:{display:{Name:'{"text":"Ruby","italic":false}'},CustomModelData:1}}}
execute as @e[type=armor_stand,tag=Placed8,tag=surviebreaked] at @s run setblock ~ ~ ~ air destroy

# Creatif :
execute as @e[type=armor_stand,tag=Placed8] at @s align xyz if block ~ ~ ~ minecraft:air run kill @s