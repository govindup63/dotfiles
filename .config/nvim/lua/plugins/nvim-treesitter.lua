return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "prisma",
      },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
}
