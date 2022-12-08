-- init.lua
--
-- source of inspiration:
-- https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/
-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
-- https://github.com/LunarVim/nvim-basic-ide
--
-- TODO:
-- https://github.com/nvim-tree/nvim-tree.lua/wiki/Showcases

require("user.options")
require("user.keymaps")
require("user.plugins")
require("user.plugins_config")
require("user.lsp")
