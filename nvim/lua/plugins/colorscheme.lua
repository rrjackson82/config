-- return {
--  {
--   "folke/tokyonight.nvim",
--    opts = {
--      transparent = true,
--       styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--       },
--     },
--
--  },
--  {
--    "LazyVim/LazyVim",
--    opts = {
--      colorscheme = "tokyonight",
--      colorscheme = "catppuccin",
--    },
--  },
--}

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "catppuccin/nvim",
    opts = {
      flavour = "mocha",
      transparent_background = true,
      float = {
        transparent = true,
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = opts.options or {}
      opts.options.theme = "catppuccin-mocha"
      opts.sections = opts.sections or {}

      vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
      vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
      vim.api.nvim_set_hl(0, "lualine_c_normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "lualine_c_inactive", { bg = "none" })

      return opts
    end,
  },
}
