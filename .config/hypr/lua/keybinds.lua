local vars = require("lua.variables")

hl.bind("CONTROL + ALT + T", hl.dsp.exec_cmd(vars.terminal))
hl.bind("CONTROL + SPACE", hl.dsp.exec_cmd(vars.menu))
hl.bind("CONTROL + Q", hl.dsp.window.close())
hl.bind(vars.mainMod .. " + M", hl.dsp.exit())
hl.bind(vars.mainMod .. " + E", hl.dsp.exec_cmd(vars.fileManager))
hl.bind(vars.mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(vars.mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(vars.mainMod .. " + J", hl.dsp.layout("togglesplit"))

hl.bind("CONTROL + SUPER + V", hl.dsp.exec_cmd("alacritty --class clipse -e 'clipse'"))

hl.bind(vars.mainMod .. " + SHIFT + left", hl.dsp.focus({ direction = "left" }))
hl.bind(vars.mainMod .. " + SHIFT + right", hl.dsp.focus({ direction = "right" }))
hl.bind(vars.mainMod .. " + SHIFT + up", hl.dsp.focus({ direction = "up" }))
hl.bind(vars.mainMod .. " + SHIFT + down", hl.dsp.focus({ direction = "down" }))

for i = 1,9 do
    hl.bind(vars.mainMod .. " + " .. tostring(i), hl.dsp.focus({ workspace = i }))
    hl.bind(vars.mainMod .. " + SHIFT + " .. tostring(i), hl.dsp.window.move({ workspace = i }))
end

hl.bind(vars.mainMod .. " + left", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(vars.mainMod .. " + right", hl.dsp.focus({ workspace = "e+1" }))

hl.bind(vars.mainMod .. " + F", hl.dsp.workspace.toggle_special("magic"))
hl.bind(vars.mainMod .. " + SHIFT + F", hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind(vars.mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(vars.mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(vars.mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(vars.mainMod .. " + mouse:273", hl.dsp.window.resize())

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s 10%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 10%-"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

hl.bind(vars.mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m region"))
