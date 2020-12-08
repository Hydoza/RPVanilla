
execute positioned -203 64 265 run gamemode adventure @a[distance=..18, gamemode=!creative,gamemode=!spectator]
execute positioned -203 64 265 run gamemode survival @a[distance=19..22, gamemode=!creative,gamemode=!spectator]
particle minecraft:cloud -206.5 65.5 264.75 0 1 1 0 10
fill -192 63 279 -210 71 254 minecraft:air replace minecraft:water
fill -192 63 279 -210 71 254 minecraft:air replace minecraft:lava
execute positioned -203 64 265 run kill @e[type=minecraft:tnt,distance=..18]