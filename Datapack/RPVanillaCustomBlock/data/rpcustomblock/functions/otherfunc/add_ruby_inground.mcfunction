
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["RubyOre_spawn"]}

spreadplayers ~ ~ 1 170 false @e[tag=RubyOre_spawn]

scoreboard players set @e[tag=RubyOre_spawn] rubyGen1 50

tag @e[tag=RubyOre_spawn] add RubyOre_posed1
