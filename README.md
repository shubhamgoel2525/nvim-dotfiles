# dotfiles for neovim

While these files are agnostic to any programming language, however, this setup is mainly geared towards web development and JS/TS dev. Feel free to extend it for your preferred programming language.

This setup builds on top of [this setup](https://dev.to/craftzdog/my-neovim-setup-for-react-typescript-tailwind-css-etc-58fb).

## Table of contents
1. [Prerequisites](#Prerequisites)
2. [Note on Theme](#note-on-theme)
3. [Note on nerd fonts](#note-on-nerd-fonts)
4. [Clipboard Support](#clipboard-support)

## Prerequisites
- Neovim
- A terminal that supports nerd fonts (e.g. Windows terminal with powershell and oh-my-posh)
- An installed Nerd font
- ripgrep is also required for fuzzy-finding through telescope

## Note on theme (catppuccin)<a name="note-on-theme" />
The colorscheme for the code will be applied automatically, however, the terminal has to be customised on your own.

- use `oh-my-posh` for windows terminal and use use the catppuccin theme for both the `omp` status line and windows terminal.
- use `iterm2` for MacOS for best support.

## Note on nerd fonts<a name="note-on-nerd-fonts" />
- You'll need to use patched nerd fonts for icons and other indicators, else they'll come up as empty boxes. These are non-standard unicode characters.
- use [Nerd Fonts](https://www.nerdfonts.com/) for finding your favourite font.

## Clipboard support<a name="clipboard-support" />
- Neovim does not support syncing with the yank register. Custom scripts have been added for MacOS and Windows and they are picked up at runtime. Ensure this works with your OS.
