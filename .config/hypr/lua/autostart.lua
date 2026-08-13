--################
--## AUTOSTART ###
--################

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
local vars = require("lua.variables")

hl.on("hyprland.start", function()
    hl.exec_cmd(vars.terminal)
    hl.exec_cmd("swaync")
    hl.exec_cmd("nm-applet")
    hl.exec_cmd("waybar")
    hl.exec_cmd("lxpolkit")
    hl.exec_cmd("openrgb -c 0088FF -m static")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("blueman-applet")
    hl.exec_cmd("clipse -listen")
    hl.exec_cmd("easyeffects --gapplication-service")
end)
