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

SetTheme('tokyonight-night', false)

vim.api.nvim_exec(
[[
  hi GitSignsAdd guifg=#00cc44
  hi GitSignsChange guifg=#1e90ff
  hi GitSignsDelete guifg=red
  hi GitSignsUntracked guifg=#ffd700
]], false)
