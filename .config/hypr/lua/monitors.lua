--###############
--## MONITORS ###
--###############

--## Desktop ###
-- gaming monitor

hl.monitor({
    output = "DP-5",
    mode = "2560x1440@179.88",
    position = "auto",
    scale = "1",
})

-- tv
hl.monitor({
    output = "HDMI-A-2",
    mode = "3840x2160@120",
    position = "auto",
    scale = "1",
})

--## Laptop ###
-- See https://wiki.hyprland.org/Configuring/Monitors/
-- gaming monitor

--laptop screen
hl.monitor({
    output = "eDP-1",
    mode = "1920x1080@60",
    position = "auto",
    scale = "1",
})

-- tv
hl.monitor({
    output = "HDMI-A-4",
    position = "auto",
    scale = "2",
})
