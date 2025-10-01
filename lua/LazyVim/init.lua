local M = {}

M.opts = {}

function M.setup(opts)
	M.opts = vim.tbl_deep_extend("force", M.opts, opts or {})
	-- print("LazyVim setup called with opts:", vim.inspect(M.opts))

	-- Handle colorscheme setting only
	if M.opts.colorscheme then
		vim.schedule(function()
			local ok, err = pcall(vim.cmd.colorscheme, M.opts.colorscheme)
			if ok then
				-- print("Set colorscheme to:", M.opts.colorscheme)
			else
				print("Failed to set colorscheme:", M.opts.colorscheme, "Error:", err)
			end
		end)
	end
end

return M
