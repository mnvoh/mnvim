local wk = require('which-key')
local telescope_builtin = require('telescope.builtin')
local lsp = require('lsp-zero')


vim.g.mapleader = ' '

wk.register({
	g = {
		name = "Git",
		g = { vim.cmd.Git, "Git" },
	},

	f = {
		name = "File", -- optional group name
        e = { function() vim.cmd.NvimTreeFindFile() end, 'NVim Tree' },
		f = { telescope_builtin.find_files, "Find File" }, -- create a binding with label
		g = { telescope_builtin.git_files, "Find Git File" }, -- create a binding with label
        t = { function() telescope_builtin.grep_string() end, "Find Text"},
	},

	u = { vim.cmd.UndotreeToggle, "Undo Tree" },

    v = {
		ws = { function() vim.lsp.buf.workspace_symbol() end, "Workspace Symbol" },
		d = { function() vim.diagnostic.open_float() end, "Open Float" },
		ca = { function() vim.lsp.buf.code_action() end, "Code Action" },
		rr = { function() vim.lsp.buf.references() end, "References" },
		rn = { function() vim.lsp.buf.rename() end, "Rename" },
	},
}, { mode="n", prefix = "<leader>" })

wk.register({
    d = {'"_d', "To Void"},
    y = { '"+y', "Yank to Clipboard" },
}, { mode="v", prefix = "<leader>" })

wk.register({
	gd = { function() vim.lsp.buf.definition() end, "Goto Definition" },
	K = { function() vim.lsp.buf.hover() end, "Hover" },
}, { mode="n" })

wk.register({
    J = { ":m '>+1<CR>gv=gv", "Move Selection Up"},
    K = { ":m '<-2<CR>gv=gv", "Move Selection Down" },
}, { mode="v" })

vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, { remap = false })

vim.keymap.set('n', 'n', 'nzzzv') -- Keep search occurance in the middle of the screen
vim.keymap.set('n', 'N', 'Nzzzv') -- Keep search occurance in the middle of the screen

vim.keymap.set('x', 'p', '"_dP') -- Keep current value in register when pasting over a selection

vim.keymap.set('i', '<Tab>', 'copilot#Accept("<CR>")', { silent = true, expr = true })


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


