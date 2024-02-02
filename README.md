# Neovim Dot-files

<br>
<br>

- This repo has my neovim dotfiles for `linux` based environments :smile:

<br>
<br>

### Features

<br>
<br>

__1. Basic Options__

<br>
  - I have set basic options like `tabstop`, `relative number`, etc that you can find [here](lua/options.lua)

  - this also fetches two colorschemes: [catppuccin](https://github.com/catppuccin/nvim) and [material](https://github.com/kaicataldo/material.vim/)


<br>
<br>
<br>
<br>

__2. Lazy.nvim__

<br>

  - [`Lazy.nvim`](https://github.com/folke/lazy.nvim) is a new `plugin manager` for neovim although [`packer`](https://github.com/wbthomason/packer.nvim) was cool, it is depreciated now :smiling_face_with_tear:

  - The setup file for this plugin is [here](lua/plugin.lua) and the plugins to be installed is mentioned [here](lua/pluginlist.lua).

<br>
<br>
<br>
<br>

__3. LSP__

<br>

  - As we all know, neovim comes with built-in lsp support, we can pretty much fo everything vscode did... like code suggestions, autocompletions, etc. The setup for this is [here](after/plugin/lsp.lua).

  __3.1 Snippets__
  
   - With LSP, and language servers intalled with [mason](https://github.com/williamboman/mason.nvim), which helps to install language servers, I also used [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) whose setup is [here](after/plugin/cmp.lua).

<br>
<br>
<br>
<br>

__4. Telescope__

<br>
  - this helps to make navigation, file finding, searching for keywords in entire projects, very easy. [here's](after/plugin/telescope.lua) the setup.
 
  - also used [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) plugin for syntax highlighting and stuffz.

<br>
<br>
<br>
<br>

## Background

<br>
<br>

- The background is removed by default. If you want to enjoy your nvim with background, just comment the line 29 [here](lua/options.lua).

<br>
<br>

---

<br>
<br>
<br>
<br>

## Installation

<br>
<br>


- Ensure you have `NVIM  > v0.8.0`

<br>

```bash
nvim --version
```

<br>

- Install `ripgrep`

<br>

  1. Linux

     ```bash
     apt install ripgrep # debian based
     pacman -S ripgrep # Arch
     # Baki dekhlo apna apna
     ```
<br>

  2. Windows

     ```cmd
     scoop install ripgrep
     ```

     or

     [ripgrep](https://stackoverflow.com/questions/76666894/how-to-install-ripgrep-on-windows)

<br>
<br>

### Linux


<br>
<br>

1. Clone this repo in `.config/nvim`. Create it if not already there with `mkdir .config/nvim`.

<br>

```bash
cd .config/nvim
git clone  "https://github.com/hail0hydra/gardua_nvim_dotfs" .
```

<br>
<br>

 2. Run nvim

<br>
<br>

```bash
nvim
```

<br>
<br>
<br>
<br>


### Windows

<br>
<br>

1. Navigate to `%USERPROFILE%\AppData\Local\` and ensure the presence of `nvim` directory (not to be confused with `nvim-data` directory).

<br>
<br>

 ```cmd
cd "%USERPROFILE%\AppData\Local\"
```

<br>
<br>

2. If `nvim` directory isn't there make it and navigate into it

<br>

```cmd
mkdir nvim
cd nvim
```

<br>
<br>

3. ensure presence of [`git`](https://github.com/git-guides/install-git) in the cmd.

<br>
<br>

4. Clone the github repo.

<br>

```cmd
git clone "https://github.com/hail0hydra/gardua_nvim_dotfs" .
```
<br>
<br>

5. Run nvim

<br>

```cmd
nvim
```
