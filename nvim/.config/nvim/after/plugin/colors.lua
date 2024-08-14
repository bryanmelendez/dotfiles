function ColorMyPencils(color)
	color = color or "gruvbox"
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    -- local mocha = require("catppuccin.palettes").get_palette "mocha"
	-- vim.cmd.colorscheme "catppuccin"
end

ColorMyPencils()
