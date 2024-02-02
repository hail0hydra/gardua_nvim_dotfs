local opts = {noremap=true, silent=true}
local map = vim.api.nvim_set_keymap


map('n','<c-_>','<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<cr>',opts) -- current buffer
map('n','<leader>ff','<cmd>lua require("telescope.builtin").find_files()<cr>',opts) -- find files
map('n','<leader>fg','<cmd>lua require("telescope.builtin").live_grep()<cr>',opts) -- live grep
map('n','<leader>fh','<cmd>lua require("telescope.builtin").help_tags()<cr>',opts) -- help tags
map('n','<leader>fc','<cmd>lua require("telescope.builtin").commands()<cr>',opts) -- commands
map('n','<leader>fb','<cmd>lua require("telescope.builtin").buffers()<cr>',opts) -- buffers


map('n','<leader>gf','<cmd>lua require("telescope.builtin").git_files()<cr>',opts) -- git files
--map('n','<leader>gb','<cmd>lua require("telescope.builtin").git_branches(require("telescope.themes").get_ivy())<cr>',opts) -- git branches
map('n','<leader>gb','<cmd>lua require("telescope.builtin").git_branches(require("telescope.themes"))<cr>',opts) -- git branches
map('n','<leader>gc','<cmd>lua require("telescope.builtin").git_commits(require("telescope.themes").get_ivy())<cr>',opts) -- git commits
map('n','<leader>gs','<cmd>lua require("telescope.builtin").git_status()<cr>',opts) -- git status

-- nvimtree
map('n','<leader>t','<cmd>NvimTreeToggle<cr>',opts)


-- Markdonw Preview
map('n','<F5>','<cmd>MarkdownPreview<cr>',opts)

