local set = vim.opt

set.expandtab = true
set.tabstop = 4
set.smarttab = true
set.shiftwidth = 4

set.wrap = true

set.splitbelow = true
set.splitright = true

set.number = true
set.relativenumber = true
set.scrolloff = 5

set.ignorecase = true
set.cursorline = true

set.termguicolors = true
set.mouse = 'a'


vim.cmd([[
set winbar=%=%m\ %f


" Making it transparent background
autocmd BufEnter * highlight Normal guibg=none

" Copy & Paste From System Clipboard
" vnoremap <leader>y "+y
" nnoremap <leader>Y "+yg_
" nnoremap <leader>y "+y
" nnoremap <leader>yy "+yy
]])

-- set autoindent
-- set background=dark
-- " set smartindent
-- set softtabstop=4
-- local ft = vim.api.nvim_buf_get_option(0, 'filetype')
-- if ft == 'vim' then
--     vim.cmd('colorscheme moonfly')
--     vim.cmd('highlight Normal guibg=none')
-- end

