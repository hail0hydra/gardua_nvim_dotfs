local has_telescope, telescope = pcall(require, "telescope")
if not has_telescope then
  vim.notify("telescope.nvim not found", vim.log.levels.WARN)
  return
end

telescope.load_extension("notify")

local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

local function copy_notification_to_clipboard(prompt_bufnr)
  local selection = action_state.get_selected_entry()
  local notif = selection and selection.value
  if not notif then
    vim.notify("No notification selected", vim.log.levels.ERROR)
    return
  end

  local msg = notif.msg or notif.message or notif

  if type(msg) == "table" then
    msg = vim.inspect(msg)
  end

  vim.fn.setreg("+", msg)
  vim.fn.setreg('"', msg)

  vim.notify("📋 Copied notification to clipboard", vim.log.levels.INFO)
  actions.close(prompt_bufnr)
end

telescope.setup({
  extensions = {
    notify = {
      mappings = {
        i = { ["<CR>"] = copy_notification_to_clipboard },
        n = { ["<CR>"] = copy_notification_to_clipboard },
      },
    },
  },
})

