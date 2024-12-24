
vim.cmd("luafile ~/.config/nvim/custom/assets.lua")

import("plugin","input")
import("plugin","v_buffer")

function OpenQwenChat() 

  Input({label='Chat', callback=function (data) 
    local res = vim.fn.system('~/go/bin/qw "'.. table.concat(data," ")..', solo codigo sin explicaciones "')
    local lines ={}
    local typefile = 'text'
    local index = 0
    for line in res:gmatch("([^\n]*)\n?") do
      line = line:gsub("```","")
      if index == 0 then
        typefile = line:gsub("%s+","")
      else
        table.insert(lines,line)
      end
      index = index+1
    end
    verticalBuffer({content=lines, typefile=typefile}) 
  end})

end
