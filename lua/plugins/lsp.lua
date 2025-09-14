return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    opts = {
      servers = {
        pyright = {
          on_attach = function(client, bufnr)
            local opts = { buffer = bufnr, remap = false }
            vim.keymap.set("n", "gd", function()
              vim.lsp.buf.definition()
            end, opts)
            vim.keymap.set("n", "K", function()
              vim.lsp.buf.hover()
            end, opts)
          end,
          settings = {
            python = {
              analysis = {
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true,
                autoSearchPaths = true,
                typeCheckingMode = "basic",
                logLevel = "Warning",
                extraPaths = { "~/arcadia/" },
              },
            },
          },
        },
      },
    },
  },
}
