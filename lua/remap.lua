local wk = require('which-key')
local telescope_builtin = require('telescope.builtin')
local lsp = require('lsp-zero')


vim.g.mapleader = ' '

wk.add({
    { "<leader>f", group = "File" },
    { "<leader>fc", function() vim.fn.setreg('+', vim.fn.expand('%')) end, desc = "Copy File Path" },
    { "<leader>fe", function() vim.cmd.NvimTreeFindFile() end, desc = "NVim Tree" },
    { "<leader>ff", telescope_builtin.find_files, desc = "Find File" },
    { "<leader>fg", telescope_builtin.git_files, desc = "Find Git File" },
    { "<leader>ft", function() telescope_builtin.grep_string() end, desc = "Find Text" },

    { "<leader>g", vim.cmd.Git, group = "Git" },
    -- { "<leader>gg", <function 1>, desc = "Git" },

    { "<leader>u", vim.cmd.UndotreeToggle, desc = "Undo Tree" },

    { "<leader>vca", function() vim.lsp.buf.code_action() end, desc = "Code Action" },
    { "<leader>vd", function() vim.diagnostic.open_float() end, desc = "Open Float" },
    { "<leader>vrn", function() vim.lsp.buf.rename() end, desc = "Rename" },
    { "<leader>vrr", function() vim.lsp.buf.references() end, desc = "References" },
    { "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, desc = "Workspace Symbol" },

    { "<leader>d", '"_d', desc = "To Void", mode = "v" },

    { "<leader>y", '"+y', desc = "Yank to Clipboard", mode = "v" },

    -- { "K", function() vim.lsp.buf.hover() end, desc = "Hover" },
    { "gd", function() vim.lsp.buf.definition() end, desc = "Goto Definition" },
    { "J", ":m '>+1<CR>gv=gv", desc = "Move Selection Up", mode = "v" },
    { "K", ":m '<-2<CR>gv=gv", desc = "Move Selection Down", mode = "v" },
})

vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, { remap = false })

vim.keymap.set('n', 'n', 'nzzzv') -- Keep search occurance in the middle of the screen
vim.keymap.set('n', 'N', 'Nzzzv') -- Keep search occurance in the middle of the screen

vim.keymap.set('x', 'p', '"_dP') -- Keep current value in register when pasting over a selection


-- barbar keymaps
-- vim.keymap.set('n', 'gT', '<Cmd>BufferPrevious<CR>')
-- vim.keymap.set('n', 'gt', '<Cmd>BufferNext<CR>')
-- vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
-- vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
-- vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
-- vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
-- vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
-- vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
-- vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
-- vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
-- vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')


