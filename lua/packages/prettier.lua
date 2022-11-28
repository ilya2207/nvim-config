local null_ls = require("null-ls")
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.prettier
	},
	on_attach = function(client, bufnr)
		if client.server_capabilities.documentFormattingProvider then
			vim.cmd("nnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.format({async = true})<CR>")

			-- format on save
			-- vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.format()")
		end

		if client.server_capabilities.documentRangeFormattingProvider then
			vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>")
		end
	end,
	default_timeout = 0,
})
local prettier = require("prettier")

prettier.setup({
	bin = 'prettierd', -- or `'prettierd'` (v0.22+)
	filetypes = {
		"css",
		"graphql",
		"html",
		"javascript",
		"javascriptreact",
		"json",
		"less",
		"markdown",
		"scss",
		"typescript",
		"typescriptreact",
		"yaml",
	},
})
