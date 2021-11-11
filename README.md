# Neovim configuration for C++ and Python development

## Requirements

- Neovim 0.5+
- lua-language-server
- ccls
- pyright
- cmake-language-server
<!-- - ranger -->
- minimap

## Usage

```bash
$ git clone https://github.com/hitsz-qfy/nvim-lua-config.git ~/.config/
$ cd ~/.config && mv nvim-lua-config nvim
$ nvim
(Nvim):PackerSync
(Reopen nvim and):TSInstall python c cpp lua cmake
```

## Key Plugins

- packers
- nvim-lspconfig
- nvim-cmp
- nvim-treesitter
- nvim-tree
- telescope
- gitsigns
- nvim-web-devicons
- nvim-tmux-navigation
- nvim-comment
- hop.nvim
- bfferline.nvim
- git-blame.nvim
- rnvimr
