## Tick ## :

## Global custom Mobs :
scoreboard objectives add damage_taken minecraft.custom:minecraft.damage_taken

# Fonctions des Custom mobs :
function rpglob:customentity/mobsfunctions/frozen_zombie
function rpglob:customentity/mobsfunctions/spectre

# Item Effects :
execute as @a[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:103b,tag:{CustomModelData:4}},{id:"minecraft:diamond_chestplate",Slot:102b,tag:{CustomModelData:4}},{id:"minecraft:diamond_leggings",Slot:101b,tag:{CustomModelData:4}},{id:"minecraft:diamond_boots",Slot:100b,tag:{CustomModelData:4}}]}] at @s run function rpglob:customitems/item_effects/full_mixite_armor
