#> pk_racks:base/uninstall/start
# Uninstall the data pack and remove the common feature if there is no KawaMood data pack installed anymore

# Turn off command blocks output in chat during the process
execute store success score $gm_command_block_output_state pk.value run gamerule commandBlockOutput false

# Check if the specific chunk that need to stay loaded is loaded 
execute store result score $forceload pk.temp run forceload query -30000000 -1611
execute if score $forceload pk.temp matches 0 run forceload add -30000000 -1611

# Remove all placed custom blocks from the data packs
data remove storage pk.common:data Uninstall.Array
data modify storage pk.common:data Uninstall.Array.Search set value []
# - Append Racks
data modify storage pk.common:data Uninstall.Array.Search append from storage pk.racks:data Blocks.Racks[]

# Logs
tellraw @a [{"text": "Started uninstalling process for ","color": "yellow"},{"text": "KawaMood's Racks","color": "aqua","bold": true},{"text":". It might take some seconds...","color": "yellow"}]

# Recursive function
execute if data storage pk.common:data Uninstall.Array.Search[{}] run function pk_racks:base/uninstall/recursive
execute unless data storage pk.common:data Uninstall.Array.Search[{}] run function pk_racks:base/uninstall/stop