#> pk_racks:base/uninstall/helpers/remove_rack

# Set scores
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# Set data in storage
data modify storage pk.common:data Uninstall.Rack set from entity @s data.Rack

# Remove block
execute if data storage pk.common:data Uninstall.Rack{Wall:0b} if block ~ ~ ~ barrier run setblock ~ ~ ~ air

# Backup the potential items
execute if data storage pk.common:data Uninstall.Rack.Items[{}].id run function pk_racks:base/uninstall/helpers/rack_set_content_chest

# Remove entities
kill @e[type=#pk_racks:custom_block/components,tag=pk.racks.rack.component,predicate=pk_racks:scores/custom_block/component_id_matching,distance=..20]

# Remove forceload
forceload remove ~ ~