-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
-- vim.wo.colorcolumn = "89"
require("indent_blankline").setup {
  show_trailing_blankline_indent = false,
  show_first_indent_level = false,
--   context_highlight_list = {
--     "IndentBlanklineIndent1",
--     "IndentBlanklineIndent2",
--     "IndentBlanklineIndent3",
--     "IndentBlanklineIndent4",
--     "IndentBlanklineIndent5",
--     "IndentBlanklineIndent6",
--   },
--   context_patterns = {
--   'class',
--   'function',
--   'function_def',
--   '^def',
--   'method',
--   '^if',
--   '^while',
--   '^typedef',
--   '^for',
--   '^object',
--   '^table',
--   'block',
--   'arguments',
--   'typedef',
--   'while',
--   '^public',
--   'return',
--   'if_statement',
--   'else_clause',
--   'jsx_element',
--   'jsx_self_closing_element',
--   'try_statement',
--   'catch_clause',
--   'import_statement',
--   'labeled_statement'
-- },
  -- show_current_context = true,
  -- show_current_context_start = true,
  -- use_treesitter = true,
}
