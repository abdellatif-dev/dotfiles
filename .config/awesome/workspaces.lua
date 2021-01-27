local awful = require("awful")
require("awful.autofocus")
local beautiful = require("beautiful")
local gears = require("gears")


awful.screen.connect_for_each_screen(function(s)


beautiful.init(gears.filesystem.get_configuration_dir() .. "./theme/theme.lua")

    -- Each screen has its own tag table.
    awful.tag({ "1", "2", "3", "4", "5", "6","7" , "8", "9" }, s, awful.layout.layouts[1])
end)
-- }}}
