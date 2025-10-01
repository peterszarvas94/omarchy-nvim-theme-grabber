# Omarchy nvim theme grabber

Omarchy uses LazyVim, which makes it difficult to use the theme switcher with other configurations without LazyVim.

This plugin integrates with your existing setup, and with the Omarchy theme switcher.

The only dependency is the lazy package manager, not LazyVim

## Installation

### 1. Clone this repo

```bash
git clone https://github.com/peterszarvas94/omarchy-nvim-theme-grabber.git ~/projects/LazyVim
```

You can install it in another destination not just `~/projects`, but the folder name should be called LazyVim.

### 2. Put this into your lazy config:

```lua
require('lazy').setup('plugins', { -- your plugins folder
  -- ...
  dev = {
    path = '~/projects', -- the folder where you have cloned it
    patterns = { 'LazyVim' },
  },
})
```

This makes lazy to use the local version of the LazyVim plugin instead of downloading the actual one from github.

### 3. Link the current theme file in your config

```bash
ln -nsf ~/.config/omarchy/current/theme/neovim.lua ~/.config/nvim/lua/plugins/theme.lua # link it to your lazy plugins folder
```

### 4. Theme switching should work now for neovim

Exit and restart neovim every time after theme switching.
