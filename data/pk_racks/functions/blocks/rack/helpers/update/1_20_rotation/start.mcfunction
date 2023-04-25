#> pk_racks:blocks/rack/helpers/update/1_20_rotation/start
# Update name visibility for all racks

# Will need to be searched within all dimensions
data remove storage pk.common:data Temp
data modify storage pk.common:data Temp.Array.Search set value []
# - Append Racks
data modify storage pk.common:data Temp.Array.Search append from storage pk.racks:data Blocks.Racks[]
# - Forceload chunks where custom blocks are, then wait 1 second for the chunk to be fully loaded
execute if data storage pk.common:data Temp.Array.Search[{}] run function pk_racks:blocks/rack/helpers/update/1_20_rotation/forceload_custom_blocks_chunks

# 1 second after
schedule function pk_racks:blocks/rack/helpers/update/1_20_rotation/after_1s 1s