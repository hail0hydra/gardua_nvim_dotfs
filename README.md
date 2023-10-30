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


<br>
<br>

__2. Lazy.nvim__

<br>

  - [`Lazy.nvim`](https://github.com/folke/lazy.nvim) is a new `plugin manager` for neovim although [`packer`](https://github.com/wbthomason/packer.nvim) was cool, it is depreciated now :smiling_face_with_tear:

  - The setup file for this plugin is [here](lua/plugin.lua) and the plugins to be installed is mentioned [here](lua/pluginlist.lua).


<br>
<br>

__3. LSP__

<br>

  - As we all know, neovim comes with built-in lsp support, we can pretty much fo everything vscode did... like code suggestions, autocompletions, etc. The setup for this is [here](after/plugin/lsp.lua).

  __3.1 Snippets__
  
   - With LSP, and language servers intalled with [mason](https://github.com/williamboman/mason.nvim), which helps to install language servers, I also used [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) whose setup is [here](after/plugin/cmp.lua).


<br>
<br>

__4. Telescope__

<br>
  - this helps to make navigation, file finding, searching for keywords in entire projects, very easy. [here's](after/plugin/telescope.lua) the setup.
 
  - also used [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) plugin for syntax highlighting and stuffz.

<br>
<br>

