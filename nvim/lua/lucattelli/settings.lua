-- never play error bells in the terminal
vim.o.errorbells = true

-- enables "enhanced mode" of command-line completion
vim.o.wildmenu = true

-- always show the status line
vim.o.laststatus = 2

-- always show the tabline
-- vim.o.showtabline = 2

-- show a column at column 80
vim.o.colorcolumn = '80'

-- enables syntax highlighting
vim.cmd("syntax on")

-- enable auto filetype detection, automatic loading plugins and ident mode
vim.cmd("filetype plugin indent on")

-- always show line numbers
vim.o.nu = true

-- use relative lines
vim.o.rnu = true

-- decrease update time
vim.o.updatetime = 250

-- show signcolumn before the line number column
vim.o.signcolumn = 'yes'

-- set terminal colors
vim.o.termguicolors = true

-- number of lines to keep between cursor and corner when scrolling
vim.o.scrolloff = 10

-- number of columns to keep between cursor and corner when scrolling
vim.o.sidescrolloff = 10

-- enable mouse
vim.o.mouse = "a"

-- stop complaining when you switch between unsafed buffers
vim.o.hidden = true

-- show all whitespaces as visible characters
vim.o.list = true

-- disables swap files
vim.o.swapfile = false

-- disables backup files
vim.o.backup = false

-- defines an undodir
vim.o.undodir = "~/.local/share/nvim/undodir"

-- disable individual undofiles
vim.o.undofile = false

-- default file encoding
vim.o.encoding = "utf-8"

-- default file format (line endings)
vim.o.fileformat = "unix"

-- reads the file in the buffer when modified outside vim
vim.o.autoread = true

-- auto-resize splits when terminal is resized
vim.api.nvim_create_autocmd("VimResized", {
  pattern = "*",
  command = "wincmd =",
})

-- auto-remove trailing white spaces
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = ":%s/\\s\\+$//e",
})

-- uses the system clipboard when yanking
-- vim.o.clipboard = "unnamedplus"

-- highlight yank selection
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({
        timeout = 40,
    })
  end,
  group = highlight_group,
  pattern = '*',
})

-- set highlight on search (when you select a word with *)
vim.o.hlsearch = false

-- show partial results while typing during search
vim.o.incsearch = true

-- case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true

-- case insensitive searching UNLESS /C or capital in search
vim.o.smartcase = true

-- scan current and included files
vim.o.complete = "i"

-- add code completion options
vim.o.completeopt = "menu,menuone,noselect"

-- don't give ins-completion-menu messages
vim.o.shortmess = "c"

-- copy indent from current line when starting a new line
vim.o.autoindent = true

-- turn off line wrap
vim.o.wrap = false

-- backspace through all
vim.o.backspace = "indent,eol,start"

-- ?
-- vim.o.smartindent = true

-- ?
-- vim.o.breakindent = true

-- set tab to 4 columns as default for all files
vim.o.tabstop = 2

-- ? setting them to 0 makes tabstop be used
vim.o.softtabstop = 0

-- ? setting them to 0 makes tabstop be used
vim.o.shiftwidth = 0

-- replace tab with spaces
vim.o.expandtab = true

-- delete a tab-worth spaces at the beginning of a line
vim.o.smarttab = true


-- set custom tab size for typescript
-- see ftplugin for better approach https://www.reddit.com/r/neovim/comments/if1usp/how_to_set_tabs_and_spaces_based_on_a_file_type/
-- vim.api.nvim_create_autocmd("FileType", {
--    pattern = "typescript",
--    command = "set tabstop=2",
--})
--vim.api.nvim_create_autocmd("FileType", {
--  pattern = "typescript",
--  command = "set softtabstop=2",
--})
--vim.api.nvim_create_autocmd("FileType", {
--  pattern = "typescript",
--  command = "set shiftwidth=2",
--})

---- set color column at 120 for typescript
--vim.api.nvim_create_autocmd("FileType", {
--  pattern = "typescript",
--  command = "set colorcolumn=120",
--})

--vim.api.nvim_create_autocmd("BufWritePre", {
--  pattern = "*.tsx,*.ts,*.jsx,*.js",
--  command = "EslintFixAll",
--})

-- quicker switch between windows
--vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
--vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
--vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
--vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })

vim.g.netrw_banner = 0
