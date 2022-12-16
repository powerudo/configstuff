local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
      open_fn = function()
          return require("packer.util").float { border = "rounded" }
      end,
    },
    git = {
        clone_timeout = 300, -- Timeout, in seconds, for git clones
    },
}

-- Install your plugins here
return packer.startup(function(use)
    -- Mandatory plugins
    use { "wbthomason/packer.nvim", commit = "6afb67460283f0e990d35d229fd38fdc04063e0a" } -- Have packer manage itself
    use { "nvim-lua/plenary.nvim", commit = "4b7e52044bbb84242158d977a50c4cbcd85070c7" } -- Useful lua functions used by lots of plugins

    -- git
    use { "tpope/vim-fugitive", commit = "v3.7" }

    -- indent-blankline
    use { "lukas-reineke/indent-blankline.nvim", tag = "v2.20.2" }

    -- airline (the bufferline thingy)
    use { "vim-airline/vim-airline", commit = "5f5e00faad728f12f9ca9d9200208d8a39fd60f4" }
    use { "vim-airline/vim-airline-themes", commit = "dd81554c2231e438f6d0e8056ea38fd0e80ac02a" }

    -- telescope and deps
    use { "nvim-tree/nvim-web-devicons", commit = "05e1072f63f6c194ac6e867b567e6b437d3d4622" }
    use { "nvim-telescope/telescope.nvim", tag = "0.1.0" }

    -- Colorschemes
    use { "sainnhe/everforest", commit = "v0.2.3" }

    -- LSP / code completion
    use { "neovim/nvim-lspconfig", commit = "v0.1.3" }
    use { "hrsh7th/cmp-nvim-lsp", commit = "59224771f91b86d1de12570b4070fe4ad7cd1eeb" }
    use { "hrsh7th/nvim-cmp", commit = "8bbaeda725d5db6e4e1be2867a64b43bf547cf06" }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
