-- nvim/lua/colors/init.lua

-- Get colorscheme or default to Oxocarbon, get style or default to Dark.
local cfg   = require('config')
local name  = cfg.colorscheme or 'oxocarbon'
local style = cfg.color_style or 'dark'

-- This variable will be accesed from UI configuration for colors.
-- Requiring it also runs the configuration and setting for the colorscheme.
return require('colors.' .. style .. '.' .. name)
