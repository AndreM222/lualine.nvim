-- Copyright (c) 2020-2021 hoob3rt
-- MIT license, see LICENSE for more details.
local Msgstr = require('lualine.langMSG').Msgstr

local function progress()
  local cur = vim.fn.line('.')
  local total = vim.fn.line('$')
  if cur == 1 then
    return Msgstr('Top')
  elseif cur == total then
    return Msgstr('Bot')
  else
    return string.format('%2d%%%%', math.floor(cur / total * 100))
  end
end

return progress
