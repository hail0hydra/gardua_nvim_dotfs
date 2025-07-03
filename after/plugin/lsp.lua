-- Register Treesitter lang for asm
vim.treesitter.language.register('nasm', 'asm')

-- on_attach function
local on_attach = function(_, bufnr)
  local bufmap = function(keys, func)
    vim.keymap.set('n', keys, func, { buffer = bufnr })
  end

  bufmap('<leader>gr', require('telescope.builtin').lsp_references)
  bufmap('<leader>s', require('telescope.builtin').lsp_document_symbols)
  bufmap('<leader>S', require('telescope.builtin').lsp_dynamic_workspace_symbols)
  bufmap('<leader>r', vim.lsp.buf.rename)
  bufmap('<leader>a', vim.lsp.buf.code_action)
  bufmap('<leader>gd', vim.lsp.buf.definition)
  bufmap('<leader>gD', vim.lsp.buf.declaration)
  bufmap('<leader>gi', vim.lsp.buf.implementation)
  bufmap('<leader>D', vim.lsp.buf.type_definition)
  bufmap('K', vim.lsp.buf.hover)

  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function()
    vim.lsp.buf.format()
  end, {})
end

-- capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
local ok_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if ok_cmp then
  capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls", "pyright", "clangd", "asm_lsp", "marksman", "vimls"
  },
})

local lspconfig = require("lspconfig")

-- Lua LS
require("neodev").setup()
lspconfig.lua_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
    },
  },
  root_dir = lspconfig.util.root_pattern(".git", "init.lua", "lua"),
})

-- Pyright
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
})

-- Clangd
lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  single_file_support = true,
})

-- ASM LSP
lspconfig.asm_lsp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "asm-lsp" },
  filetypes = { "asm", "nasm" },
  root_dir = lspconfig.util.root_pattern(".git", "*.asm"),
})

-- Marksman
lspconfig.marksman.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "marksman", "server" },
  filetypes = { "markdown", "markdown.mdx" },
  root_dir = lspconfig.util.root_pattern(".git", ".marksman.toml", "*.md"),
  single_file_support = true,
})

-- Vim Language Server
lspconfig.vimls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "vim-language-server", "--stdio" },
  filetypes = { "vim" },
  init_options = {
    diagnostic = {
      enable = true
    },
    indexes = {
      count = 3,
      gap = 100,
      projectRootPatterns = { "runtime", "nvim", ".git", "autoload", "plugin" },
      runtimepath = true
    },
    isNeovim = true,
    iskeyword = "@,48-57,_,192-255,-#",
    runtimepath = "",
    suggest = {
      fromRuntimepath = true,
      fromVimruntime = true
    },
    vimruntime = ""
  },
  single_file_support = true,
})

-- Filetype override: treat .asm files as "asm"
vim.filetype.add({
  extension = {
    asm = "asm",
  },
})

