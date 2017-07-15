-- Standard awesome library
require("awful")
require("awful.autofocus")
require("awful.rules")
-- Theme handling library
require("beautiful")
-- Notification library
require("naughty")

local USE_DBG = false
dbg = function (msg)
    if USE_DBG then
        naughty.notify({ preset = naughty.config.presets.critical,
                         title = "DBG MSG:",
                         text = msg })
    end
end

dbgclient = function (event_name, c)
    dbg(event_name.." "..tostring(c.pid).." "..tostring(c.window).." "..(c.clas$
end

-- {{{ Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
if awesome.startup_errors then
    if USE_DBG then
        naughty.notify({ preset = naughty.config.presets.critical,
                         title = "Oops, there were errors during startup!",
                         text = awesome.startup_errors })
    end
end

-- Handle runtime errors after startup
do
    local in_error = false
    awesome.add_signal("debug::error", function (err)
        if USE_DBG then
            -- Make sure we don't go into an endless error loop
            if in_error then return end
            in_error = true

            naughty.notify({ preset = naughty.config.presets.critical,
                             title = "Oops, an error happened!",
                             text = err })
            in_error = false
        end
    end)
end
-- }}}

-- {{{ client API
onboard = {}
home_screen = {}

focus_next_client = function ()
    if awful.client.next(1) == home_screen.client then
        awful.client.focus.byidx( 2 )
    else
        awful.client.focus.byidx( 1 )
    end

    if client.focus then
        client.focus:raise()
    end
end

focus_client_by_window_id = function (window_id)
    for _, c in ipairs(client.get()) do
        if c.window == window_id then
            client.focus = c
            if client.focus then
                client.focus:raise()
            end
        end
    end
end

launch_home_screen = function ()
    if home_screen.client then
        client:kill()
        home_screen = {}
    end
    awful.util.spawn_with_shell("pocket-home")
end

focus_home_screen = function ()
    if home_screen.client then
        client.focus = home_screen.client
        if client.focus then
            client.focus:raise()
        end
    else
        launch_home_screen()
    end
end

hide_mouse_cursor = function ()
    -- hide mouse pointer on root window
    -- awful.util.spawn_with_shell("xsetroot -cursor $HOME/.config/awesome/blan$
end
-- }}}

-- {{{ Variable definitions
-- Themes define colours, icons, and wallpapers
beautiful.init("/home/chip/.config/awesome/theme.lua")

-- This is used later as the default terminal and editor to run.
local terminal = "x-terminal-emulator"
local editor = os.getenv("EDITOR") or "editor"
local editor_cmd = terminal .. " -e " .. editor

-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with ot$
local modkey = "Mod1"

-- Table of layouts to cover with awful.layout.inc, order matters.
local layouts =
{
    -- awful.layout.suit.floating,
    -- awful.layout.suit.tile,
    -- awful.layout.suit.tile.left,
    -- awful.layout.suit.tile.bottom,
    -- awful.layout.suit.tile.top,
    -- awful.layout.suit.fair,
    -- awful.layout.suit.fair.horizontal,
    -- awful.layout.suit.spiral,
    -- awful.layout.suit.spiral.dwindle,
    -- awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
    -- awful.layout.suit.magnifier
}
-- }}}

-- {{{ Tags
-- Define a tag table which hold all screen tags.
local tags = {}
for s = 1, screen.count() do
    -- Each screen has its own tag table.
    tags[s] = awful.tag({ 1 }, s, layouts[1])
end
-- }}}

-- {{{ Mouse bindings
root.buttons(awful.util.table.join(
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
))
-- }}}

-- {{{ Key bindings
local globalkeys = awful.util.table.join(
    awful.key({ }                  , "XF86PowerOff", focus_home_screen),
    awful.key({ modkey,           }, "Tab", focus_next_client),
    awful.key({ "Control",        }, "Tab", focus_next_client),
    awful.key({ modkey,           }, "Return", function () awful.util.spawn("dm$
)

local clientkeys = awful.util.table.join(
    awful.key({ "Control"         }, "q",
        function (c)
            if c ~= home_screen.client then
                c:kill()
            end
        end)
)

-- Compute the maximum number of digit we need, limited to 9
local keynumber = 0
for s = 1, screen.count() do
    keynumber = math.min(9, math.max(#tags[s], keynumber));
end

local clientbuttons = awful.util.table.join(
    awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
    -- left click and mode allows you to move windows
    awful.button({ modkey }, 1, awful.mouse.client.move),
    -- right click when holding mod
    awful.button({ "Control" }, 1, function (c) awful.util.spawn("xdotool click$

-- Set global keys
root.keys(globalkeys)
-- }}}

-- {{{ Rules
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = 0,
                     border_color = beautiful.border_normal,
                     focus = true,
                     keys = clientkeys,
                     buttons = clientbuttons } }
}
-- }}}

-- {{{ Signals
-- Signal function to execute when a new client appears.

client.add_signal("focus", function (c)
  hide_mouse_cursor()
end)

client.add_signal("unfocus", function (c)
  if c == onboard.client then
      awful.util.spawn("xdotool search --name ahoy windowactivate", false)
  end
end)

client.add_signal("manage", function (c, startup)
    -- match homescreen by pid
    if c.name == "pocket-home" then
        home_screen.client = c
    -- match onboarding by class
    elseif c.class == "ahoy" then
        onboard.client = c
        c.ontop = true
    end

    if not startup then
      -- Put windows in a smart way, only if they does not set an initial posit$
      if not c.size_hints.user_position and not c.size_hints.program_position t$
          awful.placement.no_overlap(c)
          awful.placement.no_offscreen(c)
      end
    end
end)

-- cleanup watched clients
-- FIXME: make sure to ignore if we don't have a client,
-- apparently it's possible for unmanage to be called before manage
-- when certain applications first open.
client.add_signal("unmanage", function (c)
    -- match homescreen
    if c.name == "pocket-home" then
        home_screen = {}
    -- match onboarding
    elseif c.class == "ahoy" then
        onboard = {}
    end
end)
-- }}}

-- {{{ Startup applications
hide_mouse_cursor()

-- map the keyboard
awful.util.spawn_with_shell("/usr/sbin/pocketchip-load")

-- launch onboarding
awful.util.spawn_with_shell("onboard $HOME/.config/onboard /usr/share/pocketchi$

-- launch home screen
launch_home_screen()
-- }}}
