local os = require("os")
local lsp_configs = require("lspconfig.configs")

local home = os.getenv("HOME")

if not lsp_configs.yamake then
  -- add ya-make-lsp as LSP to nvim-lspconfig's registry of language servers
  lsp_configs.yamake = {
    default_config = {
      name = "yamake-ls",
      cmd = {
        "node",
        -- path to built ya-make-lsp, might be changed as needed
        home .. "/.local/share/yandex/yamake-lsp/ya-make-lsp.js",
        "--stdio",
      },
      -- only for "yamake" filetype
      -- defined here: https://a.yandex-team.ru/arcadia/junk/epinkovskii/dotfiles/nvim-plugins/yandex.nvim/lua/yandex/filetypes.lua
      filetypes = { "yamake" },
      -- for each root dir different instance of ya-make-lsp will be spawned
      -- we only need one, so arcadia root it is.
      root_dir = require("lspconfig.util").root_pattern(".arcadia.root"),
    },
  }
end

require("lspconfig").yamake.setup({})
