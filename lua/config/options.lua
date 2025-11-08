-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = false -- Disable animated Ctrl-F & Ctrl-B
vim.g.autoformat = false
vim.g.root_spec = {"lsp", ".git", "ya.make", "cwd"}
-- vim.opt.tags = vim.opt.tags + "~/arcadia/education/tags"
-- vim.g.ruff_auto_start = false

local opt = vim.opt

opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
