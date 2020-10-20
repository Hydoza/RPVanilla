# Passage au mode Advenure pour tt le monde (pour éviter de se barrer en cassant)
gamemode adventure @a

# Apications des modificattion de l'event
clone 100128 178 294 100136 189 321 -131 62 286
clone 100107 178 294 100125 184 314 -177 68 282
clone 100107 178 325 100124 193 344 -210 59 258

# Fermeture des entrées et sorties
fill -133 69 299 -133 70 297 minecraft:barrier
fill -131 69 299 -131 70 297 minecraft:black_concrete

# Buits et effets sonore pendant 10 secondes (pour simuler que c en train de ce passer alors que les modiifications sont déjà apliqué)
scoreboard objectives add event1 dummy
function rpglob:events/custom_mob_start/fake_sounds
