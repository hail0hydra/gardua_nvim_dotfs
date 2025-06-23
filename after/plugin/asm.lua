vim.api.nvim_create_autocmd("FileType", {
  pattern = { "nasm", "asm" },
  callback = function()
    vim.bo.commentstring = "; %s"
  end,
})

