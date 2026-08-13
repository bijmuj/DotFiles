local vars = require("lua.variables")
require("lua.look_and_feel")
require("lua.keybinds")
require("lua.autostart")
require("lua.monitors")

--############################
--## ENVIRONMENT VARIABLES ###
--############################

-- See https://wiki.hyprland.org/Configuring/Environment-variables/

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.device({
    name = "wl-wlmouse-mini-receiver-consumer-control-1",
    sensitivity = 0.0,
})

hl.window_rule({
    match = {
        class = "*",
    },
    suppress_event = "maximize",
})

hl.window_rule({
    match = {
        class = "^$",
        title = "^$",
        xwayland = 1,
        float = 1,
        fullscreen = 0,
        pin = 0,
    },
    no_focus = true,
})

hl.window_rule({
    match = {
        fullscreen = 1,
    },
    idle_inhibit = "fullscreen",
})

hl.window_rule({
    match = {
	    class = "clipse",
    },
    float = 1,
	size = {"monitor_w * 0.5", "monitor_h * 0.5"}
})

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 10,
        border_size = 2,
        -- https://wiki.hyprland.org/Configuring/Variables/#variable-types for info about colors
        col = {
            active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },
        -- Set to true enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,
        -- Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
        allow_tearing = false,
        layout = "dwindle",
    },
    -- https://wiki.hyprland.org/Configuring/Variables/#decoration
    decoration = {
        rounding = 10,
        -- Change transparency of focused and unfocused windows
        active_opacity = 1.0,
        inactive_opacity = 0.9,
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
        -- https://wiki.hyprland.org/Configuring/Variables/#blur
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
    },
    -- https://wiki.hyprland.org/Configuring/Variables/#animations
    animations = {
        enabled = 1,
        -- Default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more
    },
    -- See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
    dwindle = {
        preserve_split = true, -- You probably want this
    },
    -- See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
    master = {
        new_status = "master",
    },
    -- https://wiki.hyprland.org/Configuring/Variables/#misc
    misc = {
        focus_on_activate = true,
        force_default_wallpaper = -1, -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo = false, -- If true disables the random hyprland logo / anime girl background. :(
    },
    --############
    --## INPUT ###
    --############
    -- https://wiki.hyprland.org/Configuring/Variables/#input
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",
        follow_mouse = 1,
        sensitivity = -0.7, -- -1.0 - 1.0, 0 means no modification.
        force_no_accel = false,
        accel_profile = "\"flat\"",
        touchpad = {
            natural_scroll = false,
        },
    },
    -- https://wiki.hyprland.org/Configuring/Variables/#gestures
    gestures = {
        -- workspace_swipe = false
    },
})



