-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- :map <C-w>t to new tab
vim.keymap.set('n', '<C-w>t', ':tabnew<CR>', { noremap = true, silent = true })

-- :map <C-w> in terminal mode to switch to normal
vim.keymap.set('t', '<C-w>', '<C-\\><C-n>', { noremap = true})

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- set both shiftwidth and tabstop for a file
vim.api.nvim_create_user_command('Swts',
function(opts)
	vim.api.nvim_set_option('shiftwidth', tonumber(opts.args))
	vim.api.nvim_set_option('tabstop', tonumber(opts.args))
	vim.api.nvim_buf_set_option(0, 'shiftwidth', tonumber(opts.args))
	vim.api.nvim_buf_set_option(0, 'tabstop', tonumber(opts.args))
end,
{nargs=1})

-- vim: ts=2 sts=2 sw=2 et
--
