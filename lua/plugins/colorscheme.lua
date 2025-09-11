return {
  {
    "AlexvZyl/nordic.nvim",
    lazy = false, -- Загружать сразу (не лениво)
    priority = 1000, -- Высокий приоритет (для корректного применения темы)
    config = function()
      -- Настройки темы (опционально)
      require("nordic").setup({
        -- Пример настроек (см. документацию Nordic.nvim)
        transparent = {
          -- Enable transparent background.
          bg = true,
          -- Enable transparent background for floating windows.
          float = false,
        },
        italic_comments = true, -- Курсив для комментариев
      })

      -- Установка цветовой схемы
      vim.cmd.colorscheme("nordic")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordic",
    },
  },
}
