local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local cmd = require("plugins.configs.lspconfig").cmd

local lspconfig = require "lspconfig"
local servers = { "clangd" }

for _, lsp in ipairs(servers) do

  if lsp == "clangd" then
    capabilities.offsetEncoding = { "utf-16" }
    cmd = { 'clangd', '--clang-tidy' }
  end

  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = cmd
  }
end

-- capabilities.offsetEncoding = { "utf-16" };
--
-- lspconfig['clangd'].setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   cmd = { 'clangd', '--clang-tidy' },
-- }
