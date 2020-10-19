execute as @e[tag=RubyOre_posed1,scores={rubyGen1=1..}] at @s run tp @s ~ ~-1 ~
scoreboard players remove @e[tag=RubyOre_posed1,scores={rubyGen1=1..}] rubyGen1 1
execute as @e[tag=RubyOre_posed1,scores={rubyGen1=1..}] at @s if block ~ ~ ~ minecraft:bedrock run tp @s ~ ~1 ~
execute as @e[tag=RubyOre_posed1,scores={rubyGen1=1..}] at @s if block ~ ~ ~ minecraft:bedrock run scoreboard players set @s rubyGen1 0

execute as @e[tag=RubyOre_posed1,scores={rubyGen1=..0}] at @s if block ~ ~ ~ #rpcustomblock:no_solid_block run tp @s ~ ~-1 ~

execute as @e[tag=RubyOre_posed1,scores={rubyGen1=..0}] at @s unless block ~ ~ ~ #rpcustomblock:no_solid_block run function rpcustomblock:customblocks/setblock/ruby_ore

execute as @e[tag=RubyOre_posed1,scores={rubyGen1=..0}] at @s unless block ~ ~ ~ #rpcustomblock:no_solid_block run kill @s
