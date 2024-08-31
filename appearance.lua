local wezterm = require 'wezterm'

local module = {}
local bg_image_dir = wezterm.home_dir .. '/.config/wezterm/backgrounds/'

function scanDirForImages(dir)
    local files = {}
    for file in io.popen('ls ' .. dir .."/*.jpg"):lines() do
        table.insert(files, file)
    end
    return files
end
function module.apply_to_config(config)
    config.font = wezterm.font 'JetBrains Mono'
    config.font_size = 12.0
    config.color_scheme = 'Catppuccin Macchiato'    
    -- tab bar
    config.hide_tab_bar_if_only_one_tab = false
    config.tab_bar_at_bottom = true
    config.use_fancy_tab_bar = false
    config.tab_and_split_indices_are_zero_based = true
    bgs = scanDirForImages(bg_image_dir)
    if #bgs == 0 then
        print("No background images found in " .. bg_image_dir)
    else
        config.window_background_image = bgs[math.random(#bgs)]
    end
end

return module