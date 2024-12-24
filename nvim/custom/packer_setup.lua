
-- Plugins
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'                -- Gestor de plugins
  use 'neovim/nvim-lspconfig'                 -- Configuración de LSP
  use 'hrsh7th/nvim-cmp'                      -- Autocompletado principal
  use 'hrsh7th/cmp-nvim-lsp'                  -- Fuente LSP para cmp
  use 'hrsh7th/cmp-buffer'                    -- Fuente de buffer
  use 'hrsh7th/cmp-path'                      -- Fuente de ruta de archivos
  use 'hrsh7th/cmp-cmdline'                   -- Fuente de línea de comandos
  use 'onsails/lspkind-nvim'                  -- Iconos para autocompletado
  use 'L3MON4D3/LuaSnip'                      -- Snippets
  use 'saadparwaiz1/cmp_luasnip'              -- Integración de snippets con cmp
  use 'nvim-treesitter/nvim-treesitter'       -- Resaltado de sintaxis avanzado
  use 'nvim-telescope/telescope.nvim'         -- Finder de archivos y búsquedas
  use 'nvim-lua/plenary.nvim'                 -- Dependencia de Telescope
  use 'jose-elias-alvarez/null-ls.nvim'       -- Formateo y linting
  use 'williamboman/mason.nvim'               -- Gestor de LSPs
  use 'williamboman/mason-lspconfig.nvim'     -- Integración entre Mason y LSPConfig
  use 'catppuccin/nvim'
  use 'm4xshen/autoclose.nvim'
  use "stevearc/oil.nvim"

  -- Instalación automática de plugins tras guardar este archivo
  if packer_bootstrap then
    require('packer').sync()
  end
end)
