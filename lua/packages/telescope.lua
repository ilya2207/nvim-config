require('telescope').setup {
	defaults = {
		file_ignore_patterns = { ".pnpm-store", "build", "dist", "node_modules", ".git", "yarn.lock", "package-lock.json",
			"pnpm.lock", '.png', ".svg", ".jpg", ".jpeg", ".ttf", ".eoff" },
		path_display = { "truncate" }
	},
	pickers = {
		find_files = {
			hidden = true
		},
		live_grep = {
			additional_args = function()
				return { "--hidden" }
			end
		},
	},
	-- extensions = {
	--     fzf = {
	--       fuzzy = true,                    -- false will only do exact matching
	--       override_generic_sorter = true,  -- override the generic sorter
	--       override_file_sorter = true,     -- override the file sorter
	--       case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
	--                                        -- the default case_mode is "smart_case"
	--     }
	--   }
}
-- require('telescope').load_extension('fzf')
