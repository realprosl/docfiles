
-- Configuración de LSP con tsserver y null-ls para formateo y linting
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"ts_ls","gopls","lua_ls","html","svelte","tailwindcss"}
})

local lspconfig = require("lspconfig")
lspconfig.ts_ls.setup{}  -- Configuración básica para TypeScript
lspconfig.gopls.setup{}  -- Configuración básica para Golang
lspconfig.lua_ls.setup{}  -- Configuración básica para lua
lspconfig.html.setup{}  -- Configuración básica para html
lspconfig.svelte.setup{}  -- Configuración básica para svelte
lspconfig.tailwindcss.setup{}  -- Configuración básica para tailwindcss

-- Configuración de null-ls para soporte de formateo y linting
local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.diagnostics.eslint
  }
})

-- Autocompletado con nvim-cmp
local cmp = require('cmp')
local luasnip = require('luasnip')
local lspkind = require('lspkind')

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirma con Enter
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
    { name = 'path' },
  }),
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol', -- muestra solo los iconos
      maxwidth = 50,
    })
  }
})
