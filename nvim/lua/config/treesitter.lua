local utils = require('utils')

require('nvim-treesitter.configs').setup {
  ensure_installed = 'all',
  ignore_install = { "phpdoc" },
  highlight = {
    enable = true,
    disable = {"toml"},
    additional_vim_regex_highlighting = {'python'},
  },
  indent = {
    enable = false,
    disable = { "python" }
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      node_incremental = ";",
      node_decremental = ",",
    },
  },
  refactor = {
    highlight_definitions = {
      enable = true,
      -- Set to false if you have an `updatetime` of ~100.
      clear_on_cursor_move = true,
    },
    -- highlight_current_scope = { enable = true },
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = '<localleader>r',
      },
    },
    navigation = {
      enable = true,
      keymaps = {
        goto_definition = "gD",
        list_definitions = "`<nop>`",
        list_definitions_toc = "`<nop>`",
        goto_next_usage = "<a-*>",
        goto_previous_usage = "<a-#>",
      },
    },
  },
  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim 
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["aK"] = "@comment.outer",
        ["ib"] = "@block.inner",
        ["ab"] = "@block.outer",
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["aC"] = "@class.outer",
        ["iC"] = "@class.inner",
        ["ic"] = "@conditional.inner",
        ["ac"] = "@conditional.outer",
        ["il"] = "@loop.inner",
        ["al"] = "@loop.outer",
        ["ik"] = "@call.inner",
        ["ak"] = "@call.outer",
        ["ip"] = "@parameter.inner",
        ["ap"] = "@parameter.outer",
        ["as"] = "@statement.outer",
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ["sn"] = "@parameter.inner",
      },
      swap_previous = {
        ["sp"] = "@parameter.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        -- ["]f"] = "@function.outer",
        -- ["]]"] = "@class.outer",
      },
      goto_next_end = {
        -- ["]e"] = "@function.outer",
        -- ["]["] = "@class.outer",
      },
      goto_previous_start = {
        -- ["[f"] = "@function.outer",
        -- ["[["] = "@class.outer",
      },
      goto_previous_end = {
        -- ["[e"] = "@function.outer",
        -- ["[]"] = "@class.outer",
      },
    },
    lsp_interop = {
      enable = true,
      border = 'rounded',
      peek_definition_code = {
        ["<leader>f"] = "@function.outer",
        ["<leader>c"] = "@class.outer",
      },
    },
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  },
  query_linter = {
    enable = false,
    use_virtual_text = true,
    lint_events = {"BufWrite", "CursorHold"},
  },
  endwise = {
    enable = true,
  },
  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
    -- disable = { },  -- optional, list of language that will be disabled
    -- [options]
    -- do not use virtual text to highlight the virtual end of a block,
    -- for languages without explicit end markers
    disable_virtual_text = {'python'},
    -- include_match_words = {''},
  },
}

vim.api.nvim_exec([[
highlight! TSDefinition gui=underline
highlight! TSDefinitionUsage gui=bold

highlight! link TreesitterContext CursorLine
]], false)

utils.map('n', '<localleader>t', '<cmd>TSHighlightCapturesUnderCursor<cr>')
