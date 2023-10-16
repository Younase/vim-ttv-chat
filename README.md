# vim-ttv-chat

## Introduction

vim-ttv-chat is a twitch chat plugin for vim. based on [twitch-chat-cli](https://github.com/martinbjeldbak/twitch-chat-cli).
twitch-chat-cli is required for this plugin to work, make sure to add it to your path variable in your bashrc:
```
export PATH=/path/to/twitch-chat-cli:$PATH
```

## Installation

Use your favorite plugin manager to install this plugin.

### [Vim-Plug](https://github.com/junegunn/vim-plug)

1. Make sure Vim-Plus is properly installed.
1. Add the following text to your vimrc.
```vim
call plug#begin()
  Plug 'preservim/nerdtree'
call plug#end()
```
1. restart vim and run the PlugInstall command to install your plugins.

## Usage

### Commands

`TtvchatToggle` : Toggle twitch chat window

### Variables

`g:ttvchat_channel` : choose which chat to open

### Example Configuration

```vim
let g:ttvchat_channel="stormix_co"
nnoremap <C-t> :TtvchatToggle<CR>
```
