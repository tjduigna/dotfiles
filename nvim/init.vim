:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
:imap jk <Esc>
:nmap <F1> <nop>
:imap <F1> <nop>

call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'                                " fuzzy search project
Plug 'morhetz/gruvbox'                                 " the color scheme
Plug 'kyazdani42/nvim-web-devicons'                    " provides icon support for nvim-tree
Plug 'kyazdani42/nvim-tree.lua'                        " <leader>ve path/to/dir for file explorer
Plug 'wesQ3/vim-windowswap'                            " <leader>ww 'copy' -> <leader>ww 'paste'
Plug 'neovim/nvim-lspconfig'                           " language server pls
Plug 'charliermarsh/ruff-lsp'                          " flake8 on steroids
Plug 'ms-jpq/coq_nvim', { 'branch': 'coq' }            " faf completion
Plug 'ms-jpq/coq.artifacts', { 'branch': 'artifacts' } " snippets
Plug 'numToStr/Comment.nvim'                           " multi-line comments with gc
Plug 'tpope/vim-fugitive'                              " git commands directly in vim
Plug 'jpalardy/vim-slime', { 'for': 'python' }         " allow shipping commands
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }  " ship commands to ipython
Plug 'hashivim/vim-terraform'                          " terraform syntax highlighting
Plug 'ekalinin/Dockerfile.vim'                         " dockerfile syntax highlighting
Plug 'christoomey/vim-tmux-navigator'                  " unify vim + tmux navigation
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' } " brew install ripgrep
Plug 'nvim-treesitter/nvim-treesitter'
call plug#end()

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme gruvbox
filetype plugin indent on
syntax enable

lua require('Comment').setup()
lua require('nvimtree')
lua require("basic")
lua require("lsp")

let mapleader = " "
let g:slime_target = "tmux"
let g:slime_python_ipython = 1
let g:slime_default_config = {
            \ 'socket_name': get(split($TMUX, ','), 0),
            \ 'target_pane': '{top-right}' }
let g:slime_dont_ask_default = 1

nnoremap <leader>v :NvimTreeToggle 
nnoremap <leader>/ :Ag<cr>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>d <C-d>
nnoremap <leader>u <C-u>

autocmd BufRead,BufNewFile **/dockerfiles/** set ft=Dockerfile
set clipboard+=unnamedplus
