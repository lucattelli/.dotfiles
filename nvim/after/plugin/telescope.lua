local telescope = require('telescope')

telescope.setup({
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key",
        ["<C-q>"] = function(prompt_bufnr)
          require('telescope.actions').send_selected_to_qflist(prompt_bufnr)
          require('telescope.actions').open_qflist(prompt_bufnr)
        end,
      }
    }
  },
})

telescope.load_extension('fzf')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gst', builtin.git_status, {})
