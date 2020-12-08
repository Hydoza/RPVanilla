team join NoNameTag @s
function wasd.lib:rng/1-20

# Résitant au feu
data modify entity @s Fire set value 0s

# Dans le nether
execute if entity @a[nbt={Dimension:"minecraft:the_nether"},distance=..100] if score @s wasd.rng matches 5 run setblock ~ ~ ~ minecraft:fire

# Dans l'end
execute if entity @a[nbt={Dimension:"minecraft:the_end"},distance=..100] if score @s wasd.rng matches 5 run setblock ~ ~ ~ minecraft:fire
execute if entity @a[nbt={Dimension:"minecraft:the_end"},distance=..2] run summon creeper ~ ~ ~ {Silent:1b,Team:"NoNameTag",NoAI:1b,ExplosionRadius:9b,Fuse:0,ignited:1b,CustomName:'{"text":"....Hein??"}'}
execute if entity @a[nbt={Dimension:"minecraft:the_end"},distance=..2] run tp @s ~ ~190 ~

