#> pk_racks:blocks/rack/remove/drop_item

# Drop item and run correct blocks break particles depending on the skin
execute if data storage pk.common:data Temp.Rack{Type:"oak"} run function pk_racks:blocks/rack/remove/skins/oak
execute if data storage pk.common:data Temp.Rack{Type:"birch"} run function pk_racks:blocks/rack/remove/skins/birch
execute if data storage pk.common:data Temp.Rack{Type:"spruce"} run function pk_racks:blocks/rack/remove/skins/spruce
execute if data storage pk.common:data Temp.Rack{Type:"dark_oak"} run function pk_racks:blocks/rack/remove/skins/dark_oak