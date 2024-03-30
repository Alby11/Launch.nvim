local M = {}

M.config = function()
  require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = {     -- :h background
      light = "latte",
      dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = true,     -- shows the '~' characters after the end of buffers
    term_colors = true,            -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
      enabled = true,              -- dims the background color of inactive window
      shade = "dark",
      percentage = 0.15,           -- percentage of the shade to apply to the inactive window
    },
    no_italic = false,             -- Force no italic
    no_bold = false,               -- Force no bold
    no_underline = false,          -- Force no underline
    styles = {                     -- Handles the styles of general hi groups (see `:h highlight-args`):
      comments = { "italic" },     -- Change the style of comments
      conditionals = { "italic" },
      loops = {},
      functions = {},
      keywords = {},
      strings = {},
      variables = {},
      numbers = {},
      booleans = {},
      properties = {},
      types = {},
      operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
      alpha = true,
      bufferline = true,
      cmp = true,
      dap = true,
      dap_ui = true,
      fidget = true,
      flash = true,
      gitsigns = true,
      hop = true,
      indent_blankline = {
        enabled = true,
        scope_color = "pink", -- catppuccin color (eg. `lavender`) Default: text
        colored_indent_levels = true,
      },
      leap = true,
      lsp_trouble = true,
      mason = true,
      mini = {
        enabled = true,
        indentscope_color = "pink",
      },
      native_lsp = {
        enabled = true,
        virtual_text = {
          errors = { "italic" },
          hints = { "italic" },
          warnings = { "italic" },
          information = { "italic" },
        },
        underlines = {
          errors = { "underline" },
          hints = { "underline" },
          warnings = { "underline" },
          information = { "underline" },
        },
        inlay_hints = {
          background = true,
        },
      },
      navic = {
        enabled = false,
        custom_bg = "NONE", -- "lualine" will set background to mantle
      },
      neogit = true,
      neotest = true,
      neotree = true,
      noice = true,
      notifier = true,
      notify = true,
      nvimtree = true,
      telescope = {
        enabled = true,
        -- style = "",
      },
      treesitter = true,
      treesitter_context = true,
      which_key = true,
    },
  })

  local _time = os.date "*t"

  if lvim.builtin.time_based_themes then
    if (_time.hour <= 17 and _time.hour >= 9) then
      lvim.colorscheme = "catppuccin-frappe"
      lvim.builtin.lualine.options.theme = "catppuccin-frappe"
    else
      lvim.colorscheme = "catppuccin-mocha"
      lvim.builtin.lualine.options.theme = "catppuccin-mocha"
    end
  end

  vim.cmd('source ~/.config/lvim/lua/user/lualine.lua')
  lvim.transparent_window = true
  set_custom_colors()
end

return M
