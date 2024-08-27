function SetTheme(name, transarent)
	name = name or "tokyonight"
	vim.cmd.colorscheme(name)

	if transparent then
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end
end

-- Color Schemes
-- tokyonight
-- tokyonight-night
-- tokyonight-storm
-- tokyonight-day
-- tokyonight-moon
-- riderdark

SetTheme('tokyonight-storm', true)


--vim.cmd([[highlight IndentBlanklineIndent1 guifg=#FDC9C9 gui=nocombine]])
--vim.cmd([[highlight IndentBlanklineIndent2 guifg=#FFE7C9 gui=nocombine]])
--vim.cmd([[highlight IndentBlanklineIndent3 guifg=#FFFAC9 gui=nocombine]])
--vim.cmd([[highlight IndentBlanklineIndent4 guifg=#C9EFCB gui=nocombine]])
--vim.cmd([[highlight IndentBlanklineIndent5 guifg=#C9F4FB gui=nocombine]])
--vim.cmd([[highlight IndentBlanklineIndent6 guifg=#DBC9E9 gui=nocombine]])

vim.cmd([[highlight IndentContext1 guifg=#4C3C3C gui=nocombine]])
vim.cmd([[highlight IndentContext2 guifg=#4C443C gui=nocombine]])
vim.cmd([[highlight IndentContext3 guifg=#4C4B3C gui=nocombine]])
vim.cmd([[highlight IndentContext4 guifg=#3C473C gui=nocombine]])
vim.cmd([[highlight IndentContext5 guifg=#3C4A4B gui=nocombine]])
vim.cmd([[highlight IndentContext6 guifg=#423C46 gui=nocombine]])

local highlight = {
    "IndentContext1",
    "IndentContext2",
    "IndentContext3",
    "IndentContext4",
    "IndentContext5",
    "IndentContext6",
}
require("ibl").setup {
    indent = { char = "┊", highlight = highlight, smart_indent_cap = true },
    whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
    },
    scope = { enabled = false },
}

vim.api.nvim_exec(
[[
  hi GitSignsAdd guifg=#00cc44
  hi GitSignsChange guifg=#1e90ff
  hi GitSignsDelete guifg=red
  hi GitSignsUntracked guifg=#ffd700
]], false)


