#> pk_racks:blocks/rack/place/ground/skins/block_display/3

# Set component id score to link entities
scoreboard players operation @s pk.custom_block.component.id = $next pk.custom_block.component.id

# Add tags
function pk_racks:blocks/rack/place/ground/skins/add_parts_common_tags
tag @s add pk.part.3

# Set data
function pk_racks:blocks/rack/place/ground/skins/add_parts_block_state
data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.225f,0.974f],scale:[0.65f,1.0f,0.65f],translation:[0.135f,-0.677f,0.0939f]}}

# By default: South-North (Z axis) - if West-East (X axis), turn entity
execute if score $facing pk.temp matches 0..1 run tp @s ~ ~ ~ 90 0