local lspconfig = require'lspconfig'


lspconfig.jdtls.setup{}
lspconfig.pyright.setup{}
lspconfig.clangd.setup{}
lspconfig.lua_ls.setup{}
lspconfig.phpactor.setup{}
lspconfig.lemminx.setup{}

local function preview_location_callback(_, result)
  if result == nil or vim.tbl_isempty(result) then
    return nil
  end
  vim.lsp.util.preview_location(result[1])
end

function PeekDefinition()
  local params = vim.lsp.util.make_position_params()
  return vim.lsp.buf_request(0, 'textDocument/definition', params, preview_location_callback)
end

vim.keymap.set('n','<leader>pD',PeekDefinition);
