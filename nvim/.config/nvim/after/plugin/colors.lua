function ColorMyPencils()
    -- Prevent Neovim from changing the terminal's background color
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })

    -- theme stuff

    -- color = color or "gruvbox"
    -- local mocha = require("catppuccin.palettes").get_palette "mocha"
	-- vim.cmd.colorscheme "catppuccin"
end

-- ColorMyPencils()
