local gears = require("gears")
local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup")


terminal = "alacritty"

modkey = "Mod4"
key = "Mod1"


-- {{{ Mouse bindings
root.buttons(gears.table.join(
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
))
-- }}}

-- {{{ Key bindings
globalkeys = gears.table.join(
    awful.key({ modkey,           }, "s",      hotkeys_popup.show_help,
              {description="show help", group="awesome"}),
    awful.key({ modkey,           }, "h",   awful.tag.viewprev,
              {description = "view previous", group = "tag"}),
    awful.key({ modkey,           }, "l",  awful.tag.viewnext,
              {description = "view next", group = "tag"}),

    awful.key({ modkey, "Control"    }, "h", function () awful.client.focus.global_bydirection("left") end,
              {description = "focus next by index", group = "client"}),

    awful.key({ modkey, "Control"    }, "l", function () awful.client.focus.global_bydirection("right") end,
              {description = "focus previous by index", group = "client"}),

    awful.key({ modkey, "Control"    }, "k", function () awful.client.focus.global_bydirection("up") end,
              {description = "focus previous by index", group = "client"}),

    awful.key({ modkey, "Control"    }, "j", function () awful.client.focus.global_bydirection("down") end,
              {description = "focus previous by index", group = "client"}),

    awful.key({ modkey, "Shift"   }, "h", function () awful.client.swap.byidx(  1)    end,
              {description = "swap with next client by index", group = "client"}),

    awful.key({ modkey, "Shift"   }, "l", function () awful.client.swap.byidx( -1)    end,
              {description = "swap with previous client by index", group = "client"}),

    awful.key({ modkey,   }, "j",     function () awful.tag.incmwfact( 0.01)    end),
    awful.key({ modkey,   }, "k",     function () awful.tag.incmwfact(-0.01)    end),

    awful.key({ modkey, }, "t", function () awful.spawn(terminal) end,
            {description = "open alacritty", group = "a software"}),

    awful.key({ modkey, }, "d", function () awful.util.spawn("dmenu_run") end,
            {description = "open dmenu_run", group = "a software"}),


    awful.key({ modkey, }, "p", function () awful.util.spawn("passmenu") end,
            {description = "open passmenu", group = "a software"}),

    awful.key({ modkey, "Control" }, "r", awesome.restart,
              {description = "reload awesome", group = "awesome"}),

    awful.key({ modkey, "Shift"   }, "q", awesome.quit,
              {description = "quit awesome", group = "awesome"}),

    awful.key({ modkey,           }, "space", function () awful.layout.inc( 1)                end,
              {description = "select next", group = "layout"}),

    awful.key({ modkey, "Shift"   }, "space", function () awful.layout.inc(-1)                end,
              {description = "select previous", group = "layout"}),

    awful.key({ modkey, "Control" }, "n",
              function ()
                  local c = awful.client.restore()
                  -- Focus restored client
                  if c then
                    c:emit_signal(
                        "request::activate", "key.unminimize", {raise = true}
                    )
                  end
              end,
              {description = "restore minimized", group = "client"}),

    awful.key({ modkey , "Control" }, "b",     function () awful.util.spawn("brave-dev") end,
              {description = "run brave", group = "a software"}),

    awful.key({ key ,  }, "m",     function () awful.util.spawn("/home/flagmate/.config/awesome/scripts/mountusb") end,
              {description = "mount a drive", group = "a software"})


) 
for i = 1, 9 do
    globalkeys = gears.table.join(globalkeys,
        -- View tag only.
        awful.key({ modkey }, "#" .. i + 9,
                  function ()
                        local screen = awful.screen.focused()
                        local tag = screen.tags[i]
                        if tag then
                           tag:view_only()
                        end
                  end,
                  {description = "view tag #"..i, group = "tag"}),
        -- Toggle tag display.
        awful.key({ modkey, "Control" }, "#" .. i + 9,
                  function ()
                      local screen = awful.screen.focused()
                      local tag = screen.tags[i]
                      if tag then
                         awful.tag.viewtoggle(tag)
                      end
                  end,
                  {description = "toggle tag #" .. i, group = "tag"}),
        -- Move client to tag.
        awful.key({ modkey, "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus then
                          local tag = client.focus.screen.tags[i]
                          if tag then
                              client.focus:move_to_tag(tag)
                          end
                     end
                  end,
                  {description = "move focused client to tag #"..i, group = "tag"})
    )
end

clientbuttons = gears.table.join(
    awful.button({ }, 1, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
    end),
    awful.button({ modkey }, 1, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
        awful.mouse.client.move(c)
    end),
    awful.button({ modkey }, 3, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
        awful.mouse.client.resize(c)
    end)
)


clientkeys = awful.util.table.join(
    awful.key({ modkey,           }, "f",      function (c) c.fullscreen = not c.fullscreen  end),
    awful.key({ modkey,           }, "w",      function (c) c:kill()                         end),
    awful.key({ modkey, "Control" }, "space",  awful.client.floating.toggle                     ),
    awful.key({ modkey,           }, "o",      awful.client.movetoscreen                        ),
    awful.key({ key,           }, "t",      function (c) c.ontop = not c.ontop            end),
--                                                             ( move x, move y,resize x, resize y)

    awful.key({ key,   }, "k",     function (c) c:relative_move(0, -20, 0, 0)    end),
    awful.key({ key,   }, "j",     function (c) c:relative_move(0, 20, 0, 0)    end),
    awful.key({ key,   }, "h",     function (c) c:relative_move(-20, 0, 0, 0)    end),
    awful.key({ key,   }, "l",     function (c) c:relative_move(20, 0, 0, 0)    end),



    awful.key({ key, "Control"  }, "k",     function (c) c:relative_move(0, 0, 0, -20)    end),
    awful.key({ key, "Control"  }, "j",     function (c) c:relative_move(0, 0, 0, 20)    end),
    awful.key({ key, "Control"  }, "h",     function (c) c:relative_move(0, 0, -20, 0)    end),
    awful.key({ key, "Control"  }, "l",     function (c) c:relative_move(0, 0, 20, 0)    end),

    awful.key({ modkey,           }, "n",
        function (c)
            -- The client currently has the input focus, so it cannot be
            -- minimized, since minimized clients can't have the focus.
            c.minimized = true
        end),
    awful.key({ modkey,           }, "m",
        function (c)
            c.maximized = not c.maximized
            c:raise()
        end)
)


clientbuttons = gears.table.join(
    awful.button({ }, 1, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
    end),
    awful.button({ modkey }, 1, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
        awful.mouse.client.move(c)
    end),
    awful.button({ modkey }, 3, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
        awful.mouse.client.resize(c)
    end)
)

-- Set keys
root.keys(globalkeys)
-- }}}
