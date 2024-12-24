
vim.cmd("luafile ~/.config/nvim/custom/assets.lua")

import("plugin","qwen")

local opts = { noremap = true, silent = true }

-- Keybindings útiles
vim.api.nvim_set_keymap("n", "<Space>ff", "<cmd>Telescope find_files<cr>", opts)
vim.api.nvim_set_keymap("n", "<Space>fg", "<cmd>Telescope live_grep<cr>",opts)
vim.api.nvim_set_keymap("n", "<Space>fb", "<cmd>Telescope buffers<cr>", opts)
vim.api.nvim_set_keymap("n", "<Space>fh", "<cmd>Telescope help_tags<cr>",opts)
vim.api.nvim_set_keymap("n", "<Space>sw", "ciw\"<esc>pli\"<esc>",opts)
vim.api.nvim_set_keymap("n", "<Space>ss", "c'<esc>pli'<esc>",opts)
vim.api.nvim_set_keymap("n", "<Space>cf", "<cmd>edit ~/.config/nvim/init.lua<cr>",opts)
-- Ir a la siguiente/anterior definición
vim.keymap.set('n', '<Space>gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', '<Space>gr', vim.lsp.buf.references, opts)
-- Mostrar información sobre el símbolo bajo el cursor
vim.keymap.set('n', 'KK', vim.lsp.buf.hover, opts)
-- Mostrar diagnósticos
--vim.keymap.set('n', '[g', vim.lsp.diagnostic.goto_prev, opts)
--vim.keymap.set('n', ']g', vim.lsp.diagnostic.goto_next, opts)
-- Aplicar la siguiente/anterior sugerencia de código
vim.keymap.set('n', '<Space>ca', vim.lsp.buf.code_action, opts)
-- Formatear el código
vim.keymap.set('n', '<Space>fmt', vim.lsp.buf.format, opts)
-- Renombrar un símbolo
vim.keymap.set('n', '<Space>rn', vim.lsp.buf.rename, opts)
vim.keymap.set("n", "<Space>oo", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- chat
vim.keymap.set("n", "??", OpenQwenChat)
vim.keymap.set("t", "<F1>", "<C-\\><C-n>")
