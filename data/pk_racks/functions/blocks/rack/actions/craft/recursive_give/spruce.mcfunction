#> pk_racks:blocks/rack/actions/craft/recursive_give/spruce

function pk_racks:blocks/rack/helpers/give/spruce
scoreboard players remove %crafted_amount pk.temp 1
execute if score %crafted_amount pk.temp matches 1.. run function pk_racks:blocks/rack/actions/craft/recursive_give/spruce