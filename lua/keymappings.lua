local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- don't use arrow keys
map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})

-- for telescope
map('n', '<C-p>', ':Telescope find_files<cr>', default_opts)
map('n', '<C-b>', [[<cmd>lua require('telescope.builtin').buffers()<cr>]], default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- nvim-tree
map('n', '<C-n>', ':NvimTreeToggle<CR>', default_opts)       -- open/close

-- buffer
map('n', '<leader>n', ':bnext<CR>', default_opts)       -- open/close
map('n', '<leader>p', ':bprevious<CR>', default_opts)       -- open/close
map('n', '<leader>d', ':bd<CR>', default_opts)       -- open/close

-- comment
map('n', '//', ':CommentToggle<CR>', default_opts)       -- open/close
map('v', '//', ':CommentToggle<CR>', default_opts)       -- open/close

-- hop 1 char motion
map('n', '<leader><leader>', ':HopChar1<CR>', {})       -- open/close
