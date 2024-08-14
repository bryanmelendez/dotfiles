vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>t", vim.cmd.tabnew)

-- vim pane movement
vim.keymap.set('n', '<M-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<M-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<M-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<M-l>', ':wincmd l<CR>')
