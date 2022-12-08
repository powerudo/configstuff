-- airline
vim.g.airline_powerline_fonts = 1
vim.g.airline_section_z = 'Ln %3l Col %2c'
vim.g.airline_theme = 'everforest'
vim.g['airline#extensions#tabline#enabled'] = 1

-- everforest, colorscheme
vim.opt.background = 'dark'
-- Set contrast.
-- This configuration option should be placed before `colorscheme everforest`.
-- Available values: 'hard', 'medium'(default), 'soft'
vim.g.everforest_background = 'soft'
vim.g.everforest_better_performance = 1
vim.cmd("colorscheme everforest")
