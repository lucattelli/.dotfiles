-- sets the background to dark
vim.o.background = "dark"

-- Configure colorscheme
vim.cmd("colorscheme melange")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" });
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" });
