#> pk_racks:blocks/rack/helpers/drop/birch

# Summon item
summon item ~ ~ ~ {Tags:["pk.temp.current.item"],Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Birch Rack","italic": false,"color": "yellow"}',Lore:['{"text":"Birch Rack","italic": false,"color": "gray"}']},HideFlags:1,pkCustomBlockPlacer:1b,pkRack:1b,pkBirchRack:1b,SkullOwner:{Name:"%pk.custom_block.rack",Id:[I;16,11,3,2],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmY5Mjk4MWRmZjY3NmZkZGM5MDdhZTdjMDk2YzI5YWFiYjUwZjljOTFlZjUzMDRmNTNkZGQ5NWZjMzZkNjY3NyJ9fX0=",Signature:"birch"}]}},RepairCost:0,CustomModelData:16110041}}}

# Set motion if needed
execute if score $drop_with_random_motion pk.temp matches 1 as @e[type=item,tag=pk.temp.current.item,limit=1,distance=..0.1] run function pk_racks:blocks/rack/helpers/drop/set_motion

# Remove the current tag if unused
execute unless score $drop_with_current_tag pk.temp matches 1 run tag @e[type=item,tag=pk.temp.current.item,limit=1,distance=..0.1] remove pk.temp.current.item