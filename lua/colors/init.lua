-- nvim/lua/colors/init.lua

-- This variable will be accesed from UI configuration for colors.
-- Requiring it also runs the configuration and setting for the colorscheme.
return require('colors.' .. require('config').colorscheme)
