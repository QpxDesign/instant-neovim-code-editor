## Instant Neovim Code Editor

![example](https://github.com/qpxdesign/instant-neovim-code-editor/blob/main/images/demo.png?raw=true)

### One-Command Setup of Neovim Complete with VS Code Features & Support for Dozens of Langagues

#### What this is

This repository contains a bash script that will install a preconfigured and ready-to-go advanced setup of Alacritty and Neovim that will allow you to make the switch from VSCode to Neovim almost instantly. It uses several pre-configured plugins and modifications (see below for attributions). It works on most Linux distros as well as MacOS.

### Prerequisites

- Linux or MacOS (Currently Script Only Supports Latex Install on Mac)
- Updated Git client (2.42.0+)
- Alacritty (0.13.0+)
- Neovim
- Brew (only if using MacOS and want to install Latex Support)

### Usage

Clone the repo: `git clone https://github.com/qpxdesign/instant-neovim-code-editor` into your HOME Directory

To run the script, just type `sudo bash run.sh` in your terminal.

Once the script is done, you can use `newtex <folder_name>` to create new latex projects, then run the bash script inside the created folder to constantly recomplie your doc on save.

### Packages

- [Mason Packages] - Packages for Mason.nvim (langague servers, nice-to-haves, etc)
- Use `TSInstall <langague>` to install nvim-treesitter supoort for a new langague

### Attributions

- [NvChad](https://nvchad.com/)
- [Neovim](https://neovim.io/)
- [Nerd Fonts](https://www.nerdfonts.com/)
- [NvChad Configuration](https://github.com/dreamsofcode-io/neovim-nodejs)
- [fswatch](https://github.com/emcrisostomo/fswatch)
