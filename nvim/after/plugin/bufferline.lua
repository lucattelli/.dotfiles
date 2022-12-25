require("bufferline").setup({
  options = {
    mode = "buffers",
    numbers = "both",
    indicator = {
      style = 'none', -- | 'underline' | 'none',
    },
    -- buffer_close_icon = '',
    modified_icon = '●',
    -- close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',

    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    truncate_names = true, -- whether or not tab names should be truncated
    tab_size = 18,
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = true,
    -- The diagnostics indicator can be set to nil to keep the buffer name highlight but delete the highlighting
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "("..count..")"
    end,

    color_icons = true,
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_buffer_default_icon = true,
    show_close_icon = false,
    show_tab_indicators = false,
    show_duplicate_prefix = true,
    persist_buffer_sort = true,
    -- -- can also be a table containing 2 custom separators
    -- -- [focused and unfocused]. eg: { '|', '|' }
    separator_style = "none",
    always_show_bufferline = false,
    --
    --
    --
    -- separator_style = "thin",
  },
  -- highlights = ,
})


vim.keymap.set("n", "[b", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "]b", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })


