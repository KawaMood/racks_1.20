#> pk_racks:base/uninstall/start
# Uninstall the data pack and remove the common feature if there is no PK data pack installed anymore

# Remove all placed custom blocks
# Will need to be searched within all dimensions
data remove storage pk.common:data Temp
data modify storage pk.common:data Temp.Array.Search set value []
# - Append Racks
data modify storage pk.common:data Temp.Array.Search append from storage pk.racks:data Blocks.Racks[]
# - Forceload chunks where custom blocks are, then wait 1 second after for the chunk to be fully loaded
execute if data storage pk.common:data Temp.Array.Search[{}] run function pk_racks:base/uninstall/forceload_custom_blocks_chunks

# 1 second after
schedule function pk_racks:base/uninstall/after_1s 1s