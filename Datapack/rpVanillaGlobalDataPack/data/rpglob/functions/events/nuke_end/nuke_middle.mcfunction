scoreboard players add time event2 1

execute if score time event2 matches 709..720 run gamemode adventure @a
execute if score time event2 matches 709..720 run setblock 100059 178 284 minecraft:air
execute if score time event2 matches 709..720 run effect give @a minecraft:saturation 999999 255 true
execute if score time event2 matches 709..720 run effect give @a minecraft:invisibility 999999 255 true
execute if score time event2 matches 709..720 run effect give @a minecraft:resistance 999999 255 true
execute if score time event2 matches 709..720 run clear @a
execute if score time event2 matches 709..1290 run tp @a[scores={tpEnd=1}] 100088 178 298 90 0
execute if score time event2 matches 709..1290 run tp @a[scores={tpEnd=2}] 100084 178 302 
execute if score time event2 matches 709..1290 run tp @a[scores={tpEnd=3}] 100080 178 298
execute if score time event2 matches 709..1290 run tp @a[scores={tpEnd=4}] 100084 178 294
execute if score time event2 matches 709..1290 run tp @a[scores={tpEnd=5}] 100087 178 295
execute if score time event2 matches 709..1290 run tp @a[scores={tpEnd=6}] 100081 178 301
execute if score time event2 matches 1290 run team join TransparentInv @a
execute if score time event2 matches 1290 run title @a subtitle ["",{"text":"A","obfuscated":true,"color":"dark_blue"},{"text":" Terminé ","color":"green"},{"text":"A","obfuscated":true,"color":"dark_blue"}]
execute if score time event2 matches 1290 run title @a title ["",{"text":"RPVanilla","color":"dark_purple"},{"text":" Saison 1","color":"gold"}]
execute if score time event2 matches 1390 run title @a subtitle ["",{"text":"AAA","obfuscated":true,"color":"dark_blue"},{"text":" Soon... ","color":"dark_red"},{"text":"AAA","obfuscated":true,"color":"dark_blue"}]
execute if score time event2 matches 1390 run playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 1 0.6
execute if score time event2 matches 1390 run setblock 100059 178 284 minecraft:air
execute if score time event2 matches 1390 run title @a title ["",{"text":"RPVanilla","color":"dark_purple"},{"text":" Saison 2","color":"dark_red"}]

execute if score time event2 matches 1..1645 run schedule function rpglob:events/nuke_end/nuke_middle 1t