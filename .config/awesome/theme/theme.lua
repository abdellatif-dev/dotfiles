local theme = {}


theme.font          = "Hack NF 10"

theme.awesome_icon  = "~/.config/awesome/theme/artix-icon.png"


theme.useless_gap   = 5
theme.border_width  = 2
-- {{{ colors

theme.bg_normal     = "#090A0F"
theme.bg_focus      = "#090A0F"
theme.bg_urgent     = "#090A0F"
theme.bg_minimize   = "#AAAAAA"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#AAAAAA"
theme.fg_focus      = "#E98567"
theme.fg_urgent     = "#D41919"
theme.fg_minimize   = "#FAC86A"

theme.border_normal = "#090A0F"
theme.border_focus  = "#89DDFF"
theme.border_marked = "#EC0101"
--}}}


theme.taglist_squares_sel   = "~/.config/awesome/theme/taglist/sel.png"
theme.taglist_squares_unsel = "~/.config/awesome/theme/taglist/unsel.png"
--}}}

--{{{ Tasklist
theme.tasklist_floating_icon = "~/.config/awesome/theme/tasklist/floating.png"
--}}}
--{{{ Menu
theme.menu_submenu_icon = "~/.config/awesome/theme/menu/submenu.png"
--}}}

--{{{ Titlebar icons
theme.titlebar_close_button_normal               =  "~/.config/awesome/theme/titlebar/close_normal.png"
theme.titlebar_close_button_focus                =  "~/.config/awesome/theme/titlebar/close_focus.png"

theme.titlebar_ontop_button_active               =  "~/.config/awesome/theme/titlebar/ontop_active.png"
theme.titlebar_ontop_button_inactive             =  "~/.config/awesome/theme/titlebar/ontop_inactive.png"
theme.titlebar_ontop_button_normal_active        =  theme.titlebar_ontop_button_inactive
theme.titlebar_ontop_button_focus_active         =  theme.titlebar_ontop_button_active
theme.titlebar_ontop_button_normal_inactive      =  theme.titlebar_ontop_button_inactive
theme.titlebar_ontop_button_focus_inactive       =  theme.titlebar_ontop_button_inactive

theme.titlebar_sticky_button_active              =  "~/.config/awesome/theme/titlebar/sticky_active.png"
theme.titlebar_sticky_button_inactive            =  "~/.config/awesome/theme/titlebar/sticky_inactive.png"
theme.titlebar_sticky_button_normal_active       =  theme.titlebar_sticky_button_inactive
theme.titlebar_sticky_button_focus_active        =  theme.titlebar_sticky_button_active
theme.titlebar_sticky_button_normal_inactive     =  theme.titlebar_sticky_button_inactive
theme.titlebar_sticky_button_focus_inactive      =  theme.titlebar_sticky_button_inactive

theme.titlebar_floating_button_active            =  "~/.config/awesome/theme/titlebar/floating_active.png"
theme.titlebar_floating_button_inactive          =  "~/.config/awesome/theme/titlebar/floating_inactive.png"
theme.titlebar_floating_button_normal_active     =  theme.titlebar_floating_button_inactive
theme.titlebar_floating_button_focus_active      =  theme.titlebar_floating_button_active
theme.titlebar_floating_button_normal_inactive   =  theme.titlebar_floating_button_inactive
theme.titlebar_floating_button_focus_inactive    =  theme.titlebar_floating_button_inactive

theme.titlebar_maximized_button_active           =  "~/.config/awesome/theme/titlebar/maximized_active.png"
theme.titlebar_maximized_button_inactive         =  "~/.config/awesome/theme/titlebar/maximized_inactive.png"
theme.titlebar_maximized_button_normal_active    =  theme.titlebar_maximized_button_inactive
theme.titlebar_maximized_button_focus_active     =  theme.titlebar_maximized_button_active
theme.titlebar_maximized_button_normal_inactive  =  theme.titlebar_maximized_button_inactive
theme.titlebar_maximized_button_focus_inactive   =  theme.titlebar_maximized_button_inactive
--}}}
theme.layout_fairh           = "~/.config/awesome/theme/layouts/fairh.png"
theme.layout_fairv           = "~/.config/awesome/theme/layouts/fairv.png"
theme.layout_floating        = "~/.config/awesome/theme/layouts/floating.png"
theme.layout_magnifier       = "~/.config/awesome/theme/layouts/magnifier.png"
theme.layout_max             = "~/.config/awesome/theme/layouts/max.png"
theme.layout_fullscreen      = "~/.config/awesome/theme/layouts/fullscreen.png"
theme.layout_tilebottom      = "~/.config/awesome/theme/layouts/tilebottom.png"
theme.layout_tileleft        = "~/.config/awesome/theme/layouts/tileleft.png"
theme.layout_tile            = "~/.config/awesome/theme/layouts/tile.png"
theme.layout_tiletop         = "~/.config/awesome/theme/layouts/tiletop.png"
theme.layout_spiral          = "~/.config/awesome/theme/layouts/spiral.png"
theme.layout_dwindle         = "~/.config/awesome/theme/layouts/dwindle.png"
theme.layout_cornernw        = "~/.config/awesome/theme/layouts/cornernw.png"
theme.layout_cornerne        = "~/.config/awesome/theme/layouts/cornerne.png"
theme.layout_cornersw        = "~/.config/awesome/theme/layouts/cornersw.png"
theme.layout_cornerse        = "~/.config/awesome/theme/layouts/cornerse.png"


return theme
