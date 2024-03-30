local M = {
    "catppuccin/nvim",
    enabled = true,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("user.catppuccin").config()
    end,
}

function M.config()
  vim.cmd.colorscheme "catppuccin-mocha"
end

return M
