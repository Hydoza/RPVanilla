team join NoNameTag @e[name="Frozen Zombie"]
execute as @e[name="Frozen Zombie"] at @s run effect give @a[distance=..1.5,scores={damage_taken=1..}] minecraft:slowness 5 3 true
scoreboard players set @a[scores={damage_taken=1..}] damage_taken 0