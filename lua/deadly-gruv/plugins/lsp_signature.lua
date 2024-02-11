local lush = require('lush')

local base = require('deadly-gruv.base')

local M = lush(function()
  return {
    LspSignatureActiveParameter { base.Cursor },
  }
end)

return M
