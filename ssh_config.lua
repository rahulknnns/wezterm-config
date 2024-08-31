wezterm = require 'wezterm'
local module = {}

function module.apply_to_config(config)
    config.ssh_domains = {
        {
          name = 'myserver',
          username = 'user',
          remote_address = 'localhost',
          multiplexing = 'None',
          default_prog = { 'cd /home/;bash' },
        },
      }
end

return module