local config = require("plugins.configs.lspconfig")
local on_attach = config.on_attach
local capabilities = config.capabilities
local servers = {"ts_ls", "eslint"}

local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = {vim.api.nvim_buf_get_name(0)},
  }
  vim.lsp.buf.execute_command(params)
end

vim.lsp.config("ts_ls", {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {},
  commands = {
    OrganizeImports = {
      organize_imports,
      description = "Organize Imports",
    }
  }
})

vim.lsp.config("rust_analyzer", {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  settings = {
    ['rust-analyzer'] = {
      cargo = {
        allFeatures = true,
      }
    }
  }
})

vim.lsp.enable({"ts_ls", "rust_analyzer"})

--[[
lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  settings = {
    ['rust-analyzer'] = {
      cargo = {
        allFeatures = true,
      }
    }
  }
})
]]--
