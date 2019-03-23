require("utils")
local table = require('__stdlib__/stdlib/utils/table')
local Event = require('__stdlib__/stdlib/event/event')
local Force = require('__stdlib__/stdlib/event/force').register_events()
Event.protected_mode = true


Event.register({"on_init", "on_configuration_changed"}, function()
	LOG("on_init/on_configuration_changed")

end)

Event.register({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function (event)
end)

Event.register(-20, function(event)
		-- check hour change


end)
