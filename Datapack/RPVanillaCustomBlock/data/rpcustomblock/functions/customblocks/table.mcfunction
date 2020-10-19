# Table en Bois :

# Give :
give @a[scores={customBlocksGive=5}] minecraft:ghast_spawn_egg{display:{Name:'{"text":"Table en Bois","italic":false}'},CustomModelData:5,EntityTag:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["Create5"]}} 1

# Place (sans rotation):
execute as @e[type=armor_stand,tag=Create5] at @s if entity @p[limit=1,distance=..5] unless entity @e[type=armor_stand,tag=Placed5,distance=..0.1] run summon minecraft:armor_stand ~ ~0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Placed5","customblock","table"],ArmorItems:[{},{},{},{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{CustomModelData:5}}]}

execute as @e[type=armor_stand,tag=Create5] at @s run setblock ~ ~ ~ minecraft:barrier
execute as @e[type=armor_stand,tag=Create5] at @s run playsound minecraft:block.wood.place ambient @a ~ ~ ~ 1 0.9

execute as @e[type=armor_stand,tag=Create5] run kill @s

# Casse :

#Survie :
execute as @e[type=armor_stand,tag=Placed5,tag=surviebreaked] at @s run summon minecraft:item ~ ~-0.5 ~ {Item:{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Table en Bois","italic":false}'},CustomModelData:5,EntityTag:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["Create5"]}}}}
execute as @e[type=armor_stand,tag=Placed5,tag=surviebreaked] at @s run setblock ~ ~ ~ air
execute as @e[type=armor_stand,tag=Placed5,tag=surviebreaked] at @s run particle minecraft:block oak_planks ~ ~ ~ 0.3 0.3 0.3 2 70 force
execute as @e[type=armor_stand,tag=Placed5,tag=surviebreaked] at @s run playsound minecraft:block.wood.break ambient @a ~ ~ ~ 1 0.9

# Creatif :
execute as @e[type=armor_stand,tag=Placed5] at @s align xyz if block ~ ~ ~ minecraft:air run kill @s



# Detections des types :

# Type 0 :
execute as @e[type=armor_stand,tag=table] at @s positioned ~1 ~ ~ unless entity @e[type=armor_stand,tag=table,distance=..0.5] run replaceitem entity @s armor.head minecraft:ghast_spawn_egg{CustomModelData:5}
execute as @e[type=armor_stand,tag=table] at @s positioned ~-1 ~ ~ unless entity @e[type=armor_stand,tag=table,distance=..0.5] run replaceitem entity @s armor.head minecraft:ghast_spawn_egg{CustomModelData:5}
execute as @e[type=armor_stand,tag=table] at @s positioned ~ ~ ~1 unless entity @e[type=armor_stand,tag=table,distance=..0.5] run replaceitem entity @s armor.head minecraft:ghast_spawn_egg{CustomModelData:5}
execute as @e[type=armor_stand,tag=table] at @s positioned ~ ~ ~-1 unless entity @e[type=armor_stand,tag=table,distance=..0.5] run replaceitem entity @s armor.head minecraft:ghast_spawn_egg{CustomModelData:5}

# Type 1 :
execute as @e[type=armor_stand,tag=table] at @s positioned ~1 ~ ~ if entity @e[type=armor_stand,tag=table,distance=..0.5] run replaceitem entity @s armor.head minecraft:brick{CustomModelData:1}
execute as @e[type=armor_stand,tag=table] at @s positioned ~-1 ~ ~ if entity @e[type=armor_stand,tag=table,distance=..0.5] run replaceitem entity @s armor.head minecraft:brick{CustomModelData:2}
execute as @e[type=armor_stand,tag=table] at @s positioned ~ ~ ~1 if entity @e[type=armor_stand,tag=table,distance=..0.5] run replaceitem entity @s armor.head minecraft:brick{CustomModelData:3}
execute as @e[type=armor_stand,tag=table] at @s positioned ~ ~ ~-1 if entity @e[type=armor_stand,tag=table,distance=..0.5] run replaceitem entity @s armor.head minecraft:brick{CustomModelData:4}

# Type 2 :
execute as @e[type=armor_stand,tag=table] at @s positioned ~1 ~ ~ if entity @e[type=armor_stand,tag=table,distance=..0.5] at @s positioned ~ ~ ~1 if entity @e[type=armor_stand,tag=table,distance=..0.5] run replaceitem entity @s armor.head minecraft:brick{CustomModelData:8}
execute as @e[type=armor_stand,tag=table] at @s positioned ~-1 ~ ~ if entity @e[type=armor_stand,tag=table,distance=..0.5] at @s positioned ~ ~ ~1 if entity @e[type=armor_stand,tag=table,distance=..0.5] run replaceitem entity @s armor.head minecraft:brick{CustomModelData:7}
execute as @e[type=armor_stand,tag=table] at @s positioned ~1 ~ ~ if entity @e[type=armor_stand,tag=table,distance=..0.5] at @s positioned ~ ~ ~-1 if entity @e[type=armor_stand,tag=table,distance=..0.5] run replaceitem entity @s armor.head minecraft:brick{CustomModelData:6}
execute as @e[type=armor_stand,tag=table] at @s positioned ~-1 ~ ~ if entity @e[type=armor_stand,tag=table,distance=..0.5] at @s positioned ~ ~ ~-1 if entity @e[type=armor_stand,tag=table,distance=..0.5] run replaceitem entity @s armor.head minecraft:brick{CustomModelData:5}

# Type 3 :
execute as @e[type=armor_stand,tag=table] at @s positioned ~1 ~ ~ if entity @e[type=armor_stand,tag=table,distance=..0.5] at @s positioned ~-1 ~ ~ if entity @e[type=armor_stand,tag=table,distance=..0.5] run replaceitem entity @s armor.head minecraft:brick{CustomModelData:9}
execute as @e[type=armor_stand,tag=table] at @s positioned ~ ~ ~1 if entity @e[type=armor_stand,tag=table,distance=..0.5] at @s positioned ~ ~ ~-1 if entity @e[type=armor_stand,tag=table,distance=..0.5] run replaceitem entity @s armor.head minecraft:brick{CustomModelData:9}
