require ("util")
require("utils")

data:extend({
	{
		type = "item-group",
		name = "money-group",
		icon = "__LibMoney__/graphics/money-group.png",
		icon_size = 32,
		inventory_order = "n",
		order = "n"
	},
	{
		type = "item-subgroup",
		name = "money-general",
		group = "money-group",
		order = "a"
	},
  {
    type = "item",
    name = "ucoin",
    icon = "__LibMoney__/graphics/ucoin.png",
    icon_size = 32,
    subgroup = "money-general",
    order = "y",
    stack_size = 1000000
  },
	{
		type = "container",
		name = "bank",
		icon = "__LibMoney__/graphics/icons/bank-icon.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "bank"},
		max_health = 450,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-2.5, -1.8}, {2.5, 1.8}},
		selection_box = {{-2.5, -7.5}, {2.5, 1.8}},
--		fast_replaceable_group = "container",
		inventory_size = 10,
		picture =
		{
			filename = "__LibMoney__/graphics/entity/bank.png",
			priority = "high",
			width = 300,
			height = 300,
			shift = util.by_pixel(70, -90),
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {2.01, 0.6},
				green = {2.52, 0.6}
			},
			wire =
			{
				red = {1.71, 0.3},
				green = {2.22, 0.3}
			}
		},
	},
	{
		type = "item",
		name = "bank",
		icon = "__LibMoney__/graphics/icons/bank-icon.png",
		icon_size = 32,
		subgroup = "money-general",
		order = "zz",
		place_result = "bank",
		stack_size = 10,
	},
})












----------
