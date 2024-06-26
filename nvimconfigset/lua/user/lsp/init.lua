local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end


--require("mason").setup()
--require("mason-lspconfig").setup()

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}
-- ...
require "user.lsp.mason"
require "user.lsp.lspconfig"

require'lspconfig'.pyright.setup{}
require'lspconfig'.fortls.setup{}
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.julials.setup{}
require'lspconfig'.marksman.setup{}
