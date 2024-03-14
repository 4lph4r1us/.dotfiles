function Colors(color)
    color = color or 'duskfox'
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, 'Normal', {bg = 'none'})
    vim.api.nvim_set_hl(0, 'NormalFloat', {bg = 'none' })

end

return {
    {
	'EdenEast/nightfox.nvim',
	lazy= false,
	priority = 999,
	config = function()
        require('nightfox').setup({
            disable_background = true
        })

		vim.cmd('colorscheme duskfox')

        Colors()
	end
},

    'folke/tokyonight.nvim',

}
