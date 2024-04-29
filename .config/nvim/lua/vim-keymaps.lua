vim.keymap.set('n', '<leader>w', '<cmd>write<CR>', { desc = '[W]rite File' })
vim.keymap.set('n', '<leader>q', ':bdelete<CR>', { desc = '[Q]uit File' })
vim.keymap.set('n', '<S-h>', ':bprev<CR>', { desc = 'Prev Buffer' })
vim.keymap.set('n', '<S-l>', ':bnext<CR>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<S-k>', ':m -2<CR>', { desc = 'Move current line down' })
vim.keymap.set('n', '<S-j>', ':m +1<CR>', { desc = 'Move current line up' })
vim.keymap.set('n', '<leader>h', '<C-w>h', { desc = 'Move focus to left window' })
vim.keymap.set('n', '<leader>k', '<C-w>k', { desc = 'Move focus to above window' })
vim.keymap.set('n', '<leader>j', '<C-w>j', { desc = 'Move focus to below window' })
vim.keymap.set('n', '<leader>l', '<C-w>l', { desc = 'Move focus to right window' })

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
