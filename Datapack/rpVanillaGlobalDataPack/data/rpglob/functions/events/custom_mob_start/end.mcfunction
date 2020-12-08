scoreboard players reset fake_sounds_count event1
scoreboard players set ended event1 1
fill -133 69 299 -133 70 297 air
fill -131 69 299 -131 70 297 air
gamemode survival @a
time set night
weather thunder

scoreboard players set isCustomMobsSpawning event1 1

function rpglob:customentity/summon/spectre
function rpglob:customentity/summon/spectre
spreadplayers -203.44 266.04 0 5 false @e[name=Spectre]

function rpglob:customentity/summon/original_zombie
spreadplayers -203.44 266.04 0 5 false @e[name="Original Zombie"]

function rpglob:customentity/summon/hell_spider
function rpglob:customentity/summon/hell_spider
spreadplayers -203.44 266.04 0 5 false @e[name="Hell Spider"]

function rpglob:customentity/summon/frozen_zombie
function rpglob:customentity/summon/frozen_zombie
spreadplayers -203.44 266.04 0 5 false @e[name="Frozen Zombie"]