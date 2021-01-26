scoreboard objectives add tpEnd dummy
scoreboard objectives add event2 dummy
team add TransparentInv
team modify TransparentInv collisionRule never
team modify TransparentInv prefix {"text":"[MORT] ","color":"gray"}
weather clear 999999
scoreboard players reset time event2

playsound minecraft:event3.sound ambient @a ~ ~ ~

scoreboard players set @a tpEnd 0

scoreboard players set @r[scores={tpEnd=0}] tpEnd 1
scoreboard players set @r[scores={tpEnd=0}] tpEnd 2
scoreboard players set @r[scores={tpEnd=0}] tpEnd 3
scoreboard players set @r[scores={tpEnd=0}] tpEnd 4
scoreboard players set @r[scores={tpEnd=0}] tpEnd 5
scoreboard players set @r[scores={tpEnd=0}] tpEnd 6


function rpglob:events/nuke_end/nuke_middle