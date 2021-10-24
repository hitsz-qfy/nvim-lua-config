local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

-- don't use arrow keys
map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})

-- for telescope
map('n', '<leader>ff', ':Telescope find_files<cr>', default_opts)
map('n', '<Leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], default_opts)
map('n', '<Leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<cr>]], default_opts)
map('n', '<Leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<cr>]], default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- open terminal
map('n', '<C-t>', ':Term<CR>', {noremap = true})

-- nvim-tree
map('n', '<C-n>', ':NvimTreeToggle<CR>', default_opts)       -- open/close
map('n', '<leader>r', ':NvimTreeRefresh<CR>', default_opts)  -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>', default_opts) -- search file
