return {
    'echasnovski/mini.nvim',
    branch = 'main',
    config = function()
        require("mini.surround").setup()
        require("mini.files").setup()
        require("mini.icons").setup()
        require("mini.pick").setup()
        require("mini.fuzzy").setup()

        local pick = require("mini.pick")

        -- Function to find files in ~/Documents and insert a wiki-style link
        local function pick_docs()
            pick.builtin.files({}, {
                source = {
                    cwd = "~/Documents",
                    choose = function(item)
                        pick.default_choose(item) -- Default: open file on <CR>
                    end,
                },
                mappings = {
                    insert_link = {
                        char = "<M-l>",
                        func = function()
                            local state = pick.get_picker_state()
                            local item = state.current_item
                            if item then
                                local filename = vim.fn.fnamemodify(item, ":t:r") -- :t:r removes path and extension
                                local link = "[[" .. filename .. "]]"
                                -- Switch back to the previous buffer and insert the link
                                vim.api.nvim_command("wincmd p") -- Go to previous window
                                vim.api.nvim_put({ link }, "c", true, true)
                                pick.stop()
                            end
                        end,
                    },
                },
            })
        end

        -- Function to live grep in ~/Documents (unchanged)
        local function pick_grep_docs()
            pick.builtin.grep_live({}, { source = { cwd = "~/Documents" } })
        end

        -- Function to find files in Obsidian vault and insert a wiki-style link
        local function pick_doc_obsidian()
            pick.builtin.files({}, {
                source = {
                    cwd = "/Users/andrewscott/Library/Mobile Documents/iCloud~md~obsidian/Documents/Focus",
                    choose = function(item)
                        pick.default_choose(item)
                    end,
                },
--                mappings = {
--                    insert_link = {
--                        char = "<C-l>",
--                        func = function()
--                            local state = pick.get_picker_state()
--                            local item = state.current_item
--                            if item then
--                                local filename = vim.fn.fnamemodify(item, ":t:r") -- :t:r removes path and extension
--                                local link = "[[" .. filename .. "]]"
--                                vim.api.nvim_command("wincmd p") -- Go to previous window
--                                vim.api.nvim_put({ link }, "c", true, true)
--                                pick.stop()
--                            end
--                        end,
--                    },
--                },
            })
        end

        -- Function to live grep in Obsidian vault (unchanged)
        local function pick_grep_obsidian()
            pick.builtin.grep_live({}, { source = { cwd = "/Users/andrewscott/Library/Mobile Documents/iCloud~md~obsidian/Documents/Focus" } })
        end

        -- Keymaps
        vim.keymap.set("n", "<leader>fd", pick_docs, { desc = "Find Files in Documents" })
        vim.keymap.set("n", "<leader>fgd", pick_grep_docs, { desc = "Grep in Documents" })
        vim.keymap.set("n", "<leader>fdo", pick_doc_obsidian, { desc = "Find Files in Obsidian" })
        vim.keymap.set("n", "<leader>fgo", pick_grep_obsidian, { desc = "Grep in Obsidian" })
    end,
}
