-- Night Owl Neovim Theme - Generated from centralized colors
return {
	{
		"LazyVim/LazyVim",
		opts = {
			-- Use a custom colorscheme function instead of plugin
			colorscheme = function()
				-- Define our centralized colors
				local colors = {
					-- Background colors
					bg = "#03192c",      -- Main background
					bg_dark = "#03192c", -- Darker background
					bg_light = "#e9e2d0", -- Light background
					
					-- Foreground colors  
					fg = "#7a8c91",      -- Main text
					fg_dark = "#5f6f74", -- Dark text/comments
					fg_light = "#7a8c91", -- Light text
					
					-- Accent colors
					red = "#d8322f",
					green = "#809900",
					yellow = "#b38800",
					blue = "#268bd2",
					magenta = "#d03682",
					cyan = "#2aa198",
					orange = "#c84b16",
					violet = "#6c71c4",
				}
				
				-- Clear existing highlights
				vim.cmd("highlight clear")
				if vim.fn.exists("syntax_on") then
					vim.cmd("syntax reset")
				end
				
				-- Set colorscheme name
				vim.g.colors_name = "night-owl"
				
				-- Define highlight groups
				local highlights = {
					-- Editor highlights
					Normal = { fg = colors.fg, bg = colors.bg },
					NormalFloat = { fg = colors.fg, bg = colors.bg_dark },
					Comment = { fg = colors.fg_dark, italic = true },
					Constant = { fg = colors.cyan },
					String = { fg = colors.cyan },
					Character = { fg = colors.cyan },
					Number = { fg = colors.cyan },
					Boolean = { fg = colors.cyan },
					Float = { fg = colors.cyan },
					Identifier = { fg = colors.blue },
					Function = { fg = colors.blue },
					Statement = { fg = colors.green },
					Conditional = { fg = colors.green },
					Repeat = { fg = colors.green },
					Label = { fg = colors.green },
					Operator = { fg = colors.green },
					Keyword = { fg = colors.green },
					Exception = { fg = colors.green },
					PreProc = { fg = colors.orange },
					Include = { fg = colors.orange },
					Define = { fg = colors.orange },
					Macro = { fg = colors.orange },
					PreCondit = { fg = colors.orange },
					Type = { fg = colors.yellow },
					StorageClass = { fg = colors.yellow },
					Structure = { fg = colors.yellow },
					Typedef = { fg = colors.yellow },
					Special = { fg = colors.red },
					SpecialChar = { fg = colors.red },
					Tag = { fg = colors.red },
					Delimiter = { fg = colors.red },
					SpecialComment = { fg = colors.red },
					Debug = { fg = colors.red },
					
					-- UI highlights
					LineNr = { fg = colors.fg_dark },
					CursorLineNr = { fg = colors.fg_light, bold = true },
					Visual = { bg = "#444444" },
					Search = { fg = colors.bg, bg = colors.yellow },
					IncSearch = { fg = colors.bg, bg = colors.orange },
					StatusLine = { fg = colors.fg_light, bg = colors.bg_dark },
					StatusLineNC = { fg = colors.fg_dark, bg = colors.bg_dark },
					VertSplit = { fg = colors.bg_dark },
					Pmenu = { fg = colors.fg, bg = colors.bg_dark },
					PmenuSel = { fg = colors.fg_light, bg = colors.bg_light },
					
					-- Diagnostic highlights
					DiagnosticError = { fg = colors.red },
					DiagnosticWarn = { fg = colors.yellow },
					DiagnosticInfo = { fg = colors.blue },
					DiagnosticHint = { fg = colors.cyan },
					
					-- Git highlights
					DiffAdd = { fg = colors.green },
					DiffChange = { fg = colors.yellow },
					DiffDelete = { fg = colors.red },
					DiffText = { fg = colors.blue },
				}
				
				-- Apply highlights
				for group, opts in pairs(highlights) do
					vim.api.nvim_set_hl(0, group, opts)
				end
			end,
		},
	},
}