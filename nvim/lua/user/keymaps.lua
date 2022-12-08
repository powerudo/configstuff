local ts = require("telescope.builtin")
vim.keymap.set("n", "gb", ts.buffers, {})
vim.keymap.set("n", "go", ts.find_files, {})
