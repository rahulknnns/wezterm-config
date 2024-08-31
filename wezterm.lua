local wezterm = require 'wezterm'
local appearance = require 'appearance'
local launch_menu = require 'launch_menu'
local keys = require 'keys'
local ssh_config = require 'ssh_config'
local config = {}
appearance.apply_to_config(config)
keys.apply_to_config(config)
launch_menu.apply_to_config(config)
ssh_config.apply_to_config(config)
return config
