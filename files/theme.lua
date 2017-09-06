---------------------------
-- Default awesome theme --
---------------------------

theme = {}

theme.font          = "sans 8"

theme.bg_normal     = "#222222"
theme.bg_focus      = "#535d6c"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.border_width  = "1"
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = "/usr/share/awesome/themes/default/taglist/square$
theme.taglist_squares_unsel = "/usr/share/awesome/themes/default/taglist/square$

theme.tasklist_floating_icon = "/usr/share/awesome/themes/default/tasklist/floa$

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "/usr/share/awesome/themes/default/submenu.png"
theme.menu_height = "15"
theme.menu_width  = "100"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = "/usr/share/awesome/themes/default/titleba$
theme.titlebar_close_button_focus  = "/usr/share/awesome/themes/default/titleba$

theme.titlebar_ontop_button_normal_inactive = "/usr/share/awesome/themes/defaul$
theme.titlebar_ontop_button_focus_inactive  = "/usr/share/awesome/themes/defaul$
theme.titlebar_ontop_button_normal_active = "/usr/share/awesome/themes/default/$
theme.titlebar_ontop_button_focus_active  = "/usr/share/awesome/themes/default/$

theme.titlebar_sticky_button_normal_inactive = "/usr/share/awesome/themes/defau$
theme.titlebar_sticky_button_focus_inactive  = "/usr/share/awesome/themes/defau$
theme.titlebar_sticky_button_normal_active = "/usr/share/awesome/themes/default$
theme.titlebar_sticky_button_focus_active  = "/usr/share/awesome/themes/default$

theme.titlebar_floating_button_normal_inactive = "/usr/share/awesome/themes/def$
theme.titlebar_floating_button_focus_inactive  = "/usr/share/awesome/themes/def$
theme.titlebar_floating_button_normal_active = "/usr/share/awesome/themes/defau$
theme.titlebar_floating_button_focus_active  = "/usr/share/awesome/themes/defau$

theme.titlebar_maximized_button_normal_inactive = "/usr/share/awesome/themes/de$
theme.titlebar_maximized_button_focus_inactive  = "/usr/share/awesome/themes/de$
theme.titlebar_maximized_button_normal_active = "/usr/share/awesome/themes/defa$
theme.titlebar_maximized_button_focus_active  = "/usr/share/awesome/themes/defa$

-- You can use your own command to set your wallpaper
theme.wallpaper_cmd = { "awsetbg /usr/share/pocketchip/boot-splash.png" }

-- You can use your own layout icons like this:
theme.layout_fairh = "/usr/share/awesome/themes/default/layouts/fairhw.png"
theme.layout_fairv = "/usr/share/awesome/themes/default/layouts/fairvw.png"
theme.layout_floating  = "/usr/share/awesome/themes/default/layouts/floatingw.p$
theme.layout_magnifier = "/usr/share/awesome/themes/default/layouts/magnifierw.$
theme.layout_max = "/usr/share/awesome/themes/default/layouts/maxw.png"
theme.layout_fullscreen = "/usr/share/awesome/themes/default/layouts/fullscreen$
theme.layout_tilebottom = "/usr/share/awesome/themes/default/layouts/tilebottom$
theme.layout_tileleft   = "/usr/share/awesome/themes/default/layouts/tileleftw.$
theme.layout_tile = "/usr/share/awesome/themes/default/layouts/tilew.png"
theme.layout_tiletop = "/usr/share/awesome/themes/default/layouts/tiletopw.png"
theme.layout_spiral  = "/usr/share/awesome/themes/default/layouts/spiralw.png"
theme.layout_dwindle = "/usr/share/awesome/themes/default/layouts/dwindlew.png"

theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80






