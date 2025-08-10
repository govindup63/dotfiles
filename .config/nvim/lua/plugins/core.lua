return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false, -- make sure it loads at startup
    priority = 1000, -- load before other plugins
    config = function()
      vim.cmd("colorscheme carbonfox")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "carbonfox", -- only the name, not the repo path
    },
  },
}
