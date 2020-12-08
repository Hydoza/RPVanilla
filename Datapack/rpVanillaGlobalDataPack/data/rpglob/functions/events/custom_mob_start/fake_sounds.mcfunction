summon armor_stand -127 69 299 {Invisible:1b,CustomName:'{"text":"fake_sound1"}'}
spreadplayers -139 298 10 40 false @e[name=fake_sound1]
execute as @e[name=fake_sound1] at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @a ~ ~ ~ 10 2
execute as @e[name=fake_sound1] at @s if score fake_sounds_count event1 matches 19 run playsound minecraft:block.end_portal.spawn ambient @a ~ ~ ~ 10 0.1
execute as @e[name=fake_sound1] at @s if score fake_sounds_count event1 matches 14 run playsound minecraft:entity.lightning_bolt.impact ambient @a ~ ~ ~ 20 1
execute as @e[name=fake_sound1] at @s if score fake_sounds_count event1 matches 6 run playsound minecraft:entity.lightning_bolt.impact ambient @a ~ ~ ~ 20 1
kill @e[name=fake_sound1]
scoreboard players add fake_sounds_count event1 1

execute unless score fake_sounds_count event1 matches 20.. run schedule function rpglob:events/custom_mob_start/fake_sounds 1s
execute if score fake_sounds_count event1 matches 20.. run function rpglob:events/custom_mob_start/end