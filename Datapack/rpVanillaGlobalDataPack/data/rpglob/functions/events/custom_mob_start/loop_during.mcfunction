execute as @a at @s run function wasd.lib:affects/earthquake

execute if score fake_sounds_count event1 matches ..20 as @a run schedule function rpglob:events/custom_mob_start/loop_during 1t