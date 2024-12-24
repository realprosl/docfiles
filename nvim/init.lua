-- Usar la ruta absoluta (reemplaza con tu ruta real)
package.path = package.path .. ";/home/alberto/.config/nvim/custom/?.lua"

vim.cmd("luafile ~/.config/nvim/custom/assets.lua")

-- Configuration packer and list plugins
import("custom","packer_setup")

-- Configuration lsp and autocomplate
import("custom","lspconfig_setup")

-- Configuration Treesitter
import("custom","treesitter_setup")

-- Configuration Telescope
import("custom","telescope_setup")

-- Configuration autoclose
require("autoclose").setup()

-- Configuration oil
require("oil").setup()

-- keymap
import("custom","keymap")

-- Configuration for golang file exclusive
import("custom","golang")

-- setter
vim.o.clipboard = 'unnamedplus'
vim.g.mapleader = "<Space>"
vim.cmd[[
        set completeopt=menu,menuone,noselect
        autocmd BufWritePre .ts,.js,.tsx,.jsx,.go,.svelte lua vim.lsp.buf.format()
	colorscheme catppuccin
	set expandtab
	set relativenumber
	set shiftwidth=2
	set autoindent
	set cursorline
	set list
]]

