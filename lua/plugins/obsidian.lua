return {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --   -- refer to `:h file-pattern` for more examples
    --   "BufReadPre path/to/my-vault/*.md",
    --   "BufNewFile path/to/my-vault/*.md",
    -- },
    dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim",

        -- see below for full list of optional dependencies 👇
    },
    opts = {
    },

    config = function ()
        require("obsidian").setup({
            workspaces = {
                {
                    name = "personal",
                    path = "~/Vaults/Notizen",
                },
            },

            completion = {
                -- Set to false to disable completion.
                nvim_cmp = true,
                -- Trigger completion at 2 chars.
                min_chars = 2,
            },

            templates = {
                folder = "99 - Meta/Templates",
                date_format = "%YYYY-%MM-%DD-%dddd",
                time_format = "%HH:%mm",
                -- A map for custom variables, the key should be the variable and the value a function
                substitutions = {},
            },
        })
    end,

}