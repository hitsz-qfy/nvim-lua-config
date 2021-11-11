local g = vim.g

require("nvim_comment").setup({
  hook = function()
    if vim.api.nvim_buf_get_option(0, "filetype") == "cpp" then
      vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
    end
    if vim.api.nvim_buf_get_option(0, "filetype") == "c" then
      vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
    end
    if vim.api.nvim_buf_get_option(0, "filetype") == "h" then
      vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
    end
  end
})

require("nvim-treesitter.install").prefer_git = true
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = true
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}

require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  keymaps = {
    -- Default keymap options
    noremap = true,

    ['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'"},
    ['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'"},

    ['n <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
    ['v <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
    ['n <leader>hu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
    ['n <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
    ['v <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
    ['n <leader>hR'] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
    ['n <leader>hp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
    ['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line(true)<CR>',
    ['n <leader>hS'] = '<cmd>lua require"gitsigns".stage_buffer()<CR>',
    ['n <leader>hU'] = '<cmd>lua require"gitsigns".reset_buffer_index()<CR>',

    -- Text objects
    ['o ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
    ['x ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>'
  },
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  attach_to_untracked = true,
  current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
  },
  current_line_blame_formatter_opts = {
    relative_time = false
  },
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000,
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
}

require('nvim-autopairs').setup{}

require("bufferline").setup{}

require('lualine').setup {
  options = {
    -- ... your lualine config
    -- theme = 'vscode'
    -- ... your lualine config
  },
  sections = {
  lualine_x = {'filetype'},
}
}

-- ranger
g.loaded_python_provider=0
g.python3_host_prog='/usr/bin/python3'
g.loaded_netrw=1
g.loaded_netrwPlugin=1
g.rnvimr_enable_ex=1
g.rnvimr_enable_picker=1
-- set border for floating window
g.rnvimr_draw_border = 1
-- Hide the files included in gitignore
g.rnvimr_hide_gitignore = 0
-- Make Neovim wipe the buffers corresponding to the files deleted by Ranger
g.rnvimr_enable_bw = 1
-- Add a shadow window, value is equal to 100 will disable shadow
g.rnvimr_shadow_winblend = 70
-- Draw border with both
g.rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'

require('telescope').setup({
  defaults = {
    layout_config = {
      prompt_position = "top"
      -- other layout configuration here
    },
    sorting_strategy="ascending",
    -- other defaults configuration here
  },
  -- other configuration values here
})

-- this is lua code (in `init.lua`)
vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 1, -- or 0,
  files = 1, -- or 0,
  folder_arrows = 1, -- or 0
}
vim.g.nvim_tree_gitignore = 0
vim.g.nvim_tree_git_hl = 0

local neogit = require('neogit')
neogit.setup {}
