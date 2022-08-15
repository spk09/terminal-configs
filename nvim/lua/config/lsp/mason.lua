local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end

mason.setup()
require("config.lsp.mason-lspconfig")

