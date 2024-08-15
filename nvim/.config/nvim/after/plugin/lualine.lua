local lualine = require('lualine')

local config = {
    options = {
        -- Disable sections and component separators
        component_separators={left='|',right='|'},
        section_separators={left='',right=''}, 
    }
}

lualine.setup(config)
