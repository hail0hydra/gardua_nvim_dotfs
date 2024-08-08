require('telescope').setup({

    defaults = {
        prompt_prefix = ">_ ",
        winblend = 20,
    },

    extensions = {
        fzf ={
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",

        },
        emoji = {
            action = function(emoji)
                -- argument emoji is a table.
                -- {name="", value="", cagegory="", description=""}

                vim.fn.setreg("*", emoji.value)
                -- vim.fn.setreg('"', emoji.value)    for copying into P buffer
                print([[Press p or "*p to paste this emoji]] .. emoji.value)

                -- insert emoji when picked
                vim.api.nvim_put({ emoji.value }, 'c', false, true)
            end,
        },
    },
})

require("telescope").load_extension('fzf')
require("telescope").load_extension("emoji")

