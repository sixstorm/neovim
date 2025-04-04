return {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        priority = 1000,
        config = function()
                require("kanagawa").setup({ undercurl = true, })
                vim.cmd.colorscheme("kanagawa-dragon")
        end
}
