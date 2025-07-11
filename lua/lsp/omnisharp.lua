local M = {}

function M.setup()
  local lspconfig = require('lspconfig')

  if vim.fn.executable 'OmniSharp' == 1 then
    lspconfig.omnisharp.setup {
      cmd = { "OmniSharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
      root_dir = require 'lspconfig'.util.root_pattern("*.csproj", "*.sln", ".git"),
      settings = {
        FormattingOptions = {
          EnableEditorConfigSupport = true,
          OrganizeImports = nil,
        },
        MsBuild = {
          LoadProjectsOnDemand = nil,
        },
        RoslynExtensionsOptions = {
          EnableAnalyzersSupport = nil,
          EnableImportCompletion = nil,
        },
      },
    }
  end
end

return M
