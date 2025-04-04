return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup {
            pickers = {
                find_files = {
                    theme = 'ivy'
                }
            },
--            extensions = {
--                fzf = {}
--            }
        }

--        require('telescope').load_extension('fzf')

--        vim.keymap.set('n', '<leader>fd', function()
--            require('telescope.builtin').find_files({
--                cwd = 'Users/andrewscott/Documents'
--            })
--        end)
--        vim.keymap.set('n', '<leader>fd', ':Telescope find_files search_dirs={"/Users/andrewscott/Documents"}<CR>')
    end
}
