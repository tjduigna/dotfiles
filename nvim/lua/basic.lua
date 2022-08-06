-- command search menu and semantics
vim.opt.wildmenu = true
vim.opt.wildmode = 'longest:full,full' -- try longest:list,full
-- don't wrap line, use horizontal vim motions
vim.opt.wrap = false
-- keep n lines ahead of cursor when scrolling
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 12
-- current line number and relative to current
vim.opt.number = true
vim.opt.relativenumber = true
-- show current line and column in status line
vim.opt.ruler = true
-- turned off in the case of opening big files
vim.opt.swapfile = false
-- handle tabs and spaces and be pep8 friendly
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
-- no noises pls
vim.opt.errorbells = false
vim.opt.visualbell = true
-- infer EOL convention
vim.opt.fileformats = 'unix,dos,mac'
-- timeout for <leader>commands (key code sequences)
vim.opt.timeoutlen = 650
-- ignore these when expanding wildcards
vim.opt.wildignore = '*.o,*.obj,*~,*.pyc'
-- smart search options (mostly same as defaults)
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
-- autoindent and substitute repe
vim.opt.ai = true
vim.opt.si = true
-- hidden buffer
vim.opt.hidden = true
-- backspace convention
vim.opt.backspace = 'eol,start,indent'
-- which motions to set wrap
vim.opt.whichwrap = 'b,s,<,>,h,l'
-- hidden buffer TODO
vim.opt.hidden = true
-- for nvim-tree left anchor
vim.opt.splitright = true
