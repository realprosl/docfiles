

-- Configuración de Telescope para búsqueda de archivos
require('telescope').setup({
  defaults = {
    file_ignore_patterns = { "node_modules" },
  }
})
