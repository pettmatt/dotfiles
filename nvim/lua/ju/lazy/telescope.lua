return {
	"nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
	config = function()
		require("telescope").setup({})
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>pp", builtin.git_files, { desc = "Git fuzzy finding" })
		vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

		-- Grep search (search instances of the search term)
		vim.keymap.set("n", "<leader>ps", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
	end
}