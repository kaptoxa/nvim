return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- Настройки noice.nvim
      cmdline = {
        enabled = true, -- Включить командную строку noice
        view = "cmdline", -- Использовать обычную командную строку вместо всплывающей
      },
      -- Вы также можете отключить другие функции noice, которые вам не нужны
      messages = {
        enabled = false, -- Отключить всплывающие сообщения
      },
      popupmenu = {
        enabled = false, -- Отключить всплывающее меню (если оно тоже мешает)
      },
      -- Другие возможные опции смотрите в документации noice.nvim
    },
  },
}
