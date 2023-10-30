local on_attach = function(_, bufnr)


    local bufmap = function(keys, func)
        vim.keymap.set('n', keys, func, { buffer = bufnr})
    end



    --
    -- vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>NvimTreeToggle<CR>', { noremap=true, silent=true })
    --
    -- -- bufmap('<F5>', '<cmd>MarkDownPreview<CR>')
    --
    -- bufmap('<c-/>', require("telescope.builtin").current_buffer_fuzzy_find)
    -- bufmap('<leader>ff',require("telescope.builtin").find_files)
    -- bufmap('<leader>fg', require("telescope.builtin").live_grep)
    -- bufmap('<leader>fh', require("telescope.builtin").help_tags)
    -- bufmap('<leader>fc', require("telescope.builtin").commands)
    -- bufmap('<leader>fb', require("telescope.builtin").buffers)
    --
    --
    bufmap('<leader>gr', require('telescope.builtin').lsp_references )
    bufmap('<leader>s', require('telescope.builtin').lsp_document_symbols)
    bufmap('<leader>S', require('telescope.builtin').lsp_dynamic_workspace_symbols)

    bufmap('<leader>r', vim.lsp.buf.rename)
    bufmap('<leader>a', vim.lsp.buf.code_action)

    bufmap('<leader>gd', vim.lsp.buf.definition)
    bufmap('<leader>gD', vim.lsp.buf.declaration)
    bufmap('<leader>gi', vim.lsp.buf.implementation)
    bufmap('<leader>D', vim.lsp.buf.type_definition)

    bufmap('K', vim.lsp.buf.hover)


    vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
        vim.lsp.buf.format()
    end, {})
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)


-- Mason
require("mason").setup()
require("mason-lspconfig").setup_handlers({

    function(server_name)
        require("lspconfig")[server_name].setup {
            on_attach = on_attach,
            capabilities = capabilities
        }
    end,

    ["lua_ls"] = function()
        require('neodev').setup()
        require("lspconfig").lua_ls.setup {
            on_attach = on_attach,
            capabilities = capabilities,
            lua = {
                workspace = { checkThirdParty = false },
                telemetry = { enable = false },
            },
        }
    end,

    ['pyright'] = function()
        require("lspconfig").pyright.setup {
            on_attach = on_attach,
            capabilities = capabilities,
            filetypes = {'python'},
        }
    end,

    ['tsserver'] = function ()
        require('lspconfig').tsserver.setup {
            on_attach = on_attach,
            capabilities = capabilities,
            cmd = {'typescript-language-server', "--stdio"},
            filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
            init_options = { hostInfo = "neovim" },
            single_file_support = true,
        }
    end,

    ['clangd'] = function ()
        require('lspconfig').clangd.setup {
            on_attach = on_attach,
            capabilities = capabilities,
            cmd = { 'clangd' },
            filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
            single_file_support = true,
        }
    end,

})



