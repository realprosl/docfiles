
-- Resaltado de sintaxis con Treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "typescript", "javascript", "html", "css", "lua", "go","svelte" },
  highlight = {
    enable = true,
  },
}
