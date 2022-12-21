--
-- GENERAL SETTINGS
--
vim.o.errorbells = true               -- never play error bells in the terminal
vim.o.wildmenu = true                 -- enables "enhanced mode" of command-line completion
vim.o.laststatus = 2                  -- always show the status line
-- vim.o.showtabline = 2                 -- always show the tabline
vim.o.colorcolumn = '80'              -- show a column at column 80
vim.cmd("syntax on")                  -- enables syntax highlighting
vim.cmd("filetype plugin indent on")  -- enable auto filetype detection, automatic loading plugins and ident mode
vim.o.nu = true                       -- always show line numbers
vim.o.rnu = true                      -- use relative lines
vim.o.updatetime = 250                -- decrease update time
vim.o.signcolumn = 'yes'              -- show signcolumn before the line number column
vim.o.termguicolors = true            -- set terminal colors
vim.o.scrolloff = 10                  -- number of lines to keep between cursor and corner when scrolling
vim.o.sidescrolloff = 10              -- number of columns to keep between cursor and corner when scrolling
vim.o.mouse = "a"                     -- enable mouse
vim.o.hidden = true -- stop complaining when you switch between unsafed buffers
vim.o.list = true -- show all whitespaces as visible characters
vim.o.swapfile = false -- disables swap files
vim.o.backup = false -- disables backup files
vim.o.undodir = "~/.local/share/nvim/undodir" -- defines an undodir
vim.o.undofile = false -- disable individual undofiles
vim.o.encoding = "utf-8" -- default file encoding
vim.o.fileformat = "unix" -- default file format (line endings)
vim.o.autoread = true -- reads the file in the buffer when modified outside vim

-- auto-resize splits when terminal is resized
vim.api.nvim_create_autocmd("VimResized", {
  pattern = "*",
  command = "wincmd =",
})

--
-- YANK
--
-- vim.o.clipboard = "unnamedplus" -- uses the system clipboard when yanking

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


--
-- SEARCH SETTINGS
--
vim.o.hlsearch = false  -- set highlight on search (when you select a word with *)
vim.o.incsearch = true  -- show partial results while typing during search
vim.o.ignorecase = true -- case insensitive searching UNLESS /C or capital in search
vim.o.smartcase = true  -- case insensitive searching UNLESS /C or capital in search


--
-- COMPLETION OPTIONS
--
vim.o.complete = "i" -- scan current and included files
vim.o.completeopt = "menu,menuone,noselect" -- add code completion options
vim.o.shortmess = "c" -- don't give ins-completion-menu messages


--
-- INDENTATION
--
vim.o.autoindent = true -- copy indent from current line when starting a new line
vim.o.wrap = false -- turn off line wrap
vim.o.backspace = "indent,eol,start" -- backspace through all
-- vim.o.smartindent = true -- ?
-- vim.o.breakindent = true -- ?
vim.o.tabstop = 4 -- set tab to 4 columns as default for all files
vim.o.softtabstop = 0 -- ? setting them to 0 makes tabstop be used
vim.o.shiftwidth = 0 -- ? setting them to 0 makes tabstop be used
vim.o.expandtab = true -- replace tab with spaces
vim.o.smarttab = true -- delete a tab-worth spaces at the beginning of a line

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

-- auto-remove trailing white spaces
-- vim.api.nvim_create_autocmd("BufWritePre", {
--  pattern = "*",
--  command = ":%s/\\s\\+$//e",
--})

