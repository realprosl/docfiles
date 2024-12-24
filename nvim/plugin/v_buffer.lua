
function verticalBuffer(option)
    -- Creación de un nuevo buffer
    local width = vim.api.nvim_win_get_width(0)
    local height = vim.api.nvim_win_get_height(0)
    local bufnr = vim.api.nvim_create_buf(false, true)
    -- functions
    local quit = function (buf)
      vim.api.nvim_buf_delete(buf,{ force=true }) 
    end

     -- keymap window
    vim.keymap.set('n','<Esc>',function () quit(bufnr) end,{ noremap=true, silent=true, buffer=bufnr})

    -- Establecer los títulos para el buffer
    vim.api.nvim_buf_set_name(bufnr, "Artifac")

    -- Insertar content
    vim.api.nvim_buf_set_lines(bufnr,2,2,false, option.content )

    vim.api.nvim_open_win(
      bufnr,  -- El buffer asociado
      true,   -- Enfocar la ventana a la vez
      {
        relative = 'editor',  -- Ubicación relativa a la ventana del editor
        row = 0,
        col = width/2,
        width = width/2,
        height = height-1,
        style = 'minimal',     -- Estilo minimalista sin bordes ni números de línea
        border = 'single',     -- Opcional: agregar bordes
        title = 'Artifac',  -- Título de la ventana
        title_pos = 'center',
      })

      -- Ajustar opciones del buffer para una mejor visualización
    vim.api.nvim_buf_set_option(bufnr, 'modifiable', true)
    vim.api.nvim_buf_set_option(bufnr, 'bufhidden', 'hide')
    vim.bo.filetype = option.typefile
    vim.api.nvim_buf_set_option(bufnr, 'number', true)
    vim.api.nvim_buf_set_option(bufnr, 'relativenumber', true)

end

