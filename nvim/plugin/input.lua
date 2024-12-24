
Input = function (option)
  -- Variables locales
  local width = vim.api.nvim_get_option("columns")
  local sizeWidht = (width - 20)
  local sizeHeight = 1
  local content = {}

  local quit = function (buf)
    vim.api.nvim_buf_delete(buf,{ force=true }) 
  end

  -- Crear un nuevo buffer
  local bufnr = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_option(bufnr, 'number', false)
  vim.api.nvim_buf_set_option(bufnr, 'relativenumber', false)

  vim.keymap.set('n','<Esc>',function () quit(bufnr) end,{ noremap=true, silent=true, buffer=bufnr})

  vim.keymap.set('n','<Enter>',function () 
    content = vim.api.nvim_buf_get_lines(bufnr,0,-1,false) 
    quit(bufnr)
    option.callback(content)
  end,{noremap=true, silent=true, buffer=bufnr})
  -- Configurar las dimensiones y posición de la ventana flotante
  local winnr = vim.api.nvim_open_win(
    bufnr,  -- El buffer asociado
    true,   -- Enfocar la ventana a la vez
    {
      relative = 'editor',  -- Ubicación relativa a la ventana del editor
      row = 5,
      col = 10,
      width = sizeWidht,
      height = sizeHeight,
      style = 'minimal',     -- Estilo minimalista sin bordes ni números de línea
      border = 'single',     -- Opcional: agregar bordes
      title = option.label or 'Chat',  -- Título de la ventana
      title_pos = 'left',
    }
  )
end







