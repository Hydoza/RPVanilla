
# Jouer le sons Idle aléatoirement
execute as @e[name="Spectre",limit=1,sort=random] at @s run function wasd.lib:rng/1-100

execute as @e[name="Spectre"] at @s if score @s wasd.rng matches 30 run playsound minecraft:custommobs.spectre.idle hostile @a ~ ~ ~ 0.2 1 0.4

# Jouer le sons hurt quand prend des dégats
execute as @e[name="Spectre",nbt={HurtTime:10s}] at @s run playsound minecraft:custommobs.spectre.hurt hostile @a[distance=..10] ~ ~ ~ 0.5 1 0.8
execute as @e[name="Spectre",nbt={HurtTime:10s}] at @s run playsound minecraft:custommobs.spectre.hurt hostile @a[distance=10..20] ~ ~ ~ 0.1 1 0.15

# Degats au contact de l'eau
execute as @e[name="Spectre"] at @s if block ~ ~ ~ water run effect give @s minecraft:instant_health 1 0 true
