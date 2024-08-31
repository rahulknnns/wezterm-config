wezterm = require 'wezterm'
local module = {}

function module.apply_to_config(config)
    config.launch_menu = {
        {
            label = "Bash",
            args = {"/bin/bash", "-l"},
            cwd = "~",

        }
    }
end

return module