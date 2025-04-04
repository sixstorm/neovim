return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "markdown", "markdown_inline" },
            highlight = {
                enable = true,
                custom_captures = {
                    ["h1"] = "h1",
                    ["_h1"] = "_h1",
                    ["h2"] = "h2",
                    ["_h2"] = "_h2",
                    ["h3"] = "h3",
                    ["_h3"] = "_h3",
                    ["h4"] = "h4",
                    ["_h4"] = "_h4",
                    ["h5"] = "h5",
                    ["_h5"] = "_h5",
                },
                disable = {},
            },
        })
    end
}
