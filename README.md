# 💤 LazyVim + Dart/Flutter (In Progress)

This Config is Derived From my Laravel Config, it is better to keep separate configurations for separate tasks, it keeps neovim run fast, and about syncing your keymaps and settings, you can simply just create a repo and put all of your keybinds and settings there and add that repo as a plugin in this config,

## Laravel Native

This config is setup with the best available dev tooling for dart by utilizing lsp, linter and formatter provided officially by dart(there is no need for installation for anything besides the dart/flutter sdk ):

- Static Analysis
- Code Actions
- Format on Save
- Tailwind LS

## Additions

### Requirements

Install Dart/Flutter sdk before using opening a project or else neovim will throw errors.
To get proper syntax Highlighting, install the Treesitter parser for dart doing:

```
:TSInstall dart
```

Optional:

- lazydocker

(lazygit is optional by lazyvim too so there is no need to tell that here)

### Theme

- My Default Fav theme is Catppuccin, if you want some other theme, just edit lua/plugins/theme.lua for that.

### Plugins

- if you want to disable flutter plugin then follow the instructions on flutter.lua in plugins folder
