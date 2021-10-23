USER = vim.fn.expand('$USER')
local sumneko_root_path = ""
local sumneko_binary = ""
sumneko_root_path = "/home/" .. USER .. "/.config/nvim/lua/lsp/lua-language-server"
sumneko_binary = "/home/" .. USER .. "/.config/nvim/lua/lsp/lua-language-server/bin/Linux/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local luadev = require("lua-dev").setup({
  -- add any options here, or leave empty to use the default settings
  -- lspconfig = {
  --   cmd = {"lua-language-server"}
  -- },
})

require'lspconfig'.sumneko_lua.setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = runtime_path
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
		library = vim.api.nvim_get_runtime_file("", true),
		checkThirdParty = false,
		maxPreload = 2000,
		preloadFileSize = 2000,
            }
        }
    },
    luadev
}
