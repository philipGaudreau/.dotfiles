require('dressing').setup({
  input = {
    -- Set to false to disable the vim.ui.input implementation
    enabled = true,

    -- Default prompt string
    default_prompt = "➤ ",

    -- When true, <Esc> will close the modal
    insert_only = true,

    -- These are passed to nvim_open_win
    anchor = "SW",
    relative = "cursor",
    border = "rounded",

    -- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
    prefer_width = 40,
    max_width = nil,
    min_width = 20,

    -- Window transparency (0-100)
    winblend = 0,
    -- Change default highlight groups (see :help winhl)
    winhighlight = "",

    -- see :help dressing_get_config
    get_config = nil,
  },
})
