
# Frozen Zombie [frzn]
tag @e[type=minecraft:zombie,team=!NoNameTag,tag=!frzn_spawn_check] add frzn_spawn
execute as @e[type=minecraft:zombie,team=!NoNameTag,tag=frzn_spawn] run scoreboard players add frzn spawn_count 1
execute as @e[type=minecraft:zombie,team=!NoNameTag,tag=frzn_spawn] at @s if score frzn spawn_count matches 3 run function rpglob:customentity/summon/frozen_zombie
execute as @e[type=minecraft:zombie,team=!NoNameTag,tag=frzn_spawn] at @s if score frzn spawn_count matches 3.. run scoreboard players set frzn spawn_count 0
tag @e[type=minecraft:zombie,team=!NoNameTag,tag=frzn_spawn] add frzn_spawn_check
tag @e[type=minecraft:zombie,team=!NoNameTag,tag=frzn_spawn] remove frzn_spawn

# Original Zombie [orig]
tag @e[type=minecraft:zombie,team=!NoNameTag,tag=!orig_spawn_check] add orig_spawn
execute as @e[type=minecraft:zombie,team=!NoNameTag,tag=orig_spawn] run scoreboard players add orig spawn_count 1
execute as @e[type=minecraft:zombie,team=!NoNameTag,tag=orig_spawn] at @s if score orig spawn_count matches 10 run function rpglob:customentity/summon/original_zombie
execute as @e[type=minecraft:zombie,team=!NoNameTag,tag=orig_spawn] at @s if score orig spawn_count matches 10.. run scoreboard players set orig spawn_count 0
tag @e[type=minecraft:zombie,team=!NoNameTag,tag=orig_spawn] add orig_spawn_check
tag @e[type=minecraft:zombie,tag=orig_spawn] remove orig_spawn

# Spectre [spec]
tag @e[type=minecraft:zombie,team=!NoNameTag,tag=!spec_spawn_check] add spec_spawn
execute as @e[type=minecraft:zombie,team=!NoNameTag,tag=spec_spawn] run scoreboard players add spec spawn_count 1
execute as @e[type=minecraft:zombie,team=!NoNameTag,tag=spec_spawn] at @s if score spec spawn_count matches 5 run function rpglob:customentity/summon/spectre
execute as @e[type=minecraft:zombie,team=!NoNameTag,tag=spec_spawn] at @s if score spec spawn_count matches 5.. run scoreboard players set spec spawn_count 0
tag @e[type=minecraft:zombie,team=!NoNameTag,tag=spec_spawn] add spec_spawn_check
tag @e[type=minecraft:zombie,team=!NoNameTag,tag=spec_spawn] remove spec_spawn

# Hell Spider [hels]
# Overworld [_ow]
tag @e[type=minecraft:spider,team=!NoNameTag,tag=!hels_spawn_check_ow] add hels_spawn_ow
execute as @e[type=minecraft:spider,team=!NoNameTag,tag=hels_spawn_ow] run scoreboard players add hels_ow spawn_count 1
execute as @e[type=minecraft:spider,team=!NoNameTag,tag=hels_spawn_ow] at @s if score hels_ow spawn_count matches 13 run function rpglob:customentity/summon/hell_spider
execute as @e[type=minecraft:spider,team=!NoNameTag,tag=hels_spawn_ow] at @s if score hels_ow spawn_count matches 13.. run scoreboard players set hels_ow spawn_count 0
tag @e[type=minecraft:spider,team=!NoNameTag,tag=hels_spawn_ow] add hels_spawn_check_ow
tag @e[type=minecraft:spider,team=!NoNameTag,tag=hels_spawn_ow] remove hels_spawn_ow
# Nether [_nt]
tag @e[type=minecraft:zombified_piglin,team=!NoNameTag,tag=!hels_spawn_check_nt] add hels_spawn_nt
execute as @e[type=minecraft:zombified_piglin,team=!NoNameTag,tag=hels_spawn_nt] run scoreboard players add hels_nt spawn_count 1
execute as @e[type=minecraft:zombified_piglin,team=!NoNameTag,tag=hels_spawn_nt] at @s if score hels_nt spawn_count matches 4 run function rpglob:customentity/summon/hell_spider
execute as @e[type=minecraft:zombified_piglin,team=!NoNameTag,tag=hels_spawn_nt] at @s if score hels_nt spawn_count matches 4.. run scoreboard players set hels_nt spawn_count 0
tag @e[type=minecraft:zombified_piglin,team=!NoNameTag,tag=hels_spawn_nt] add hels_spawn_check_nt
tag @e[type=minecraft:zombified_piglin,team=!NoNameTag,tag=hels_spawn_nt] remove hels_spawn_nt

