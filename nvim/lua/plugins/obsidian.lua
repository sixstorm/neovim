return {
    "obsidian-nvim/obsidian.nvim",
    version = "*",
    lazy = false,
    ft = "markdown",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        workspaces = {
            {
                name = "Focus",
                path = "/Users/andrewscott/Library/Mobile Documents/iCloud~md~obsidian/Documents/Focus",
            },
        },
        notes_subdir = "CSpire/Unfiled",
        preferred_link_style = "markdown",
        completion = {
            blink = true,
            nvim_cmp = false,
            min_chars = 2,
        },
        picker = {
            name = "mini.pick",
            note_mappings = {
                insert_link = "<C-l>",
            },
        },

        ---@param title string|?
        ---@return string
        note_id_func = function(title)
            local suffix = ""
            if title ~= nil then
              suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
            else
                for _ = 1, 4 do
                    suffix = suffix .. string.char(math.random(65,90))
                end
            end
            --return tostring(os.time()) .."-" .. suffix
            return suffix
        end,

        ---@param spec { id: string, dir: obsidian.Path, title: string|? }
        ---@return string|obsidian.Path
        note_path_func = function(spec)
            local path = spec.dir / tostring(spec.id)
            return path:with_suffix(".md")
        end,
    },
}
