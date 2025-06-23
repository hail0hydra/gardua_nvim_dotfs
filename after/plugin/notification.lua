require("notify").setup({
  stages = "fade",
  timeout = 8, -- milliseconds
  fps = 240,
  background_colour = "#1e1e2e",
  top_down = true,
  on_open = function(win)
    vim.api.nvim_win_set_config(win, { zindex = 200 })
  end,
})

vim.notify = require("notify")
