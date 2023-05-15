# Remove current data pack storage
data remove storage pk.racks:data Blocks

# Remove current data pack scores

# Remove the current data pack from the installed PK data packs list
data remove storage pk.common:data Datapacks[{Name:"Racks"}]

# Remove installed version score
scoreboard players reset $pk.racks.version pk.value