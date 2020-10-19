## Loop ##

# Casseur de custom block :
execute as @a[scores={carrotRightClick=1..}] at @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] anchored eyes positioned ^ ^ ^ run function rpcustomblock:customblocks/breakeritem

# PC portable (CustomModelData = 1) :
function rpcustomblock:customblocks/laptop

# Ruby Block (CustomModelData = 2) :
function rpcustomblock:customblocks/rubyblock

# Chaise (CustomModelData = 3) :
function rpcustomblock:customblocks/chair

# Caise (CustomModelData = 4) :
function rpcustomblock:customblocks/caise

# Table (CustomModelData = 5) :
function rpcustomblock:customblocks/table

# TV (CustomModelData = 6) :
function rpcustomblock:customblocks/tv

# Etag�re (CustomModelData = 7) :
function rpcustomblock:customblocks/shelf

# Ruby Ore (CustomModelData = 8) :
function rpcustomblock:customblocks/ruby_ore


# Functions :
function rpcustomblock:otherfunc/add_ruby_inground/loop1

scoreboard players enable Hydoza customBlocksGive
scoreboard players set @a[scores={customBlocksGive=1..}] customBlocksGive 0
scoreboard objectives add carrotRightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add rubyGen1 dummy
scoreboard objectives add count dummy
scoreboard players reset @a count

scoreboard players reset @s[scores={carrotRightClick=1..}] carrotRightClick