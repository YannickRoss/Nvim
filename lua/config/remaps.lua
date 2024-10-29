vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "override, delete to void" })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "yank to system" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "yank line to system" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "delte to void" })

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "replace word" })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "make executable" })


vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)


local msg = [[<cmd>echohl Error | echo "KEY DISABLED" | echohl None<CR>]]

vim.api.nvim_set_keymap('n', '<Up>', msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<Down>', msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<Left>', msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<Right>', msg, { noremap = true, silent = false })


vim.api.nvim_set_keymap('i', '<Up>', msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('i', '<Down>', msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('i', '<Left>', msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('i', '<Right>', msg, { noremap = true, silent = false })

vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>tt', function ()
    require("neotest").run.run()
end)
vim.keymap.set('n', '<leader>tf', function ()
    require("neotest").run.run(vim.fn.expand("%"))
end)
vim.keymap.set('n', '<leader>ta', function ()
    require("neotest").run.attach()
end)
vim.keymap.set('n', '<leader>tw', function ()
    require("neotest").summary()
end)


