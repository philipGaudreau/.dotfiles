vim.cmd("set background=light")    -- Setting dark mode
require("github-theme").setup({
  theme_style = "light",
  transparent = true,
  hide_end_of_buffer = false,

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {hint = "orange", error = "#ff0000"},

  -- Overwrite the highlight groups
  -- overrides = function(c)
  --   return {
  --     htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
  --     DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
  --     -- this will remove the highlight groups
  --     TSField = {},
  --   }
  -- end
})

