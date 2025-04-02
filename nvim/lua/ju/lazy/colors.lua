function MyColors(color)
	color = color or "miasma"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		"xero/miasma.nvim",
		lazy = false,
		priority = 1000,
		config = function()
		  vim.cmd("colorscheme miasma")
		end,
	},
	-- {
	-- 	"savq/melange-nvim",
	-- 	name = "melange",
	-- 	config = function()
	-- 		require("melange").setup({
	-- 			disable_background = true,
	-- 			styles = {
	-- 				italic = false
	-- 			}
	-- 		})


	-- 		MyColors()
	-- 	end
	-- }
}